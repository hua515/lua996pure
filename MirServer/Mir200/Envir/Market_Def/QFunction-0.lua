-- QF入口文件 当m2启动时候就会加载
math.randomseed(tostring(os.time()):reverse():sub(1, 7))

function require_ex(module)
    if package.loaded[module] then
        return package.loaded[module]
    end

    for pattern in string.gmatch(package.path, '[^;]+%?[^;]+') do
        local path = string.gsub(pattern, '%?', module)
        local fp = loadfile(path)
        if fp then
            local ret = fp()
            if ret ~= nil then
                package.loaded[module] = ret
            else
                package.loaded[module] = true
            end
            return package.loaded[module]
        end
    end
end

local _,errinfo = pcall(function ()
    require_ex("Envir/Extension/LuaLibrary/string")
    require_ex("Envir/Extension/LuaLibrary/table")
    require_ex("Envir/QuestDiary/config/ConstCfg")
    require_ex("Envir/QuestDiary/config/EventCfg")
    require_ex("Envir/QuestDiary/config/VarCfg")

    require_ex("Envir/QuestDiary/util/GameEvent")
    require_ex("Envir/QuestDiary/game/Global")
    require_ex("Envir/QuestDiary/game/GM")
    require_ex("Envir/QuestDiary/game/ItemUse")
    require_ex("Envir/QuestDiary/game/MathHurt")

    require_ex("Envir/Script/serialize")
    require_ex("Envir/Script/A/init")
    require_ex("Envir/Script/B/init")
    require_ex("Envir/Script/C/init")
    require_ex("Envir/Script/D/init")
    require_ex("Envir/Script/E/init")
    require_ex("Envir/Script/F/init")
end)
if errinfo then lib996:release_print("初始化QFunction-0.lua", errinfo) end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
---------------------------------QManage.lua------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--引擎启动
function startup()
    lib996:release_print("startup")
    GameEvent.push(EventCfg.goSystemStart, "")
end

--登录
function login(actor)
    local isnewhuman = lib996:getint(0,actor, "player_login")
    local level = lib996:getbaseinfo(actor, 6)
    lib996:setint(0,actor, VarCfg.N_cur_level, level)
    --第一次登录
    if isnewhuman ~= 1 then
        lib996:setint(0,actor, "player_login", 1)
        GameEvent.push(EventCfg.onNewHuman, actor)
    end
    --登录
    GameEvent.push(EventCfg.onLogin, actor)
    --登录附加属性
    local loginattrs = {}
    GameEvent.push(EventCfg.onLoginAttr, actor, loginattrs)
    QsQupdateAddr(actor, loginattrs)
    --登录完成
    GameEvent.push(EventCfg.onLoginEnd, actor)

    if lib996:getlevel(actor) < 100 then
        lib996:changeattackmode(actor, ConstCfg.amode.hp) --修改攻击模式为和平模式
    end
end

--角色离线触发
function playoffline(actor)
end

--行会初始化
function loadguild(actor)
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
---------------------------------QFunction.lua----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--跑步
function run(actor)
    GameEvent.push(EventCfg.onMove, actor, 0)
end

--走路
function walk(actor)
    GameEvent.push(EventCfg.onMove, actor, 1)
end

--NPC点击触发
function clicknpc(actor, npcid)
    GameEvent.push(EventCfg.onClicknpc, actor, npcid)
end

--聊天
--sMsg      聊天内容
--chat      聊天频道（1;系统 2;喊话 3;私聊 4;行会 5;组队 6;附近 7;世界）
--返回 true 发送聊天信息失败
function triggerchat(actor, sMsg, chat)
    GameEvent.push(EventCfg.onTriggerChat, actor, sMsg, chat)
end

--删除称号触发
function on_del_title(actor,id)
end

--升级
function playlevelup(actor)
    local before_level = lib996:getint(0,actor, VarCfg.N_cur_level)
    local cur_level = lib996:getbaseinfo(actor, ConstCfg.gbase.level)
    lib996:setint(0,actor, VarCfg.N_cur_level, cur_level)
    lib996:setint(0,actor, VarCfg.N_level_time, os.time())
    lib996:humanhp(actor, "=", lib996:getmaxhp(actor), 2)
    lib996:humanmp(actor, "=", lib996:getmaxmp(actor), 2)
    GameEvent.push(EventCfg.onPlayLevelUp, actor, cur_level, before_level)
