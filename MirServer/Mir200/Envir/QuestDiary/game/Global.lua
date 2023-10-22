Global = {}

function beforedawn()
    local t = lib996:getplayerlst()
    for _,actor in ipairs(t) do
        Global.dailyupdate(actor)
    end
    local openday = lib996:grobalinfo(1)
    GameEvent.push(EventCfg.RoBeforedawn, openday)
end

-------------------------------逻辑处理---------------------------------------
--每日更新
function Global.dailyupdate(actor, islogin)
    local before_date = lib996:getstr(0,actor, VarCfg.T_daily_date)
    local cur_date = os.date("%Y%m%d") --当前年月日
    if cur_date ~= before_date then
        lib996:setint(0,actor, VarCfg.U_today_real_recharge, 0)
        lib996:setstr(0,actor, VarCfg.T_daily_date, cur_date)  --过了一天更新当前年月日
        GameEvent.push(EventCfg.goDailyUpdate, actor, islogin)
    end
end
-------------------------------事件---------------------------------------
--登录完成触发
function Global.LoginEnd(actor)
    Global.dailyupdate(actor, true)
end

--每日凌晨触发
function Global.Beforedawn(actor)
    Global.dailyupdate(actor, false)
end

--引擎启动触发
function Global.goSystemStart()
    lib996:addscheduled(600, "凌晨触发", 1, "00:00:00", "beforedawn", "")
end

--角色首次登陆
function Global.onNewHuman(actor)
    --开启首饰盒
    lib996:setsndaitembox(actor,1)
    --设置背包格
    lib996:setbagcount(actor, ConstCfg.bagcellnum)

    --仓库格子
    lib996:changestorage(actor, ConstCfg.warehousecellnum)

    --初次登陆添加技能
    for _, skill in ipairs(ConstCfg.first_login_addskill) do
        lib996:addskill(actor, skill[1], skill[2])
    end

    --初次登陆添加装备
    local sex = lib996:getbaseinfo(actor, ConstCfg.gbase.sex) + 1
    for pos, var in pairs(ConstCfg.first_login_giveonequip) do
        lib996:giveonitem(actor, pos, var[sex], 1, 63)
    end

    --设置光头
    lib996:setbaseinfo(actor,ConstCfg.gbase.hair,0)

    --满血满蓝
    lib996:humanhp(actor,"=",lib996:getmaxhp(actor),2)
    lib996:humanmp(actor,"=",lib996:getmaxmp(actor),2)

    --初次登陆跳转地图
    -- lib996:mapmove(actor, "3",333,333,5)
end

-------------------------------监听事件---------------------------------------
GameEvent.add(EventCfg.onLoginEnd, Global.LoginEnd, Global, 1)
GameEvent.add(EventCfg.onNewHuman, Global.onNewHuman, Global, 1)
GameEvent.add(EventCfg.goBeforedawn, Global.Beforedawn, Global, 1)
GameEvent.add(EventCfg.goSystemStart, Global.goSystemStart, Global, 1)

return Global