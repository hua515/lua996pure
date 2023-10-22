function require_ex(module)
    if package.loaded[module] then
        return package.loaded[module]
    end

    for pattern in string.gmatch(package.path, '[^;]+%?[^;]+') do
        local path = string.gsub(pattern, '%?', module)
        -- lib996:release_print("path",type(path),path)
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

require_ex("Envir/Extension/LuaLibrary/string")
require_ex("Envir/Extension/LuaLibrary/table")
require_ex("Envir/QuestDiary/config/EventCfg")
require_ex("Envir/QuestDiary/config/VarCfg")
require_ex("Envir/QuestDiary/util/GameEvent")

local ConstCfg = require_ex("Envir/QuestDiary/config/ConstCfg")
local Bag = require_ex("Envir/Extension/UtilServer/Bag")
local Item = require_ex("Envir/Extension/UtilServer/Item")
local Player = require_ex("Envir/Extension/UtilServer/Player")


function serialize(obj)  --序列化

    local zlua = nil
    local lua = lib996:tbl2json(obj)
    lua = tostring(lua)
    if lua == "nil" or lua == "" then
        return zlua
    end

    zlua = "'"..lua.."'"

    return zlua
end

function unserialize(lua)  --反序列化
    lua = tostring(lua)
    local obj = nil
    if lua == "nil" or lua == "" then
        return obj
    end

    lua = string.gsub(lua, "'","")
    obj = lib996:json2tbl(lua)

    return obj
end

function print(...)
    lib996:release_print(...)
end

function sprint(...)
    lib996:scriptlog(...,0)
end

--------------------仅用于dump打印-------------------
function dumptab(obj)
    local lua = ""
    local t = type(obj)
    if t == "number" then
        lua = lua .. obj
    elseif t == "boolean" then
        lua = lua .. tostring(obj)
    elseif t == "string" then
        lua = lua .. string.format("%q", obj)
    elseif t == "table" then
        lua = lua .. "{\n"
    for k, v in pairs(obj) do
        lua = lua .. "[" .. dumptab(k) .. "]=" .. dumptab(v) .. ",\n"
    end
    local metatable = getmetatable(obj)
        if metatable ~= nil and type(metatable.__index) == "table" then
        for k, v in pairs(metatable.__index) do
            lua = lua .. "[" .. dumptab(k) .. "]=" .. dumptab(v) .. ",\n"
        end
    end
        lua = lua .. "}"
    elseif t == "nil" then
        return nil
    else
        print("序列化错误： " .. t .. " type.")
    end
    return lua
end

function dump(...)
    lib996:release_print(dumptab(...))
end




-- function GenRandom(min,max)
--     --得到时间字符串
--     local strTime=tostring(os.time())
--     --得到一个反转字符串
--     local strRev=string.reverse(strTime)
--     --得到前6位
--     local strRandomTime=string.sub(strRev, 1, 6)
--     --设置时间种子
--     math.randomseed(strRandomTime)
--     --输出随机数
--     --print("#随机数=",math.random(min, max))
--     return math.random(min, max)
-- end

--跨文件调用函数示例  --官方接口函数名强制小写  (测试中)
function delaycall(actor,time,strfun,pra)
    lib996:delaymsggoto(actor,time,"delaycallfile,"..strfun)
end


--跨文件调用函数
--callfile("Envir/Script/A/强化:playervar",actor)
--callfile("playervar",actor) --当前文件可直接填入fun
function callfileex(filename,...)
    local tab = string.split(filename, ":")
    if #tab == 2 then
        require_ex(tab[1])
        local f = load("return "..tab[2])()
        if f == nil then return end
        f(...)
    else
        local f = load("return "..filename)()
        if f == nil then return end
        f(...)
    end
end

function QsQStrSplit2(str, reps)

	local r = {}
	if str == nil then return nil end
	string.gsub(str, "[^"..reps.."]+", function(w) table.insert(r, tonumber(w) or w ) end)
    return r
end

--切割字符串  --同客户端 A/GUIinit文件中  SLStrSplitByMore
function QsQStrSplitByMore(str, repsArr)
    if #repsArr < 1 then
        return tonumber(str) or str
    end
    local repsArrCopy = {}

    for k,v in ipairs(repsArr) do
        repsArrCopy[k] = v
    end

    local r = QsQStrSplit2(str,repsArrCopy[1])
    table.remove(repsArrCopy, 1)

    for k,v in ipairs(r) do
        r[k] = QsQStrSplitByMore(v,repsArrCopy)
    end

    return r
end



function QsQRanomByWeight(t, weights)
    local sum = 0
    for i = 1, #weights do
        sum = sum + weights[i]
    end
    local compareWeight = math.random(1, sum)
    local weightIndex = 1
    while sum > 0 do
        sum = sum - weights[weightIndex]
        if sum < compareWeight then
            return t[weightIndex]
        end
        weightIndex = weightIndex + 1
    end
    return weightIndex
end