end

--人物死亡之前
function nextdie(actor)
end

--人物死亡
--hiter     杀人者对象
function playdie(actor, hiter)
    GameEvent.push(EventCfg.onPostDie, actor, hiter)
end

--杀死人物时触发
--actor		触发对象
--play		被杀玩家
function killplay(actor, play)
    GameEvent.push(EventCfg.onkillplay, actor, play)
end

--人物复活
function revival(actor)
    GameEvent.push(EventCfg.onRevival, actor)
end

--人物小退触发
function playreconnection(actor)
    GameEvent.push(EventCfg.onExitGame, actor)
end

--人物大退与关闭客户端触发
function playoffline(actor)
    GameEvent.push(EventCfg.onExitGame, actor)
end

--物品进背包
function addbag(actor, itemobj)
    if not actor then return end
    GameEvent.push(EventCfg.onAddBag, actor, itemobj)
end

--充值
--gold  充值rmb金额
--productid  商品ID(前端调起充值时候传递的参数) --无用参数可忽略
--moneyid  充值获得货币ID
function recharge(actor, gold, productid, moneyid)
    --累计充值
    local bill_num = lib996:getint(0,actor, VarCfg.U_real_recharge)
    lib996:setint(0,actor, VarCfg.U_real_recharge, bill_num + gold)

    --今日充值
    local day_bill_num = lib996:getint(0,actor, VarCfg.U_today_real_recharge)
    lib996:setint(0,actor, VarCfg.U_today_real_recharge, day_bill_num + gold)
    lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#FFFF00\'>充值'..bill_num..'元,累计充值'..lib996:getint(0,actor, VarCfg.U_real_recharge)..'元</font>","Type":9}')

    GameEvent.push(EventCfg.onRecharge, actor, gold, productid, moneyid)
end

--人物脱装备
function takeoffex(actor, itemobj, where, itemname, makeid)
    GameEvent.push(EventCfg.onTakeOffEx, actor, itemobj, where, itemname, makeid)
end
--人物穿装备
function takeonex(actor, itemobj, where, itemname, makeid)
    GameEvent.push(EventCfg.onTakeOnEx, actor, itemobj, where, itemname, makeid)
end

--捡取任意物品后触发
function pickupitemex(actor, itemobj)
    GameEvent.push(EventCfg.goPickUpItemEx, actor, itemobj)
end

--任意地图杀死怪物
function killmon(actor, monobj)
    local monidx = lib996:getbaseinfo(monobj, ConstCfg.gbase.idx)
    GameEvent.push(EventCfg.onKillMon, actor, monobj, monidx)
end

--丢失镖车触发
function losercar(actor, monobj)
    local monidx = lib996:getbaseinfo(monobj, ConstCfg.gbase.idx)
    GameEvent.push(EventCfg.onLoserCar, actor, monobj, monidx)
end

--杀镖车触发
function cardie(actor, monobj)
    local monidx = lib996:getbaseinfo(monobj, ConstCfg.gbase.idx)
    GameEvent.push(EventCfg.onKillCar, actor, monobj, monidx)
end

--切换地图
function entermap(actor)
    local former_mapid = lib996:getstr(0,actor, VarCfg.S_cur_mapid)
    local cur_mapid = lib996:getbaseinfo(actor, ConstCfg.gbase.mapid)
    cur_mapid = tostring(cur_mapid)
    if cur_mapid ~= former_mapid then       --切换了地图
        lib996:setstr(0,actor, VarCfg.S_cur_mapid,cur_mapid)
        GameEvent.push(EventCfg.goSwitchMap, actor, cur_mapid, former_mapid)
    else
        GameEvent.push(EventCfg.goEnterMap, actor, cur_mapid)
    end
end

--摆摊售出物品时触发
function on_stall_item(actor, buyer, makeindex, itemid, moneyid, moneynum)
    local myname = lib996:getname(actor)
    local moneyname = lib996:getstditeminfo(moneyid,1)
    local itemname = lib996:getstditeminfo(itemid,1)
    _Fsendmail(myname, 3, nil, itemname, moneynum, moneyname)
