if not ConstCfg.DEBUG then return end

--金币
function usercmd10001(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 1, "=", 0, "", true)
end
function usercmd10002(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 1, "+", 100000000, "", true)
end

--元宝
function usercmd10003(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 2, "=", 0, "", true)
end
function usercmd10004(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 2, "+", 100000000, "", true)
end

--灵符
function usercmd10005(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 7, "=", 0, "", true)
end
function usercmd10006(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 7, "+", 100000000, "", true)
end

--绑定元宝
function usercmd10007(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 4, "=", 0, "", true)
end
function usercmd10008(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:changemoney(actor, 4, "+", 100000000, "", true)
end

--异域大战
function usercmd10009(actor)
    if getgmlevel(actor) ~= 10 then return end
    Playyydz.custom_open(actor)
end
function usercmd10010(actor)
    if getgmlevel(actor) ~= 10 then return end
    Playyydz.custom_close(actor)
end

--大乱斗
function usercmd10011(actor)
    if getgmlevel(actor) ~= 10 then return end
    Playdld.custom_open(actor)
end
function usercmd10012(actor)
    if getgmlevel(actor) ~= 10 then return end
    Playdld.custom_close(actor)
end

--任务完成
function usercmd10100(actor, tasktype)
    if getgmlevel(actor) ~= 10 then return end
    local tasktype = tonumber(tasktype)
    if not tasktype then return end
    Task.rwwc(actor, tasktype)
end
--任务完成2
function usercmd10101(actor, taskid)
    if getgmlevel(actor) ~= 10 then return end
    taskid = tonumber(taskid)
    if not taskid then return end
    Task.finish(actor, taskid)
end
--任务领取
function usercmd10102(actor, taskid)
    if getgmlevel(actor) ~= 10 then return end
    taskid = tonumber(taskid)
    if not taskid then return end
    Task.receive(actor, taskid)
end
--任务删除
function usercmd10103(actor, taskid)
    if getgmlevel(actor) ~= 10 then return end
    taskid = tonumber(taskid)
    if not taskid then return end
    Task.delete(actor, taskid)
end

--英雄等级
function usercmd10200(actor,level)
    level = tonumber(level)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local hero = lib996:gethero(actor)
    if hero == "0" then
        lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>请英雄在线</font>","Type":9}')
        return
    end
    if level and level > 0 then
        lib996:setlevel(hero,"+", level)
    else
        lib996:setlevel(hero,"-", lib996:getlevel(hero) - 1)
    end
end

--英雄转生+1
function usercmd10201(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local hero = lib996:gethero(actor)
    if hero == "0" then
        lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>请英雄在线</font>","Type":9}')
        return
    end
    local hero_relevel = lib996:getint(0,actor,VarCfg.Hero_renew_level) + 1
    lib996:setint(0,actor,VarCfg.Hero_renew_level,hero_relevel)
    lib996:setrelevel(hero,hero_relevel)
    lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#00FF7F\'>重新召唤后更新属性</font>","Type":9}')
end
--英雄转生=0
function usercmd10202(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local hero = lib996:gethero(actor)
    if hero == "0" then
        lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>请英雄在线</font>","Type":9}')
        return
    end
    local hero_relevel = lib996:getint(0,actor,VarCfg.Hero_renew_level) + 1
    lib996:setint(0,actor,VarCfg.Hero_renew_level,hero_relevel)
    lib996:setrelevel(hero,hero_relevel)
    lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#00FF7F\'>重新召唤后更新属性</font>","Type":9}')
end

--人物转生+1
function usercmd10013(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local zslevel = lib996:getbaseinfo(actor, 39)
    local next_zslevel = zslevel + 1
    --lib996:setbaseinfo(actor, 39, next_zslevel)  --转生常量
    lib996:setrelevel(actor,next_zslevel)
    GameEvent.push(EventCfg.goZSLevelChange, actor, next_zslevel, zslevel)
end

--人物转生=0
function usercmd10014(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local zslevel = lib996:getbaseinfo(actor, 39)
    local next_zslevel = 0
    --lib996:setbaseinfo(actor, 39, next_zslevel)  --转生常量
    lib996:setrelevel(actor,next_zslevel)
    GameEvent.push(EventCfg.goZSLevelChange, actor, next_zslevel, zslevel)
end

--全屏清怪
function usercmd10015(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local _mapID = lib996:getbaseinfo(actor, 3)
    local x,y = lib996:getbaseinfo(actor, 4),lib996:getbaseinfo(actor, 5)
    local object = lib996:getobjectinmap(_mapID,x,y,10,2)
    if #object > 0 then
        for i, mon in ipairs(object) do
            lib996:killmonbyobj(actor,mon,true,true,true)
        end
    end
end

--添加道具
function usercmd10016(actor, itemName,itemNum)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local Name = tonumber(itemName)
    if type(Name) == "number" then
        itemName = lib996:getstditeminfo(Name,1)
    end
    itemNum = tonumber(itemNum) or 1

    -- print("修改后,不给绑定")
    lib996:giveitem(actor,itemName,itemNum)
end

--测试充值
function usercmd10020(actor,num,moneyid)
    if lib996:getgmlevel(actor) ~= 10 then return end
    num = tonumber(num)
    moneyid = tonumber(moneyid) or ConstCfg.money.lf
    if not num then return end
    recharge(actor, num, moneyid,moneyid)
end

 --触发每日/进入下一天
function usercmd10104(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:setstr(0,actor, VarCfg.T_daily_date, "")
    lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>gm执行成功,触发每日/进入下一天</font>","Type":9}')
    GameEvent.push(EventCfg.onLoginEnd, actor)
end

--让所有行会参与今晚攻城
function usercmd10105(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    lib996:addattacksabakall()
    lib996:release_print("gm执行成功")
end
--清空物品
function usercmd10106(actor)
    if lib996:getgmlevel(actor) ~= 10 then return end
    local tab_name = {}
    local tab_num = {}
    local item_tab = lib996:getbagitems(actor)   --获取背包所有物品对象
    for i=1,#item_tab do
        local item = item_tab[i]
        local id = lib996:getiteminfo(actor, item, 2)  --获取背包物品id
        local name = lib996:getstditeminfo(id,1)          --获取背包物品name
        local item_mun = lib996:getiteminfo(actor, item, 5)  --获取堆叠
        if item_mun == 0 then   --堆叠为0 为不堆叠 数量为1
            item_mun = 1
        end
        table.insert(tab_name,name)
        table.insert(tab_num,item_mun)
    end
    for j=1,#tab_name do
        lib996:takeitem(actor,tab_name[j],tab_num[j])
    end
end
--查询背包内物品
function usercmd10107(actor)
    local tab_name = {}
    local tab_num = {}
    local tab_idx = {}
    local tab_id = {}
    local tab_item = {}
    
    local item_tab = lib996:getbagitems(actor)
    for i=1,#item_tab do
        local item = item_tab[i]
        local idx = lib996:getiteminfo(actor, item, 2)  --获取背包物品序号
        local id = lib996:getiteminfo(actor, item, 1)  --获取背包物品唯一id
        local name = lib996:getstditeminfo(idx,1)          --获取背包物品name
        local item_mun = lib996:getiteminfo(actor, item, 5)  --获取堆叠
        if item_mun == 0 then   --堆叠为0 为不堆叠 数量为1
            item_mun = 1
        end
        
        table.insert(tab_name,name)
        table.insert(tab_num,item_mun)
        table.insert(tab_idx,idx)
        table.insert(tab_id,id)
        table.insert(tab_item,item)
    end
    for j=1,#tab_name do
        lib996:release_print(" 物品ID:"..tab_idx[j].."，名字:"..tab_name[j].."，数量:"..tab_num[j].."，对象:"..tab_item[j].."，唯一ID:"..tab_id[j])
    end 
end
--查询玩家自定义变量 @get 变量名（废弃）
function usercmd10108(actor,var)
    local value = getplayvar(actor,var)
    lib996:release_print(type(value)..":"..var.." = "..value)
end
--设置玩家自定义变量 @set 变量名 变量值（废弃）
function usercmd10109(actor,var,value)
    setplayvar(actor, "HUMAN",var,value,1)
end
--查询全局自定义变量 @get 变量名（废弃）
function usercmd10110(actor,var)
    local value = getsysvarex(var)
    lib996:release_print(type(value)..":"..var.." = "..value)
end
--设置全局定义变量 @set 变量名 变量值（废弃）
function usercmd10111(actor,var,value)
    setsysvarex(var,value, 1)
end

--刷怪
function usercmd10112(actor, monName,monmNum)
    monmNum = monmNum or 1
    local map = lib996:getbaseinfo(actor, 3)
    local x = lib996:getbaseinfo(actor, 4) + 2
    local y = lib996:getbaseinfo(actor, 5) + 2
    local r = 3
    lib996:genmon(map,x,y,monName,r,monmNum)
end

--GMbox变量
function usercmd10113(actor,gs,vartype, str1,str2,str3,str4)
    if str1 ~= "QSQ_var" then
        str1 = tonumber(str1)
    end
    if str4 == "nil" then
        str4 = nil
    end
    if vartype == "int" then
        str4 = tonumber(str4)
        if str4 == nil then
            str4 = 0
        end
    end
    if tonumber(gs) == 2 then   --获取变量
        if str1 == "QSQ_var" and str2 == "QSQ_var" then --1 和2都为空时为系统变量
            local sysvar = ""
            if vartype == "int" then
                sysvar = lib996:getsysint(str3)
            else
                sysvar = lib996:getsysstr(str3)
            end
            local psysvar = lib996:tbl2json(sysvar) or sysvar
            lib996:release_print("系统变量 "..vartype,psysvar)
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>系统变量'..vartype.." "..psysvar..'</font>","Type":1}')

        end
        if str1 == 0 and str2 == "QSQ_var" then --有对象类型 2为空时 则是自己
            local sysvar = ""
            if vartype == "int" then
                sysvar = lib996:getint(str1,actor,str3)
            else
                sysvar = lib996:getstr(str1,actor,str3)
            end
            local psysvar = lib996:tbl2json(sysvar) or sysvar
            lib996:release_print("本人变量 "..vartype.."类",psysvar)
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>本人变量'..vartype.." "..psysvar..'</font>","Type":1}')
        end
        if str1 ~= "QSQ_var" and str2 ~= "QSQ_var" then --有对象类型 2也有指定对象时
            local sysvar = ""
            if vartype == "int" then
                sysvar = lib996:getint(str1,str2,str3)
            else
                sysvar = lib996:getstr(str1,str2,str3)
            end
            local psysvar = lib996:tbl2json(sysvar) or sysvar
            lib996:release_print("指定变量 "..vartype.."类",psysvar)
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>指定变量'..vartype.." "..psysvar..'</font>","Type":1}')
        end
    else        --设置变量
        if str1 == "QSQ_var" and str2 == "QSQ_var" then
            if vartype == "int" then
                lib996:setsysint(str3,str4)
            else
                lib996:setsysstr(str3,str4)
            end
            lib996:release_print("修改系统变量 完成")
        end
        if str1 == 0 and str2 == "QSQ_var" then
            if vartype == "int" then
                lib996:setint(str1,actor,str3,str4)
            else
                lib996:setstr(str1,actor,str3,str4)
            end
            lib996:release_print("修改本人变量 完成")
        end
        if str1 ~= "QSQ_var" and str2 ~= "QSQ_var" then
            if vartype == "int" then
                lib996:setint(str1,str2,str3,str4)
            else
                lib996:setstr(str1,str2,str3,str4)
            end
            lib996:release_print("修改指定变量 完成")
        end
    end
end

--技能
function usercmd10114(actor, way,_skillid)
    if type(way) == "nil" then
        return
    end
    if way == "3" then --删除所有技能
        lib996:clearskill(actor)  
        lib996:release_print("删除成功")      
        return
    end

    local skillid = tonumber(_skillid)
    if not skillid then
        skillid = lib996:getskillindex(_skillid) --根据技能名称获取技能id -1
        if skillid == -1 then
            lib996:release_print("请输入正确的技能id或技能名字！")
            return
        end
    end
    local skillname = lib996:getskillname(skillid) --根据技能id获取技能名称 0
    if skillname == "0" then
        lib996:release_print("请输入正确的技能id或技能名字！")
        return
    end

    if way == "1" then -- 删除技能   
        local test = lib996:getskillinfo(actor, skillid, 1)
        if test then
            lib996:delskill(actor, skillid)
            lib996:release_print("删除【" .. skillname .. "】成功！")
        end
    elseif way == "2" then --添加技能
        local test = lib996:getskillinfo(actor, skillid, 1)
        if test then
            lib996:release_print("已有【".. skillname .."】！")
            return
        end
        lib996:addskill(actor, skillid, 0)
        lib996:release_print("添加【" .. skillname .. "】成功！")
    end
end
    --buff
function usercmd10115(actor,itype,name,buffid)
    -- print(itype, name, buffid)
    buffid = tonumber(buffid)
    local play = ""
    if name == "nil" then
        play = actor
    else
        play = lib996:getplayerbyname(name)
    end

    if itype == "1" then
        if lib996:hasbuff(play,buffid) then 
            lib996:delbuff(play,buffid)
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>删除成功</font>","Type":1}')
        else
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>删除失败，目标没有该buff</font>","Type":1}')
        end
    elseif itype == "2" then
        lib996:addbuff(play,buffid)
        lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>操作成功（注意：不等于添加成功）</font>","Type":1}')
    elseif itype == "3" then
        local tab_buff = lib996:getallbuffid(play)
        for i=1,#tab_buff do 
            lib996:delbuff(play,tab_buff[i])
        end
        lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>删除成功</font>","Type":1}')
    elseif itype == "4" then
        local tab_buff = lib996:getallbuffid(play)
        lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#FFA500\'>--------------查询开始---------------</font>","Type":1}')
        for i=1,#tab_buff do 
            local d = lib996:getbuffinfo(play,tab_buff[i],1)
            local time = lib996:getbuffinfo(play,tab_buff[i],2)

            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#FFA500\'>ID:'..tab_buff[i]..'</font>","Type":1}')
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#FFA500\'>层数:'..d..'</font>","Type":1}')
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#FFA500\'>时间:'..time..'</font>","Type":1}')
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#FFA500\'>---------------------------------------</font>","Type":1}')
        end
    end
end

--属性
function usercmd10116(actor, itype, attrid, attrvalue)
    -- print(lib996:attr(actor,1))
    if attrid then
        attrid = tonumber(attrid)
    end
    if attrvalue then
        attrvalue = tonumber(attrvalue)
    end

    if itype == "1" then --修改属性
        if attrid then
            local attr = lib996:attr(actor,attrid)
            if attr then
                lib996:changehumnewvalue(actor,attrid,attrvalue,99999999)
                lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>修改成功</font>","Type":1}')
            else
                lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>修改失败，属性不存在</font>","Type":1}')
            end
        else
            lib996:sendmsg(actor, 1, '{"Msg":"<font color=\'#ff0000\'>请输入属性id</font>","Type":1}')
        end
    end
end