--检查 物品 货币 装备是否满足数量(数量不足返回不足物品的名字)
function QsQIsItemNumByTable(actor, t)
    for _,item in ipairs(t) do
        local idx,num = item[1],item[2]
        local name = lib996:getstditeminfo(idx, 1)
        if idx <= 100 then
            if not QsQcheckMoneyNum(actor, idx, num) then
                return name, num
            end
        else
            if not QsQcheckItemNumByIdx(actor, idx, num) then
                return name, num
            end
        end
    end
end

--检查货币数量
function QsQcheckMoneyNum(actor, moneytype, num)
    local moneynum = lib996:querymoney(actor, moneytype)
    return moneynum >= num
end

--检查物品数量
function QsQcheckItemNumByIdx(actor, idx, num)
	num = num or 1
    local count = 0
    local item_tab = lib996:getbagitems(actor)
    for i=1,#item_tab do
        local item = item_tab[i]
        local item_id = lib996:getiteminfo(actor, item, 2)
        if item_id == idx then
            local item_mun = lib996:getiteminfo(actor, item, 5)
            if item_mun == 0 then
                item_mun = 1
            end
            count = count + item_mun
        end
    end

	return count >= num
end

--拿走物品
function QsQtakeItemByTable(actor, t, desc)
    for _,item in ipairs(t) do
        local idx,num = item[1],item[2]
        if idx <= 100 then
            lib996:changemoney(actor, idx, "-", num, desc, true)
        else
            local name = lib996:getstditeminfo(idx, 1)
            lib996:takeitem(actor, name, num)
        end
    end
end

--更新属性
local _addrs = {}
function QsQupdateAddr(actor, loginattrs)
    --引擎属性
    for attridx=1,250 do
        _addrs[attridx] = 0
    end

    for _,addr in ipairs(loginattrs) do
        for _,v in ipairs(addr) do
            local attridx = v[1]
            _addrs[attridx] = _addrs[attridx] + v[2]
        end
    end

    --附加引擎属性
    for attridx,value in ipairs(_addrs) do
        if value > 0 then
            lib996:changehumnewvalue(actor, attridx, _addrs[attridx], 123456789)
        end
    end
end

--更新部分属性  cur_attr=需要扣除的属性，next_attr=需要加上的属性
function QsQupdateSomeAddr(actor, cur_attr, next_attr)
    local newattr = {}
    if cur_attr then
        for _,attr in ipairs(cur_attr) do
            local attridx, attrvalue = attr[1], attr[2]
            newattr[attridx] = newattr[attridx] or lib996:gethumnewvalue(actor, attridx)
            newattr[attridx] = newattr[attridx] - attrvalue
            if newattr[attridx] < 0 then newattr[attridx] = 0 end
        end
    end

    if next_attr then
        for _,attr in ipairs(next_attr) do
            local attridx, attrvalue = attr[1], attr[2]
            newattr[attridx] = newattr[attridx] or lib996:gethumnewvalue(actor, attridx)
            newattr[attridx] = newattr[attridx] + attrvalue
        end
    end

    --cfg_att_score.xls 属性
    for attridx,attrvalue in pairs(newattr) do
        lib996:changehumnewvalue(actor, attridx, attrvalue, 123456789)
    end
end

--判断成功率:如果成功返回false
--suc_rate:成功率
--ratio:比率
--return:返回true没成功
function FProbabilityHit(suc_rate, ratio)
    ratio = ratio or 100
    local rate = math.random(1, ratio)
    return rate > suc_rate
end

--秒转时分秒  100 = 00:01:40
function ssrSecToHMS(sec)
    sec = sec or 0

    local h,m,s = 0,0,0
    if sec > 3600 then
        h = math.floor(sec/3600)
    end
    sec = sec % 3600
    if sec > 60 then
        m = math.floor(sec/60)
    end
    s = sec % 60

    return string.format("%02d:%02d:%02d", h, m, s)
end

function FBackZone(actor)
    lib996:mapmove(actor, "3",333,333,5)
end

--检查一个对象的范围
function FCheckRange(obj, x, y, range)
    local cur_x, cur_y = lib996:getbaseinfo(obj, ConstCfg.gbase.x), lib996:getbaseinfo(obj, ConstCfg.gbase.y)
    local min_x, max_x = x-range, x+range
    local min_y, max_y = y-range, y+range

    if (cur_x >= min_x) and (cur_x <= max_x) and
       (cur_y >= min_y) and (cur_y <= max_y) then
        return true
    end

    return false
end
--检查自己与npc的距离
function FCheckNPCRange(actor, npcidx, range)
    range = range or 15
    local npcobj = lib996:getnpcbyindex(npcidx)
    local npc_mapid = lib996:getbaseinfo(npcobj, ConstCfg.gbase.mapid)
    local my_mapid = lib996:getbaseinfo(actor, ConstCfg.gbase.mapid)
    if npc_mapid ~= my_mapid then return false end

    local npc_x = lib996:getbaseinfo(npcobj, ConstCfg.gbase.x)
    local npc_y = lib996:getbaseinfo(npcobj, ConstCfg.gbase.y)
    return FCheckRange(actor, npc_x, npc_y, range)