end

--------------------------------------------------------------------------------
----------------------------------攻城战触发-------------------------------------
--------------------------------------------------------------------------------
--攻城开始触发
function castlewarstart()
    lib996:sendmsg(nil, 2, '{"Msg":"沙城争霸活动已开启！！！","FColor":249,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"30"}')
    lib996:sendmsg(nil, 2, '{"Msg":"沙城争霸活动已开启！！！","FColor":249,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"60"}')
    lib996:sendmsg(nil, 2, '{"Msg":"沙城争霸活动已开启！！！","FColor":249,"BColor":0,"Type":5,"Time":3,"SendName":"xxx","SendId":"123","Y":"90"}')
    GameEvent.push(EventCfg.goCastlewarStart)
end

--攻城结束触发
function castlewarend()
    GameEvent.push(EventCfg.goCastlewarEnd)
end

--占领沙巴克触发
function getcastle0()
end
--------------------------------------------------------------------------------
----------------------------------英雄相关触发-----------------------------------
--------------------------------------------------------------------------------
--英雄登陆触发
function herologin(actor)
    local hero = lib996:gethero(actor)
    -- local hero_name = lib996:getbaseinfo(hero,ConstCfg.gbase.name)
    local isnewhuman = lib996:getint(0,actor, "hero_login")
    if isnewhuman ~= 1 then
        if not lib996:isherorecall(actor) then return end
        local hero_ob = lib996:gethero(actor)
        lib996:humanhp(hero_ob, "=", lib996:getmaxhp(hero_ob))
        lib996:humanmp(hero_ob, "=", lib996:getmaxmp(hero_ob))
        lib996:setint(0,actor, "hero_login", 1)
    end

    --登录附加属性
    local loginattrs = {}
    GameEvent.push(EventCfg.onHeroLoginAttr, actor,hero,loginattrs)
    QsQupdateAddr(hero, loginattrs)

    --英雄登陆
    GameEvent.push(EventCfg.onHerologinEnd, actor,hero)
end

--英雄创建触发
function createherook(actor)
    lib996:recallhero(actor)
    GameEvent.push(EventCfg.onHeroCreateEnd, actor)
end

--英雄取名成功触发
function checkusernameok(actor)
    local sex = lib996:getint(0,actor,VarCfg.Hero_Sex)
    local job = lib996:getint(0,actor,VarCfg.Hero_Job)
    local role_name = lib996:getbaseinfo(actor,ConstCfg.gbase.name)
    local hero_name = role_name.."A英雄"
    lib996:createhero(actor, hero_name, job, sex)
end

--英雄取名失败触发
function checkusernameno(actor,param2)
    lib996:recallhero(actor)
    lib996:sendmsg(actor, ConstCfg.notice.own, '{"Msg":"<font color=\'#ff0000\'>英雄名字已经存在</font>","Type":9}')
end
--------------------------------------------------------------------------------
----------------------------------未用到的触发-----------------------------------
--------------------------------------------------------------------------------
--监听
function handlerequest(actor, msgid, arg1, arg2, arg3, sMsg)
end

--每天第一次登录
function setday(actor)
end

--玩家改名后
function changehumnameok(actor)
end

--刷怪通知
function makemonnotice(mon)
end

--离开地图
function leavemap(actor)
end

--获取经验时触发
function gainexp()
end

--新建任务时触发
function picktask()
end

--任务变化时
function changetask()
end

--任务删除时
function deletetask()
end

--任务被点击时
function clicknewtask(actor,id)
end

--货币改变触发
function moneychangeex(...)
end

--攻击时
function attack(attacks,roles,skillid)
    -- GameEvent.push(EventCfg.onAttack,attacks,roles,skillid)
end

--受击后
function struck()
end

--穿戴前触发
function on_take_on_pre(...)
    return true
end

--穿戴后触发
function on_take_on(...)
end

--添加buff触发
function addbuffafter(actor,buffid,time)
end

--删除buff触发
function delbuffafter(actor,buffid,time)
end

--穿装备前触发
function takeonbeforeex(actor,item)
end

--自动寻路停止时触发
function findpathstop(...)
end

