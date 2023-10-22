Player = {}

--检查货币数量
function Player.checkMoneyNum(actor, moneytype, num)
    local moneynum = lib996:querymoney(actor, moneytype)
    if moneytype == ConstCfg.money.bdgold then
        moneynum = moneynum + lib996:querymoney(actor, ConstCfg.money.gold)
    end
    return moneynum >= num
end

--获取金额
function Player.getBillNum(actor)
    return lib996:getint(0,actor,VarCfg.U_real_recharge)
end

--获取今日金额
function Player.getTodayBillNum(actor)
    return lib996:getint(0,actor,VarCfg.U_today_real_recharge)
end

--扣除货币数量
function Player.takeMoney(actor, idx,num, desc)
    --游戏设定 绑定金币不足扣除正常金币
    if idx == ConstCfg.money.bdyb then
        local bdyb = lib996:querymoney(actor, ConstCfg.money.bdyb)
        if num > bdyb then
            --所需金币大于绑定金币时
            lib996:changemoney(actor, ConstCfg.money.bdyb, "-", bdyb, desc, true)       --首先扣除所有绑定金币
            lib996:changemoney(actor, ConstCfg.money.yb, "-", (num-bdyb), desc, true)   --正常金币补充不足金币
        end
    end
    lib996:changemoney(actor, idx, "-", num, desc, true)
end

--检查 物品 货币 装备是否满足数量(数量不足返回不足物品的名字)
function Player.checkItemNumByTable(actor, t, multiple)
    for _,item in ipairs(t) do
        local idx,num = item[1],item[2]
        if multiple then num=num*multiple end

        local name = idx==ConstCfg.money.bdgold and "金币" or lib996:getstditeminfo(idx, ConstCfg.stditeminfo.name)
        if Item.isCurrency(idx) then        --货币
            if not Player.checkMoneyNum(actor, idx, num) then
                return name, num
            end
        else                                    --物品 装备
            if not Bag.checkItemNumByIdx(actor, idx, num) then
                return name, num
            end
        end
    end
end

--如果是装备要检查身上(只供物品合成使用)
function Player.libcheckItemNumByTableEx(actor, t, multiple)
    for _,item in ipairs(t) do
        local idx,num = item[1],item[2]
        if multiple then num = num * multiple end
        local name = lib996:getstditeminfo(idx, ConstCfg.stditeminfo.name)
        if Item.isCurrency(idx) then        --货币
            if not Player.checkMoneyNum(actor, idx, num) then
                return false, name, num
            end
        elseif Item.isItem(idx) then        --物品
            if not Bag.checkItemNumByIdx(actor, idx, num) then
                return false, name, num
            end
        else                                --装备
            local count = Bag.getItemNumByIdx(actor, idx)
            if count < num then
                local wheres = Item.getWheresByIdx(idx)
                if wheres then
                    for _,where in ipairs(wheres) do
                        local equipobj = lib996:linkbodyitem(actor, where)
                        if equipobj ~= "0" then
                            local equipidx = lib996:getiteminfo(actor, equipobj, ConstCfg.iteminfo.idx)
                            if equipidx == idx then
                                count = count + 1
                            end
                        end
                    end
                end
            end
            if count < num then
                return false, name, num
            end
        end
    end
    return true
end

