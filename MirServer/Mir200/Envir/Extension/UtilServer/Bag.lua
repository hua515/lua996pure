Bag = {}

--获取物品数量
function Bag.getItemNumByIdx(actor, idx)
 	-- local count = 0
  	-- local item_num = lib996:getbaseinfo(actor, ConstCfg.gbase.bag_num)
	-- for i=0, item_num-1 do
	-- 	local itemobj = lib996:getiteminfobyindex(actor, i)
	-- 	local itemidx = lib996:getiteminfo(actor, itemobj, ConstCfg.iteminfo.idx)
	-- 	if itemidx == idx then
	-- 		local item_mun = lib996:getiteminfo(actor, itemobj, ConstCfg.iteminfo.overlap)
	-- 		if item_mun == 0 then
	-- 			item_mun = 1
	-- 		end
	-- 		count = count + item_mun
	-- 	end
	-- end
	-- return count
  	return lib996:itemcount(actor,lib996:getstditeminfo(idx,1),0)
end

--检查物品数量
function Bag.checkItemNumByIdx(actor, idx, num)
	num = num or 1
	local count = Bag.getItemNumByIdx(actor, idx)
	return count >= num
end

--获取背包空格数量
function Bag.getBagEmptyNum(actor)
	-- local item_num = lib996:getbaseinfo(actor, ConstCfg.gbase.bag_num)
	-- return ConstCfg.bagcellnum - item_num
	return lib996:getbagblank(actor)
end

--检查背包空格数量
function Bag.checkBagEmptyNum(actor, num)
	local empty_num = Bag.getBagEmptyNum(actor)
	return empty_num >= num
end

--检查背包是否足够给予物品 items
function Bag.checkBagEmptyItems(actor, items)
	local bagEmptyNum = Bag.getBagEmptyNum(actor)
	local needEmptyNum = 0
	for _,item in ipairs(items) do
        local idx,num = item[1],item[2]
        if not Item.isCurrency(idx) then    --物品 装备
			needEmptyNum = needEmptyNum + 1
        end
    end
	return bagEmptyNum >= needEmptyNum
end

--获取背包中某件物品对象
function Bag.getItemObjByIdx(actor, idx)
	local item_num = lib996:getbaseinfo(actor, ConstCfg.gbase.bag_num)
	for i=0, item_num-1 do
		local itemobj = lib996:getiteminfobyindex(actor, i)
		local itemidx = lib996:getiteminfo(actor, itemobj, ConstCfg.iteminfo.idx)
		if itemidx == idx then
			return itemobj
		end
	end
end

--获取背包中某件物品唯一id
function Bag.getItemMakeIdByIdx(actor, idx)
	local itemobj = Bag.getItemObjByIdx(actor, idx)
	if not itemobj then return end
	return lib996:getiteminfo(actor, itemobj, ConstCfg.iteminfo.id)
end

--检查背包是否有某件物品的数量通过唯一id
function Bag.checkItemNumByMakeIndex(actor, makeindex, num)
	num = num or 1

	local item_num = lib996:getbaseinfo(actor, ConstCfg.gbase.bag_num)
	for i=0, item_num-1 do
		local itemobj = lib996:getiteminfobyindex(actor, i)
		local itemmakeid = lib996:getiteminfo(actor, itemobj, ConstCfg.iteminfo.id)
		if itemmakeid == makeindex then
			if num > 1 then
				local overlap = lib996:getiteminfo(actor, itemobj, ConstCfg.iteminfo.overlap)
				if overlap < num then return false end
			end
			return true
		end
	end

	return false
end

--获取背包中某件物品对象通过唯一ID
function Bag.getItemObjByMakeIndex(actor, makeindex)
	local item_num = lib996:getbaseinfo(actor, ConstCfg.gbase.bag_num)
	for i=0, item_num-1 do
		local itemobj = lib996:getiteminfobyindex(actor, i)
		local itemmakeindex = lib996:getiteminfo(actor, itemobj, ConstCfg.iteminfo.id)
		if itemmakeindex == makeindex then
			return itemobj
		end
	end
end


return Bag