--自动寻路开始时触发
function findpathbegin(...)
end

--自动寻路结束时
function findpathend()
end

--升级触发
function on_level_up()
end

--怪物掉落物品前触发
function mondropitemex(actor,DropItem,mon,x,y)
    GameEvent.push(EventCfg.OnMondropitemex,actor,DropItem,mon,x,y)
    return true
end

--宠物死亡触发
function selfkillslave(actor,mon)
    GameEvent.push(EventCfg.onKillPets,actor,mon)
end

function dropuseitemsbefore()
end
function dropbagitemsbefore()
end
function shenlong(...)
end
function scatterbagitems(...)
end
function onkillmob(...)
end
function herolevelup(...)
end
function pickupitemfrontex(...)
end
function takeoffbeforeex(...)
end
function stopautoplaygame(...)
end
function herodie(...)
end
function herotakeonbeforeex(...)
end
function addherobag(...)
end
function dropheroitemex(...)
end
function groupitemonex(...)
end
function slavebb()
end
function on_spell_pre()
end
function startautoplaygame(...)
end
--------------------------------------------------------------------------------
----------------------------------伤害计算---------------------------------------
--------------------------------------------------------------------------------

--属性变化
function sendability(actor)
    ----lua 属性表
    addatt(actor)
    ----end
end

----lua 属性表
local play_attr = {}
local attr_tab
function addatt(actor)
    attr_tab = nil
    if lib996:isplayer(actor) then
        attr_tab = lib996:attrtab(actor)
        play_attr[actor] = attr_tab or {}
    end
    return attr_tab
end

local function on_burst(attr_atab,ack)                      --暴击流程--attack是攻击者
    if isHasAttr(attr_atab,29) then return ack end
    if math.random(1,10000) <= attr_atab[29] then           --本次是否暴击
        ack = ack + (ack*(1+(attr_atab[30] *0.0001)))//1
    end
    return ack
end

local function on_burst_btab(attr_btab,role)    --韧性流程
    if isHasAttr(attr_btab,212) then return true end
    if math.random(1,10000) <= attr_btab[212] then
        return false
    else
        return true
    end
end

local function on_def_add(attr_btab,def)    --防御加成流程
    if isHasAttr(attr_btab,208) then return def end
    return def + def * attr_btab[208] * 0.0001
end

