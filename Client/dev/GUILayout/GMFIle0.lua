local ui = {}
function ui.init(parent)
	-- Create Layout
	local Layout = GUI:Layout_Create(parent, "Layout", 159.00, 275.00, 500.00, 200.00, true)
	GUI:Layout_setBackGroundImage(Layout, "res/private/chat/1900012804.png")
	GUI:Layout_setBackGroundColorType(Layout, 1)
	GUI:Layout_setBackGroundColor(Layout, "#96c8ff")
	GUI:Layout_setBackGroundColorOpacity(Layout, 140)
	GUI:Layout_setBackGroundImageScale9Slice(Layout, 0, 371, 0, 293)
	GUI:setTouchEnabled(Layout, false)
	GUI:setTag(Layout, -1)

	-- Create Input
	local Input = GUI:TextInput_Create(Layout, "Input", 29.00, 145.00, 100.00, 25.00, 16)
	GUI:TextInput_setString(Input, "输入地图ID")
	GUI:TextInput_setFontColor(Input, "#ffffff")
	GUI:setTouchEnabled(Input, true)
	GUI:setTag(Input, -1)

	-- Create Button
	local Button = GUI:Button_Create(Layout, "Button", 39.00, 76.00, "res/private/gui_edit/Button_Normal.png")
	GUI:Button_loadTexturePressed(Button, "res/private/gui_edit/Button_Press.png")
	GUI:Button_loadTextureDisabled(Button, "res/private/gui_edit/Button_Disable.png")
	GUI:Button_setTitleText(Button, "进入地图")
	GUI:Button_setTitleColor(Button, "#ffffff")
	GUI:Button_setTitleFontSize(Button, 14)
	GUI:Button_titleEnableOutline(Button, "#000000", 1)
	GUI:setTouchEnabled(Button, true)
	GUI:setTag(Button, -1)
end


ui.init()
return ui