--拿走物品
function Player.takeItemByTable(actor, t, desc, multiple)
    for _,item in ipairs(t) do
        local idx,num = item[1],item[2]
        if multiple then num=num*multiple end
        if Item.isCurrency(idx) then        --货币
            if idx == 4 then  --游戏设定 绑定金币不足扣除正常金币
                local bdyb = lib996:querymoney(actor, 4)
                if num > bdyb then    --所需金币大于绑定金币时
                    lib996:changemoney(actor, 4, "-", bdyb, desc, true)   --首先扣除所有绑定金币
                    lib996:changemoney(actor, 2, "-", (num-bdyb), desc, true)  --正常金币补充不足金币
                end
            end
            if idx == ConstCfg.money.lf then  --游戏设定 优先扣除绑定灵符
                local bdlf = lib996:querymoney(actor, ConstCfg.money.bdlf)
                if bdlf >= num then
                    --如果绑定灵符大于等于需要扣除的数量
                    lib996:changemoney(actor, ConstCfg.money.bdlf, "-", num, desc, true)
                    -- LOGWrite("进入2,原:",bdlf,"修改后:",lib996:querymoney(actor, ConstCfg.money.bdlf))
                    num = 0
                else
                    --如果绑定灵符不足
                    lib996:changemoney(actor, ConstCfg.money.bdlf, "-", bdlf, desc, true)
                    -- LOGWrite("进入3,原:",bdlf,"修改后:",lib996:querymoney(actor, ConstCfg.money.bdlf))
                    num = num - bdlf
                end
            end
            if num > 0 then
                lib996:changemoney(actor, idx, "-", num, desc, true)
            end
        else                                    --物品 装备
            local name = lib996:getstditeminfo(idx, ConstCfg.stditeminfo.name)
            lib996:takeitem(actor, name, num)
        end
    end
end

--优先拿走非绑定物品
function Player.takeItemByTableEx(actor, t, desc, multiple, isbind)
    --拆分物品和货币
    local t_gold = {}
    local t_item = {}
    local t_overlap_item = {}
    local iteminfos = {}
    local itemoverlapinfos = {}
    for _,item in ipairs(t) do  
        local idx,num = item[1],item[2]
        if multiple then num = num * multiple end
        if Item.isCurrency(idx) then    --货币
            t_gold[idx] = num
        else                                --物品 装备
            local overlap = lib996:getstditeminfo(idx, ConstCfg.stditeminfo.overlap)
            if overlap == 0 then        --不叠加
                t_item[idx] = num
                iteminfos[idx] = {bind={}, notbind={}}
            else                        --叠加物品
                t_overlap_item[idx] = num
                itemoverlapinfos[idx] = {bind={}, notbind={}}
            end
        end
    end
    --绑定与非绑定物品唯一id分开保存
    local item_num = lib996:getbaseinfo(actor, ConstCfg.gbase.bag_num)
    for i=0, item_num-1 do
        local itemobj = lib996:getiteminfobyindex(actor, i)
        local itemidx = lib996:getiteminfo(actor, itemobj, ConstCfg.iteminfo.idx)
        for idx,_ in pairs(t_item) do
            if idx == itemidx then
                local bind = lib996:getiteminfo(actor, itemobj, ConstCfg.iteminfo.bind)
                local t_bind = bind==0 and iteminfos[idx].notbind or iteminfos[idx].bind
                local itemmakeindex = lib996:getiteminfo(actor, itemobj, ConstCfg.iteminfo.id)
                table.insert(t_bind, itemmakeindex)
            end
        end

        for idx,_ in pairs(t_overlap_item) do
            if idx == itemidx then
                local bind = lib996:getiteminfo(actor, itemobj, ConstCfg.iteminfo.bind)
                local t_bind = bind==0 and itemoverlapinfos[idx].notbind or itemoverlapinfos[idx].bind
                local itemmakeindex = lib996:getiteminfo(actor, itemobj, ConstCfg.iteminfo.id)
                local itemnum = lib996:getiteminfo(actor, itemobj, ConstCfg.iteminfo.overlap)
                t_bind[itemmakeindex] = itemnum
            end
        end
    end

    --身上穿戴的物品也算在合成物品内
    for idx,_t in pairs(iteminfos) do
        if Item.isEquip(idx) then
            local wheres = Item.getWheresByIdx(idx)
            for _,where in ipairs(wheres) do
                local equipobj = lib996:linkbodyitem(actor, where)
                if equipobj ~= "0" then
                    local equipidx = lib996:getiteminfo(actor, equipobj, ConstCfg.iteminfo.idx)
                    if equipidx == idx then
                        local bind = lib996:getiteminfo(actor, equipobj, ConstCfg.iteminfo.bind)
                        local t_bind = bind==0 and iteminfos[idx].notbind or iteminfos[idx].bind
                        local equipmakeindex = lib996:getiteminfo(actor, equipobj, ConstCfg.iteminfo.id)
                        table.insert(t_bind, equipmakeindex)
                    end
                end
            end
        end
    end

    --扣物品
    local t_take = {}
    for idx,need_num in pairs(t_item) do
        local t_bind, t_notbind = iteminfos[idx].bind, iteminfos[idx].notbind
        local t_first = isbind and {t_notbind} or {t_bind, t_notbind}
        for _,v in ipairs(t_first) do
            for _,makeindex in ipairs(v) do
                table.insert(t_take, makeindex)
                need_num = need_num - 1
                if need_num == 0 then break end
            end
            if need_num == 0 then break end
        end
    end
    if #t_take > 0 then
        local takestr = table.concat(t_take, ",")
        lib996:delitembymakeindex(actor, takestr)
    end

    for idx,need_num in pairs(t_overlap_item) do
        local temp_num = need_num
        local t_bind, t_notbind = itemoverlapinfos[idx].bind, itemoverlapinfos[idx].notbind
        local t_first = isbind and {t_notbind} or {t_bind, t_notbind}
        for _,v in ipairs(t_first) do
            if temp_num <= 0 then break end
            for makeindex,num in pairs(v) do
                temp_num = temp_num - num
                if temp_num > 0 then
                    lib996:delitembymakeindex(actor, tostring(makeindex), num)
                    need_num = need_num - num
                else
                    lib996:delitembymakeindex(actor, tostring(makeindex), need_num)
                    break
                end
            end
        end
    end

    --扣货币
    for idx,num in pairs(t_gold) do
        lib996:changemoney(actor, idx, "-", num, desc, true)
    end
    return isbind
    --如果有一个物品是固定绑定 其他物品优先扣除绑定物品
    --如果没有任何物品是固定绑定那么说明非绑定物品足够
    --判断物品是否叠加物品 如果是叠加物品要单独拿走