end

function FOpenNpcShowEx(actor, npcidx, range1, range2)
    if FCheckNPCRange(actor, npcidx) then
        lib996:opennpcshowex(actor,npcidx)
    else
        range1 = range1 or 1
        range2 = range2 or 1
        lib996:opennpcshowex(actor,npcidx, range1, range2)
    end
end

function ResponseCfgGet(str, ...)
    return string.format(str, ...)
end

--发送邮件
local cfg_mail = lib996:include("QuestDiary/cfgcsv/邮件配置.lua")
function _Fsendmail(name,id,reward,...)
    --dump(cfg_mail,"cfg_mail")
    local cfg = cfg_mail[id]
    if not cfg then return end
    --邮件内容
    local content
    if cfg.content then
        if cfg.parameter then
            content = string.format(cfg.content, ...)
        else
            content = cfg.content
        end
    end
    local stritem
    --邮件物品
    if reward then
        if type(reward) == "table" then
            local items
            for _,item in ipairs(reward) do
                if type(item) == "table" then
                    items = items or {}
                    if item[3] == 1 then item[3] = ConstCfg.binding end
                    table.insert(items, table.concat(item, "#"))
                else
                    stritem = table.concat(reward, "&")
                    break
                end
            end

            if items then stritem = table.concat(items, "&") end
        else
            stritem = reward.."#1"
        end
    end
    lib996:sendmail("#"..name, 1, cfg.title, content, stritem)
end

--引导
function QSQOpenGuide(actor,parent,buttonID,str,dir)
    if not actor or not parent or not buttonID or not str then
        return
    end
    local dta = {}
    dta.dir = dir or 1    -- 方向（1~8）从左按瞬时针
    dta.guideWidget=buttonID   -- 当前节点id
    dta.guideParent=parent -- 父节点id
    dta.guideDesc=str    -- 文本描述
    --dta.clickCB= ceshi.test -- 回调
    dta.autoExcute=3    -- 自动消失时间
    dta.isForce=false    -- 强制引导
    dta.isDoubleClick=false ---false 单 true 双
    lib996:showformwithcontent(actor, "", "SLOPenGuide("..serialize(dta)..")") 
end

--深度拷贝
function clone(object)
    local lookup_table = {}
    local function _copy(object)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local new_table = {}
        lookup_table[object] = new_table
        for index, value in pairs(object) do
            new_table[_copy(index)] = _copy(value)
        end
        return setmetatable(new_table, getmetatable(object))
    end
    return _copy(object)
end

--检测属性表中是否有该id的属性值,返回true则没有属性
function isHasAttr(cfg,id)
    if not cfg[id] or id <= 0 then
        return true
    else
        return false
    end
end

-- 适配策划的表
function adaptation(old,id,new)
    if not next(new) then
        for i, v in pairs(old) do
            new[v[id]] = v
        end
    end
end

function QaQRanomByWeight(t, weights)
    local sum = 0
    for i = 1, #weights do
        sum = sum + weights[i]
    end
    local compareWeight = math.random(1, sum)
    local weightIndex = 1
    while sum > 0 do
        sum = sum - weights[weightIndex]
        if sum < compareWeight then
            return t[weightIndex]
        end
        weightIndex = weightIndex + 1
    end
    return weightIndex
end

function util_randItemByWeightStrEx(delStr,index,returnType)
    returnType = returnType or 2
    local tab = delStr
    local total = 0
    for i=1,#tab do
        total = total + tab[i][index]
    end
    local randValue = math.random(1,total)
    local curValue = 0
    for i=1,#tab do
        if randValue >= curValue and randValue <= curValue + tab[i][index] then
            if returnType == 1 then
                local tabStr = tostring(tab[i][1])
                for j = 2,#tab[i] do
                    tabStr = tabStr.."|"..tab[i][j]
                end
                return tabStr
            else
                return tab[i]
            end

        end
        curValue = curValue + tab[i][index]
    end
end

-- 生成镜像副本ID
function internal_createCopyId(actor,id)
    return tostring(id).."#".. lib996:getbaseinfo(actor,2)
end

--获取当前镜像副本ID
function internal_getCopyId(actor)
    return string.split(lib996:getbaseinfo(actor,3),"#")[1]
end

--物品限制使用
function canUse_itemIsCanUse(actor,idx,a1,a2)
    if a1 + 1 >= a2 then
        local limitUseItem = unserialize(lib996:getstr(0,actor,VarCfg.limitUseItem)) or {}
        for i, v in ipairs(limitUseItem) do
            if v == idx then
                return
            end
        end
        table.insert(limitUseItem,idx)
        lib996:setstr(0,actor,VarCfg.limitUseItem, serialize(limitUseItem))
    end
end