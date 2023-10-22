Item = {}

--检查idx是否是货币
function Item.isCurrency(idx)
    local stdmode = lib996:getstditeminfo(idx, ConstCfg.stditeminfo.stdmode)
    return stdmode == 41
end

--检查idx是否是物品
function Item.isItem(idx)
    local stdmode = lib996:getstditeminfo(idx, ConstCfg.stditeminfo.stdmode)
    if stdmode == 41 then return end
    return not ConstCfg.stdmodewheremap[stdmode]
end

--检查idx是否是装备
function Item.isEquip(idx)
    local stdmode = lib996:getstditeminfo(idx, ConstCfg.stditeminfo.stdmode)
    if stdmode == 41 then return end
    return ConstCfg.stdmodewheremap[stdmode]
end

--获取where通过idx
function Item.getWheresByIdx(idx)
    local stdmode = lib996:getstditeminfo(idx, ConstCfg.stditeminfo.stdmode)
    return ConstCfg.stdmodewheremap[stdmode]
end

--获取idx通过where
function Item.getIdxByWhere(actor, where)
    local equipobj = linkbodyitem(actor, where)
    if equipobj == "0" then return end
    return lib996:getiteminfo(actor, equipobj, ConstCfg.iteminfo.idx)
end

--获取物品名字通过idx
function Item.getNameByIdx(idx)
    return lib996:getstditeminfo(idx, ConstCfg.stditeminfo.name)
end

return Item