end

--给物品
function Player.giveItemByTable(actor, t, desc, multiple, isbind)
    multiple = multiple or 1         --倍数

    for _,item in ipairs(t) do
        local idx,num,bind = item[1],item[2],item[3]
        if Item.isCurrency(idx) then        --货币
            lib996:changemoney(actor, idx, "+", num * multiple, desc, true)
        else                                    --物品 装备
            local name = lib996:getstditeminfo(idx, ConstCfg.stditeminfo.name)
            if bind or isbind then
                lib996:giveitem(actor, name, num * multiple, ConstCfg.binding)
            else
                lib996:giveitem(actor, name, num * multiple)
            end
        end
    end
end

--给物品盒子
function Player.giveItemBoxByIdx(actor, idx)
    local name = lib996:getstditeminfo(idx, ConstCfg.stditeminfo.name)
    lib996:giveitem(actor, name)
end

--获取当前穿戴装备的唯一id数组通过idx
function Player.getEquipIdsByIdx(actor, idx)
    if not Item.isEquip(idx) then return {} end

    local equipids = {}
    local wheres = Item.getWheresByIdx(idx)
    for _,where in ipairs(wheres) do
        local equipobj = lib996:linkbodyitem(actor, where)
        if equipobj ~= "0" then
            local equipidx = lib996:getiteminfo(actor, equipobj, ConstCfg.iteminfo.idx)
            if equipidx == idx then
                local equipmakeindex = lib996:getiteminfo(actor, equipobj, ConstCfg.iteminfo.id)
                table.insert(equipids, equipmakeindex)
            end
        end
    end
    return equipids
end

--获取装备位idx
function Player.getEquipPosIdx(actor, pos)
    local itemobj = lib996:linkbodyitem(actor, pos)
    if itemobj=="0" then return end
    local idx = lib996:getiteminfo(actor, itemobj, ConstCfg.iteminfo.idx)
    return idx
end

return Player