local function on_ignore_def(attr_atab,def)    -- 穿透 忽视目标防御流程--
    local penetrate = attr_atab[204]    --穿透
    local imm = attr_atab[220]
    local breakdef = attr_atab[210]  --破防抵抗

    if penetrate and penetrate > 0 then
        if math.random(1,10000) <= penetrate then
            return 0
        end
    end

    if not imm or imm == 0 then return def end

    if breakdef and breakdef > 0 then
        if math.random(1,10000) <= breakdef then
            return def
        end 
    end

    def = def - ((imm * 0.0001 * def) // 1)
    def = def < 0 and 0 or def

    return def
end

local function on_ign_att(attr_atab,def)    --物理穿透流程--
    if isHasAttr(attr_atab,43) then return def end
    if isHasAttr(attr_atab,44) then return def end
    if isHasAttr(attr_atab,210) then return def end

    local imm  = attr_atab[43]
    local bimm = attr_atab[44]
    local pimm = attr_atab[45]
    local breakdef = attr_atab[210]  --破防抵抗

    if breakdef and breakdef > 0 then
        if math.random(1,10000) <= breakdef then
            return def
        end
    end

    local cc = 0
    local bu = 0

    if pimm == 0 then
        bu = 1
    else
        if math.random(1,10000) <= pimm then
            bu = 1
        end
    end

    if bu == 1 then     --防御值最低为0 玩的花的随意
        if imm > 0 then
            cc = imm
        end
        if bimm > 0 then
            cc = cc + ((bimm*def*0.0001)//1)
        end
        def = def - cc
        if def < 0 then
            def = 0
        end
    end
    return def
end


local function on_ign_mag(attr_atab,def)    --魔法穿透流程--
    if isHasAttr(attr_atab,46) then return def end
    if isHasAttr(attr_atab,47) then return def end

    local imm  = attr_atab[46]
    local bimm = attr_atab[47]
    local pimm = attr_atab[48]
    local breakdef = attr_atab[210]  --破防抵抗

    if breakdef and breakdef > 0 then
        if math.random(1,10000) <= breakdef then
            return def
        end
    end

    local cc = 0
    local bu = 0

    if pimm == 0 then
        bu = 1
    else
        if math.random(1,10000) <= pimm then
            bu = 1
        end
    end

    if bu == 1 then     --防御值最低为0
        if imm > 0 then
            cc = imm
        end
        if bimm > 0 then
            cc = cc + ((bimm*def*0.0001)//1)
        end
        def = def - cc
        if def < 0 then
            def = 0
        end
    end
    return def
end

local info_cfg = {
    strAttacker_attr    =   "",             --攻击者属性表,nil为怪物
    strRole_attr        =   "",             --受击者属性表,nil为怪物
    skillid             =   0,              --技能id
    hurttype            =   0,              --伤害类型0：物理伤害，1：魔法伤害
    hp                  =   0,              --qf派发消息前已计算的hp值
}

--受伤前触发 虽然5.3支持双浮点 但是 不要玩的太变态了 数值会爆的 
--该触发在战斗中会很高频率的触发 代理自定义时 请注意效率问题 尽量避免重复调用接口
function on_hurt_pre(attack,role,ack,def,skillid,hurttype)
    -- print("role",type(role),role)
    -- print(attack,role,ack,def,skillid,hurttype)

    local attr_atab = play_attr[attack] or addatt(attack) --判断是否有属性缓存
    local attr_btab = play_attr[role] or addatt(role)

    local hp = 0                                -- 负数为扣血 正数为加血

    if attr_btab then
        def = on_def_add(attr_btab,def)         --防御加成
    end

    if attr_atab then                           --人物攻击
        if hurttype == 0 then                   --根据伤害类型 计算穿透
            def = on_ign_att(attr_atab,def)
        else
            def = on_ign_mag(attr_atab,def)
        end

        def = on_ignore_def(attr_atab,def)      --穿透 忽视目标防御

        local is_burst = true
        if attr_btab then
            is_burst = on_burst_btab(attr_btab,role)    --韧性 降低被暴击概率 
        end
        if is_burst then
            ack = on_burst(attr_atab,ack)               --攻击力暴击  
        end
    end

    hp = def - ack                          --根据攻防计算初步伤害

    info_cfg.strAttacker_attr    =   attr_atab              --攻击者属性表,nil为怪物
    info_cfg.strRole_attr        =   attr_btab              --受击者属性表,nil为怪物
    info_cfg.skillid             =   skillid                --技能id
    info_cfg.hurttype            =   hurttype               --伤害类型0：物理伤害，1：魔法伤害
    info_cfg.hp                  =   hp                     --qf内已计算的hp值

    --{修改伤害值,计算符(+-*/=),优先级,说明}
    local hurtPredatas = {}
    GameEvent.push(EventCfg.onHurtPre, attack,role,info_cfg,hurtPredatas)

    -- lib996:scriptlog("onHurtPre派发结束,返回所有伤害计算"..serialize(hurtPredatas),0)
    if #hurtPredatas > 1 then
        table.sort(hurtPredatas,function (a, b)
            return a[3] < b[3]
        end)
    end
    for _, data in ipairs(hurtPredatas) do
        if data[2] == "+" then
            hp = hp + data[1]
        elseif data[2] == "-" then
            hp = hp - data[1]
        elseif data[2] == "*" then
            hp = hp * data[1]
        elseif data[2] == "/" then
            hp = hp / data[1]
        elseif data[2] == "=" then
            hp = data[1]
        end
    end
    return hp
end

--------------------------------------------------------------------------------
----------------------------------个人定时器-------------------------------------
--------------------------------------------------------------------------------
--个人定时器演示
-- function ontimer100(actor)
--     callfileex("Envir/Script/A/测试表单:role_ontimer",actor)
-- end
--------------------------------------------------------------------------------
----------------------------------系统定时器-------------------------------------
--------------------------------------------------------------------------------
--系统定时器演示
-- function ontimerex100()
--     callfileex("Envir/Script/A/测试表单:system_ontimer")
-- end