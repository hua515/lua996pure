GameEvent = {}

local _listeners = {}

function GameEvent.add(eventName, func, tag, priority)
	--assert(tag, "Tag must not be nil")

	--不是qf虚拟机不注册事件
	if lib996:getsysindex() ~= 999999999 then return end

	if not _listeners[eventName] then
		_listeners[eventName] = {}
	end

	local eventListeners = _listeners[eventName]
	local eventListenerSize = #eventListeners
	for i = 1, eventListenerSize do
		if tag == eventListeners[i][2] then
			return
		end
	end

	if priority and eventListenerSize >= priority then
		table.insert(eventListeners, priority, {func, tag})
	else
		table.insert(eventListeners, {func, tag})
	end
end

function GameEvent.remove(func)
	for eventName, eventListeners in pairs(_listeners) do
		for i = 1, #eventListeners do
			if eventListeners[i][1] == func then
				table.remove(eventListeners, i)
				if 0 == #_listeners[eventName] then
					_listeners[eventName] = nil
				end
				return
			end
		end
	end
end

function GameEvent.removeByNameAndTag(eventName, tag)
	assert(tag, "Tag must not be nil")
	local eventListeners = _listeners[eventName]
	if not eventListeners then return end

	for i = #eventListeners, 1, -1 do
		if eventListeners[i][2] == tag then
			table.remove(eventListeners, i)
			break
		end
	end

	if 0 == #eventListeners then
		_listeners[eventName] = nil
	end
end

function GameEvent.removeByTag(tag)
	assert(tag, "Tag must not be nil")
	for eventName, eventListeners in pairs(_listeners) do
		self.removeListenerByNameAndTag(eventName, tag)
	end
end

function GameEvent.removeAll()
	_listeners = {}
end

function GameEvent.push(eventName, ...)
	local eventListeners = _listeners[eventName]
	if not eventListeners then
		return
	end

	for index, listeners in ipairs(eventListeners) do
		local result, stop = pcall(listeners[1], ...)
		if result then
			if stop then break end
		else
			local tag = listeners[2]
			local tarid
			if type(tag) == "string" then
				tarid = tag
			else
				tarid = tag.ID or 0
			end
			local err = "派发事件发生错误：事件名="..eventName.."  模块ID="..tarid.."   "
			lib996:release_print(err, stop)
		end
	end
end

function EventVMpush(actor,param)
    local cfg = string.split(param,"#")
    local eventStr = cfg[1]
    if eventStr and EventCfg[eventStr] then
        GameEvent.push(EventCfg[eventStr],cfg[2],cfg[3],cfg[4],cfg[5])
    end
end

--切换其他虚拟机派发消息
function GameEvent.pushVM(actor,eventcfg,VMID,funcname)
	VMID = tonumber(VMID) or 999999999
	funcname = funcname or "EventVMpush"
	-- lib996:release_print("切换其他虚拟机派发消息,虚拟机id = "..VMID.."  函数名:"..funcname)
    lib996:callfunbynpc(actor, VMID, 0, funcname,eventcfg)
end

return GameEvent