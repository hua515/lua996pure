GUI = {}

--创建
---创建窗口控件
---*  ID ： 控件ID
---*  PosX ： 控件位置的横坐标
---*  PosY ： 控件位置的纵坐标
---*  Width ： 控件的宽
---*  Height ： 控件的高
---*  Main ： 是否隐藏主界面
---*  Last ： 是否隐藏上一个界面
---*  NeedVoice ： 是否点击时有音效
---*  EscClose ： 是否esc关闭(客户端)
---*  isRevmsg ： 是否pc鼠标经过吞噬，默认true
---*  npcID ： 绑定npcid
---@param ID str
---@param PosX int
---@param PosY int
---@param Width int
---@param Height int
---@param Main bool
---@param Last bool
---@param NeedVoice bool
---@param EscClose bool
---@param isRevmsg bool
---@param npcID int
---@nodiscard
function GUI:Win_Create(ID,PosX,PosY,Width,Height,Main,Last,NeedVoice,EscClose,isRevmsg,npcID) end

---创建容器控件
---*  Parent ： 父控件对象
---*  ID ： 控件ID
---*  PosX ：控件位置的横坐标
---*  PosY ： 控件位置的纵坐标
---*  Width ： 控件的宽
---*  Height ： 控件的高
---*  isClip ： 是否裁剪
---@param Parent parent
---@param ID string
---@param PosX int
---@param PosY int
---@param Width int
---@param Height int
---@param isClip bool
---@nodiscard
function GUI:Layout_Create( Parent, ID, PosX, PosY, Width, Height, isClip) end

---创建图片控件
---*  Parent ： 父控件对象
---*  ID ： 控件ID
---*  PosX ：控件位置的横坐标
---*  PosY ： 控件位置的纵坐标
---*  nimg ： 图片路径
---@param Parent parent
---@param ID string
---@param PosX int
---@param PosY int
---@param nimg string
---@nodiscard
function GUI:Image_Create( Parent, ID, PosX, PosY, nimg) end

---创建按钮控件
---*  Parent ： 父控件对象
---*  ID ： 控件ID
---*  PosX ：控件位置的横坐标
---*  PosY ： 控件位置的纵坐标
---*  nimg ： 图片路径
---@param Parent parent
---@param ID string
---@param PosX int
---@param PosY int
---@param nimg string
---@nodiscard
function GUI:Button_Create( Parent, ID, PosX, PosY, nimg) end

---创建文本控件
---*  parent ： 父控件对象
---*  ID ： 控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  fontSize ： 字体大小
---*  fontColor ： 	颜色
---*  str ： 文本内容
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param fontSize int
---@param fontColor string
---@param str string
---@nodiscard
function GUI:Text_Create(parent, ID, x, y, fontSize, fontColor, str) end

---创建艺术字控件
---*  parent ： 父控件对象
---*  ID ： 控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  stringValue ： 当前显示数字
---*  charMapFile ： 	艺术字图片路径
---*  Width ： 字符宽
---*  Height ： 字符高
---*  startCharMap ： 首字符
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param stringValue int
---@param charMapFile string
---@param Width int
---@param Height int
---@param startCharMap str
---@nodiscard
function GUI:TextAtlas_Create(parent, ID, x, y, stringValue, charMapFile, Width, Height, startCharMap) end

---创建富文本控件
---*  parent ： 父控件对象
---*  ID ： 控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  str ： 文本内容
---*  width ： 	控件的宽
---*  Size ： 字体大小
---*  Color ： 颜色
---*  vspace ： 间距
---*  hyperlinkCB ： 超链回调
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param str string
---@param width int
---@param Size int
---@param Color int
---@param vspace int
---@param hyperlinkCB strfun
---@nodiscard
function GUI:RichText_Create(parent, ID, x, y, str, width, Size, Color, vspace, hyperlinkCB) end

---创建物品框控件
---*  parent ： 父控件对象
---*  ID ： 控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  itemData ： 道具信息
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param itemData table
---@nodiscard
function GUI:ItemShow_Create(parent, ID, x, y, itemData) end

---创建特效控件
---*  parent ： 父控件对象
---*  ID ： 控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  effecttype ： 特效类型 0:特效、1:NPC、2:怪物、3:技能、4:人物、5:武器、6:翅膀、7:发型
---*  effectid ： 	特效ID
---*  sex ： 性别
---*  act ： 特效动作 0.待机 1.走 2.攻击 3.施法 4.死亡 5.跑步….
---*  dir ： 特效方向 0.上 1.右上 2.右 …
---*  speed ： 播放速度
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param effecttype int
---@param effectid int
---@param sex int
---@param act int
---@param dir int
---@param speed int
---@nodiscard
function GUI:Effect_Create(parent, ID, x, y, effecttype, effectid, sex, act, dir, speed) end

---创建进度条控件
---*  parent ： 父控件对象
---*  ID ： 控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  nimg ： 	图片路径
---*  directtion ： 方向 0:从左到右 1:从右到左
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param nimg string
---@param directtion int
---@nodiscard
function GUI:LoadingBar_Create(parent, ID, x, y, nimg, directtion) end

---创建输入框控件
---*  parent ： 父控件对象
---*  ID ： 控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  width ： 	控件的宽
---*  height ： 控件的高
---*  fontSize ： 字体大小
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param width int
---@param height int
---@param fontSize int
---@nodiscard
function GUI:TextInput_Create(parent, ID, x, y, width, height, fontSize) end

---创建列表容器
---*  parent ： 父控件对象
---*  ID ： 控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  width ： 	控件的宽
---*  height ： 控件的高
---*  direction ： 滑动方向1:垂直2:水平
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param width int
---@param height int
---@param direction int
---@nodiscard
function GUI:ListView_Create(parent, ID, x, y, width, height, direction) end

---创建复选框控件
---*  parent ： 父控件对象
---*  ID ： 控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  nimg ： 	图片背景图片
---*  pimg ： 打勾图片路径
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param nimg string
---@param pimg string
---@nodiscard
function GUI:CheckBox_Create(parent, ID, x, y, nimg, pimg) end

---创建圆形进度条控件
---*  parent ： 父控件对象
---*  ID ： 控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  img ： 	图片路径
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param img string
---@nodiscard
function GUI:ProgressTimer_Create(parent, ID, x, y, img) end

---创建滚动容器
---*  parent ： 父控件对象
---*  ID ： 控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  width ： 	控件的宽
---*  height ： 控件的高
---*  direction ： 滑动方向1:垂直2:水平
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param width int
---@param height int
---@param direction int
---@nodiscard
function GUI:ScrollView_Create(parent, ID, x, y, width, height, direction) end

---创建节点控件
---*  parent ： 父控件对象
---*  ID ： 控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@nodiscard
function GUI:Node_Create(parent, ID, x, y) end

---创建动画控件
---*  parent ： 父控件对象
---*  ID ： 控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  prefix ： 前缀
---*  suffix ： 后缀
---*  beginframe ： 开始帧
---*  finishframe ： 结束帧
---*  ext ： 附加参数 {speed = 播放速度(毫秒),count = 图片数量,loop = 播放次数(-1: 循环),finishhide = 播放结束是否隐藏(1: 隐藏)
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param prefix string
---@param suffix string
---@param beginframe int
---@param finishframe int
---@param ext table
---@nodiscard
function GUI:Frames_Create(parent, ID, x, y, prefix, suffix, beginframe, finishframe, ext) end

---创建快速刷新控件
---*  parent ： 父控件对象
---*  ID ：控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  w ：宽
---*  h ：高
---*  createCB ： 函数
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param w int
---@param h int
---@param createCB strfun
---@nodiscard
function GUI:QuickCell_Create(parent, ID, x, y, w, h, createCB) end

---创建滚动文本控件
---*  parent ： 父控件对象
---*  ID ：控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  width ：滚动的宽度
---*  fontSize ：字体大小
---*  fontColor ： 颜色
---*  str ： 文本内容
---*  time ： 停留时间
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param width int
---@param fontSize int
---@param fontColor string
---@param str string
---@param time int
---@nodiscard
function GUI:ScrollText_Create(parent, ID, x, y, width, fontSize, fontColor, str,time) end

---创建多功能文本控件
---*  parent ： 父控件对象
---*  ID ：控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  str ：文本内容
---*  width ：控件的宽
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param str string
---@param width int
---@nodiscard
function GUI:RichTextCustom_Create(parent, ID, x, y, str, width) end

---创建翻页容器
---*  parent ： 父控件对象
---*  ID ：控件ID
---*  x ：控件位置的横坐标
---*  y ： 控件位置的纵坐标
---*  width ：控件的宽
---*  height ：控件的高
---@param parent parent
---@param ID string
---@param x int
---@param y int
---@param width int
---@param height int
---@nodiscard
function GUI:PageView_Create(parent, ID, x, y, width, height) end

--获取

---获取控件对象
---*  parent ： 父控件对象
---*  ID ：控件ID
---@param parent parent
---@param ID string
---@nodiscard
function GUI:GetWindow(parent, ID) end

---获取控件位置
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getPosition(widget) end

---获取控件锚点
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getAnchorPoint(widget) end

---获取控件大小
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getContentSize(widget) end

---获取控件旋转
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getRotation(widget) end

---获取控件是否显示
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getVisible(widget) end

---获取控件透明度
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getOpacity(widget) end

---获取控件缩放
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getScale(widget) end

---获取控件是否以X轴翻转
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getFlippedX(widget) end

---获取控件是否以Y轴翻转
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getFlippedY(widget) end

---获取控件是否可以点击
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getTouchEnabled(widget) end

---获取父控件对象
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getParent(widget) end

---获取该控件的所有子控件对象
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getChildren(widget) end

---获取文本控件的文本
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:Text_getString(widget) end

---获取进度条控件的进度值
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:LoadingBar_getPercent(widget) end

---获取输入框控件文本
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:TextInput_getString(widget) end

---获取艺术字控件内容
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:TextAtlas_getString(widget) end

---获取列表容器指定子控件位置
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:ListView_getItemIndex(widget) end

---获取复选框是否选中
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:CheckBox_isSelected(widget) end

---获取圆形进度条控件的进度值
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:ProgressTimer_getPercentage(widget) end

---获取左上角节点
function GUI:Attach_LeftTop() end

---获取右上角节点
function GUI:Attach_RightTop() end

---获取左下角节点
function GUI:Attach_LeftBottom() end

---获取右下角节点
function GUI:Attach_RightBottom() end

---获取桌面节点
function GUI:Attach_Parent() end

---获取控件自定义参数
---*  widget ： 父控件对象
---@param widget parent
---@nodiscard
function GUI:Win_GetParam(widget) end

---获取控件id
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getName(widget) end

---获取列表容器控件间距
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:ListView_getItemsMargin(widget) end

---获取列表容器内部滚动区域容器对象
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:ListView_getInnerContainer(widget) end

---获取控件触摸起始位置
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getWorldPosition(widget) end

---获取控件触摸移动位置
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getTouchMovePosition(widget) end

---获取控件触摸终点位置
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:getTouchEndPosition(widget) end

---获取物品框控件中的基础容器对象
---*  parent ： 物品框对象
---@param parent parent
---@nodiscard
function GUI:ItemShow_GetLayoutExtra(parent) end

---获取翻页容器当前页面
---*  parent ： 翻页容器对象
---@param parent parent
---@nodiscard
function GUI:PageView_getCurrentPageIndex(parent) end

---获取滚动文本控件的文本
---*  parent ： 控件对象
---@param parent obj
---@nodiscard
function GUI:ScrollText_getString(widget) end

--设置

---设置控件旋转
---*  widget ： 控件对象
---*  value ： 	旋转角度
---@param widget parent
---@param value int
---@nodiscard
function GUI:setRotation(widget, value) end

---设置控件大小
---*  widget ： 控件对象
---*  size ： 	控件大小
---@param widget parent
---@param size table
---@nodiscard
function GUI:setContentSize(widget, size) end

---设置控件锚点
---*  widget ： 控件对象
---*  x ： 	控件横向锚点
---*  y ： 	控件纵向锚点
---@param widget parent
---@param x int
---@param y int
---@nodiscard
function GUI:setAnchorPoint(widget, x, y) end

---设置控件是否显示
---*  widget ： 控件对象
---*  value ： 	是否显示
---@param widget parent
---@param value bool
---@nodiscard
function GUI:setVisible(widget, value) end

---设置控件透明度
---*  widget ： 控件对象
---*  value ： 	透明度(0-255)
---@param widget parent
---@param value int
---@nodiscard
function GUI:setOpacity(widget, value) end

---设置控件是否以X轴翻转
---*  widget ： 控件对象
---*  value ： 	是否翻转
---@param widget parent
---@param value bool
---@nodiscard
function GUI:setFlippedX(widget, value) end

---设置控件是否以Y轴翻转
---*  widget ： 控件对象
---*  value ： 	是否翻转
---@param widget parent
---@param value bool
---@nodiscard
function GUI:setFlippedY(widget, value) end

---设置控件缩放
---*  widget ： 控件对象
---*  value ： 	缩放比例1为正常比例0.5为缩小一半2为放大一倍
---@param widget parent
---@param value int
---@nodiscard
function GUI:setScale(widget, value) end

---设置控件渲染层级
---*  widget ： 控件对象
---*  value ： 	层级
---@param widget parent
---@param value int
---@nodiscard
function GUI:setLocalZOrder(widget, value) end

---设置容器背景颜色
---*  widget ： 控件对象
---*  value ： 	颜色
---@param widget parent
---@param value string
---@nodiscard
function GUI:Layout_setBackGroundColor(widget, value) end

---设置容器是否有背景颜色
---*  widget ： 控件对象
---*  value ： 	是否有颜色
---@param widget parent
---@param value bool
---@nodiscard
function GUI:Layout_setBackGroundColorType(widget, value) end

---设置容器背景透明度
---*  widget ： 控件对象
---*  value ： 	透明度(0-255)
---@param widget parent
---@param value int
---@nodiscard
function GUI:Layout_setBackGroundColorOpacity(widget, value) end

---设置文本控件的文本颜色
---*  widget ： 控件对象
---*  value ： 	颜色
---@param widget parent
---@param value string
---@nodiscard
function GUI:Text_setTextColor(widget, value) end

---设置文本控件的文本
---*  widget ： 控件对象
---*  value ： 	文本
---@param widget parent
---@param value string
---@nodiscard
function GUI:Text_setString(widget, value) end

---设置控件触摸事件
---*  widget ： 控件对象
---*  value ： 	回调函数
---@param widget parent
---@param value strfun
---@nodiscard
function GUI:addOnTouchEvent(widget, value) end

---设置控件点击事件
---*  widget ： 控件对象
---*  value ： 	回调函数
---@param widget parent
---@param value strfun
---@nodiscard
function GUI:addOnClickEvent(widget, value) end

---设置控件是否可以点击
---*  widget ： 控件对象
---*  value ： 	是否可点击
---@param widget parent
---@param value bool
---@nodiscard
function GUI:setTouchEnabled(widget, value) end

---设置按钮正常状态图片
---*  widget ： 控件对象
---*  filepath ： 	图片路径
---@param widget parent
---@param filepath string
---@nodiscard
function GUI:Button_loadTextureNormal(widget, filepath) end

---设置按钮按下状态图片
---*  widget ： 控件对象
---*  filepath ： 	图片路径
---@param widget parent
---@param filepath string
---@nodiscard
function GUI:Button_loadTexturePressed(widget, filepath) end

---设置按钮禁用状态图片
---*  widget ： 控件对象
---*  filepath ： 	图片路径
---@param widget parent
---@param filepath string
---@nodiscard
function GUI:Button_loadTextureDisabled(widget, filepath) end

---设置按钮是否禁用
---*  widget ： 按钮对象
---*  value ： 	是否禁用
---@param widget parent
---@param value bool
---@nodiscard
function GUI:Button_setBright(widget, value) end

---设置图片控件图片路径
---*  widget ： 控件对象
---*  filepath ： 	图片路径
---@param widget parent
---@param filepath string
---@nodiscard
function GUI:Image_loadTexture(widget, filepath) end

---设置图片控件九宫格参数
---*  widget ： 控件对象
---*  scale9l ： 	左边比例
---*  scale9r ： 	右边比例
---*  scale9t ： 	上边比例
---*  scale9b ： 	下边比例
---@param widget parent
---@param scale9l int
---@param scale9r int
---@param scale9t int
---@param scale9b int
---@nodiscard
function GUI:Image_setScale9Slice(widget, scale9l, scale9r, scale9t, scale9b) end

---设置图片是否变灰
---*  widget ： 按钮对象
---*  isGrey ： 是否变灰
---@param widget parent
---@param isGrey bool
---@nodiscard
function GUI:Image_setGrey( widget, isGrey ) end

---设置文本控件的字体大小
---*  widget ： 父控件对象
---*  value ： 字体大小
---@param widget parent
---@param value int
---@nodiscard
function GUI:Text_setFontSize(widget, value) end

---设置文本控件的文本描边
---*  widget ： 控件对象
---*  color ： 描边颜色
---*  size ： 描边大小
---@param widget parent
---@param color string
---@param size int
---@nodiscard
function GUI:Text_enableOutline(widget, color, size) end

---设置进度条控件图片
---*  widget ： 按钮对象
---*  filepath ： 图片路径
---@param widget parent
---@param filepath string
---@nodiscard
function GUI:LoadingBar_loadTexture(widget, filepath) end

---设置进度条控件方向
---*  widget ： 按钮对象
---*  value ： 方向
---@param widget parent
---@param value int
---@nodiscard
function GUI:LoadingBar_setDirection(widget, value) end

---设置进度条控件进度值
---*  widget ： 按钮对象
---*  value ： 进度值（0-100）
---@param widget parent
---@param value int
---@nodiscard
function GUI:LoadingBar_setPercent(widget, value) end

---设置输入框控件字体大小
---*  widget ： 控件对象
---*  value ： 	字体大小
---@param widget parent
---@param value int
---@nodiscard
function GUI:TextInput_setFontSize(widget, value) end

---设置输入框控件字体颜色
---*  widget ： 控件对象
---*  value ： 	字体颜色
---@param widget parent
---@param value string
---@nodiscard
function GUI:TextInput_setFontColor(widget, value) end

---设置输入框占位文本字体大小
---*  widget ： 控件对象
---*  value ： 	字体大小
---@param widget parent
---@param value int
---@nodiscard
function GUI:TextInput_setPlaceholderFontSize(widget, value) end

---设置输入框占位文本颜色
---*  widget ： 控件对象
---*  value ： 	字体颜色
---@param widget parent
---@param value string
---@nodiscard
function GUI:TextInput_setPlaceholderFontColor(widget, value) end

---设置输入框占位文本
---*  widget ： 控件对象
---*  value ： 	文本
---@param widget parent
---@param value string
---@nodiscard
function GUI:TextInput_setPlaceHolder(widget, value) end

---设置输入框控件输入长度
---*  widget ： 控件对象
---*  value ： 	输入长度
---@param widget parent
---@param value int
---@nodiscard
function GUI:TextInput_setMaxLength(widget, value) end

---设置输入框控件文本
---*  widget ： 控件对象
---*  value ： 	文本
---@param widget parent
---@param value str/int
---@nodiscard
function GUI:TextInput_setString(widget, value) end

---设置输入框文本加密
---*  widget ： 控件对象
---*  value ： 	加密：0
---@param widget parent
---@param value int
---@nodiscard
function GUI:TextInput_setInputFlag(widget, value) end

---设置输入框文本输入类型
---*  widget ： 控件对象
---*  value ： 	类型：0：任何1：邮件2：数字
---@param widget parent
---@param value int
---@nodiscard
function GUI:TextInput_setInputMode(widget, value) end

---设置输入框监听事件
---*  widget ： 控件对象
---*  eventCB ： 事件函数
---@param widget parent
---@param eventCB strfun
---@nodiscard
function GUI:TextInput_addOnEvent(widget, eventCB) end

---设置艺术字控件内容
---*  widget ： 控件对象
---*  value ： 内容
---@param widget parent
---@param value int
---@nodiscard
function GUI:TextAtlas_setString(widget, value) end

---设置列表容器对齐方式
---*  widget ： 控件对象
---*  value ： 对齐方式0:左对齐1:右对齐2:水平居中3:顶对齐4:底对齐5:垂直居中
---@param widget parent
---@param value int
---@nodiscard
function GUI:ListView_setGravity(widget, value) end

---设置列表容器滑动方向
---*  widget ： 控件对象
---*  value ： 滑动方向：1:垂直2:水平
---@param widget parent
---@param value int
---@nodiscard
function GUI:ListView_setDirection(widget, value) end

---设置列表容器控件间隔
---*  widget ： 控件对象
---*  value ： 间隔
---@param widget parent
---@param value int
---@nodiscard
function GUI:ListView_setItemsMargin(widget, value) end

---设置列表容器是否回弹
---*  widget ： 控件对象
---*  value ： 是否回弹
---@param widget parent
---@param value bool
---@nodiscard
function GUI:ListView_setBounceEnabled(widget, value) end

---设置列表容器是否裁剪
---*  widget ： 控件对象
---*  value ： 是否裁剪
---@param widget parent
---@param value bool
---@nodiscard
function GUI:ListView_setClippingEnabled(widget, value) end

---设置列表容器跳转指定子控件位置
---*  widget ： 控件对象
---*  value ： 指定子控件位置
---@param widget parent
---@param value int
---@nodiscard
function GUI:ListView_jumpToItem(widget, value) end

---设置复选框背景图片
---*  widget ： 控件对象
---*  value ： 图片路径
---@param widget parent
---@param value string
---@nodiscard
function GUI:CheckBox_loadTextureBackGround(widget, filepath) end

---设置复选框打勾图片
---*  widget ： 控件对象
---*  filepath ： 图片路径
---@param widget parent
---@param filepath string
---@nodiscard
function GUI:CheckBox_loadTextureFrontCross(widget, filepath) end

---设置复选框是否选中
---*  widget ： 控件对象
---*  value ： 是否选中
---@param widget parent
---@param value bool
---@nodiscard
function GUI:CheckBox_setSelected(widget, value) end

---设置复选框监听事件
---*  widget ： 控件对象
---*  eventCB ： 事件函数
---@param widget parent
---@param eventCB strfun
---@nodiscard
function GUI:CheckBox_addOnEvent(widget, eventCB) end

---设置特效播放
---*  widget ： 控件对象
---*  act ： 特效动作 0.待机 1.走 2.攻击 3.施法 4.死亡 5.跑步….
---*  dir ： 特效方向 0.上 1.右上 2.右 …
---*  isLoop ： 是否循环
---*  speed ： 播放速度
---*  isSequence ： 是否暂停最后一帧
---@param widget parent
---@param act int
---@param dir int
---@param isLoop bool
---@param speed int
---@param isSequence int
---@nodiscard
function GUI:Effect_play(widget, act, dir, isLoop, speed, isSequence) end

---设置特效停止
---*  widget ： 控件对象
---*  frameIndex ： 停在第几帧
---*  act ： 特效动作 0.待机 1.走 2.攻击 3.施法 4.死亡 5.跑步….
---*  dir ： 特效方向 0.上 1.右上 2.右 …
---@param widget parent
---@param frameIndex int
---@param act int
---@param dir int
---@nodiscard
function GUI:Effect_stop(widget, frameIndex, act, dir) end

---设置特效播放完成事件
---*  widget ： 控件对象
---*  value ： 回调函数
---@param widget parent
---@param value strfun
---@nodiscard
function GUI:Effect_addOnCompleteEvent(widget, value) end

---设置圆形进度条控件进度值
---*  widget ： 按钮对象
---*  value ： 进度值（0-100）
---@param widget parent
---@param value int
---@nodiscard
function GUI:ProgressTimer_setPercentage(widget, value) end

---设置圆形进度条动作与回调
---*  widget ： 控件对象
---*  time ： 时间
---*  from ： 开始进度
---*  to ： 结算进度
---*  completeCB ： 回调函数
---@param widget parent
---@param time int
---@param from int
---@param to int
---@param completeCB strfun
---@nodiscard
function GUI:ProgressTimer_progressFromTo(widget, time, from, to, completeCB) end

---设置物品框是否变灰
---*  widget ： 按钮对象
---*  isGrey ： 是否变灰
---@param widget parent
---@param isGrey bool
---@nodiscard
function GUI:ItemShow_setIconGrey( widget, isGrey) end

---设置滚动控件滚动区域大小
---*  widget ： 控件对象
---*  value ： 区域大小
---@param widget parent
---@param value table
---@nodiscard
function GUI:ScrollView_setInnerContainerSize(widget, value) end

---设置滚动容器滚动方向
---*  widget ： 控件对象
---*  value ： 滑动方向：1:垂直2:水平
---@param widget parent
---@param value int
---@nodiscard
function GUI:ScrollView_setDirection(widget, value) end

---设置滚动容器是否回弹
---*  widget ： 控件对象
---*  value ： 	是否回弹
---@param widget parent
---@param value bool
---@nodiscard
function GUI:ScrollView_setBounceEnabled(widget, value) end

---设置滚动容器是否裁剪
---*  widget ： 控件对象
---*  value ： 	是否裁剪
---@param widget parent
---@param value bool
---@nodiscard
function GUI:ScrollView_setClippingEnabled(widget, value) end

---设置滚动容器滚动到顶部
---*  widget ： 控件对象
---*  time ： 	时间
---*  boolvalue ： 	速度类型：true：衰减false：匀速
---@param widget parent
---@param time int
---@param boolvalue bool
---@nodiscard
function GUI:ScrollView_scrollToTop(widget, time, boolvalue) end

---设置滚动容器滚动到低部
---*  widget ： 控件对象
---*  time ： 时间
---*  boolvalue ： 速度类型：true：衰减false：匀速
---@param widget parent
---@param time int
---@param boolvalue bool
---@nodiscard
function GUI:ScrollView_scrollToBottom(widget, time, boolvalue) end

---设置滚动容器滚动到右部
---*  widget ： 控件对象
---*  time ： 时间
---*  boolvalue ： 速度类型：true：衰减false：匀速
---@param widget parent
---@param time int
---@param boolvalue bool
---@nodiscard
function GUI:ScrollView_scrollToRight(widget, time, boolvalue) end

---设置滚动容器滚动到左部
---*  widget ： 控件对象
---*  time ： 时间
---*  boolvalue ： 速度类型：true：衰减false：匀速
---@param widget parent
---@param time int
---@param boolvalue bool
---@nodiscard
function GUI:ScrollView_scrollToTopLeft(widget, time, boolvalue) end

---设置控件自定义参数
---*  widget ： 控件对象
---*  param ： 	自定义参数
---@param widget parent
---@param param int
---@nodiscard
function GUI:Win_SetParam(widget, param) end

---设置按钮控件的文本
---*  widget ： 控件对象
---*  value ： 	文本
---@param widget parent
---@param value string
---@nodiscard
function GUI:Button_setTitleText(widget, value) end

---设置控件位置
---*  widget ： 控件对象
---*  x ： 	控件x坐标
---*  y ： 	控件y坐标
---@param widget parent
---@param x int
---@param y int
---@nodiscard
function GUI:setPosition( widget, x, y) end

---设置按钮是否禁用拓展
---*  widget ： 按钮对象
---*  value ： 	是否禁用
---@param widget parent
---@param value bool
---@nodiscard
function GUI:Button_setBrightEx(widget, value) end

---设置界面拖动
---*  widget ： 父控件对象
---*  dragLayer ： 点击控件对象
---@param widget parent
---@param dragLayer parent
---@nodiscard
function GUI:Win_SetDrag(widget, dragLayer) end

---设置子控件是否跟随父控件变化
---*  widget ： 父控件对象
---*  bool ： 是否变化
---@param widget parent
---@param bool bool
---@nodiscard
function GUI:setCascadeOpacityEnabled(widget, bool) end

---设置列表容器监听事件
---*  widget ： 控件对象
---*  eventCB ： 事件函数
---@param widget parent
---@param eventCB strfun
---@nodiscard
function GUI:ListView_addOnScrollEvent(widget, eventCB) end

---设置滚动容器监听事件
---*  widget ： 控件对象
---*  eventCB ： 事件函数
---@param widget parent
---@param eventCB strfun
---@nodiscard
function GUI:ScrollView_addOnScrollEvent(widget, eventCB) end

---设置物品框点击事件
---*  widget ： 控件对象
---*  eventCB ： 事件函数
---@param widget parent
---@param eventCB strfun
---@nodiscard
function GUI:ItemShow_addReplaceClickEvent(widget, eventCB) end

---设置物品框长按事件
---*  widget ： 控件对象
---*  eventCB ： 事件函数
---@param widget parent
---@param eventCB strfun
---@nodiscard
function GUI:ItemShow_addPressEvent(widget, eventCB) end

---设置物品框双击事件
---*  widget ： 控件对象
---*  eventCB ： 事件函数
---@param widget parent
---@param eventCB strfun
---@nodiscard
function GUI:ItemShow_addDoubleEvent(widget, eventCB) end

---设置文本下划线
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:Text_enableUnderline(widget) end

---设置文本最大长度
---*  widget ： 控件对象
---*  width ： 文本最大长度(达到最大会自动换行)
---@param widget parent
---@param width int
---@nodiscard
function GUI:Text_setMaxLineWidth(widget, width) end

---设置子控件是否跟随父控件变化(递归)
---*  widget ： 控件对象
---*  bool ： 是否变化 
---@param widget parent
---@param bool bool
---@nodiscard
function GUI:setChildrenCascadeOpacityEnabled(widget, bool) end

---设置容器是否裁剪
---*  widget ： 控件对象
---*  value ： 	是否裁剪 
---@param widget parent
---@param value bool
---@nodiscard
function GUI:Layout_setClippingEnabled(widget, value) end

---设置主界面隐藏
---*  widget ： 界面父节点
---*  value ： 	是否隐藏主界面 
---@param widget parent
---@param value boolean
---@nodiscard
function GUI:Win_SetMainHide(widget, value) end

---设置按钮控件九宫格参数
---*  widget ： 控件对象
---*  scale9l ： 	左边比例
---*  scale9r ： 	右边比例
---*  scale9t ： 	上边比例
---*  scale9b ： 	下边比例
---@param widget parent
---@param scale9l int
---@param scale9r int
---@param scale9t int
---@param scale9b int
---@nodiscard
function GUI:Button_setScale9Slice(widget, scale9l, scale9r, scale9t, scale9b) end

---设置按钮上字体的颜色
---*  widget ： 按钮对象
---*  value ： 	颜色 
---@param widget obj
---@param value string
---@nodiscard
function GUI:Button_setTitleColor(widget, value) end

---设置按钮上字体的大小
---*  widget ： 按钮对象
---*  value ： 	字号 
---@param widget obj
---@param value int
---@nodiscard
function GUI:Button_setTitleFontSize(widget, value) end

---设置按钮上字体的样式
---*  widget ： 按钮对象
---*  value ： 	字体样式 
---@param widget obj
---@param value string
---@nodiscard
function GUI:Button_setTitleFontName(widget, value) end

---设置按钮上字体的宽度
---*  widget ： 按钮对象
---*  value ： 	字体宽度 
---@param widget obj
---@param value px像素
---@nodiscard
function GUI:Button_setMaxLineWidth(widget, value) end

---设置按钮上字体的描边
---*  widget ： 按钮对象
---*  color ： 	描边颜色 
---*  value ： 	描边宽度 
---@param widget obj
---@param color string
---@param value int
---@nodiscard
function GUI:Button_titleEnableOutline(widget, color, value) end

---设置按钮是否变灰
---*  widget ： 按钮对象
---*  isGrey ： 是否变灰 
---@param widget parent
---@param isGrey bool
---@nodiscard
function GUI:Button_setGrey( widget, isGrey ) end

---设置文本控件的字体样式
---*  widget ： 父控件对象
---*  value ： 	字体样式 
---@param widget parent
---@param value string
---@nodiscard
function GUI:Text_setFontName(widget, value) end

---设置控件长按事件
---*  widget ： 控件对象
---*  value ： 回调函数 
---@param widget parent
---@param value strfun
---@nodiscard
function GUI:addOnLongTouchEvent(widget, value) end

---设置圆形进度条控件进方向
---*  widget ： 控件对象
---*  value ： true：顺时针 false:逆时针 
---@param widget parent
---@param value bool
---@nodiscard
function GUI:ProgressTimer_setReverseDirection(widget, value) end

---设置滚动文本控件的文本
---*  widget ： 控件对象
---*  value ： 文本 
---@param widget obj
---@param value string
---@nodiscard
function GUI:ScrollText_setString(widget, value) end

---设置滚动文本水平居中方式
---*  widget ： 控件对象
---*  value ： 	1：左对齐2：居中3：右对齐 
---@param widget obj
---@param value int
---@nodiscard
function GUI:ScrollText_setHorizontalAlignment(widget, value) end

---设置滚动文本字体颜色
---*  widget ： 控件对象
---*  value ： 	字体文本 
---@param widget obj
---@param value string
---@nodiscard
function GUI:ScrollText_setTextColor(widget, value) end

---设置进度条控件颜色
---*  widget ： 进度条对象
---*  value ： 	颜色文本 
---@param widget obj
---@param value string
---@nodiscard
function GUI:LoadingBar_setColor(widget, value) end

---设置翻页容器翻页
---*  widget ： 进度条对象
---*  index ： 	页面 
---@param widget obj
---@param index int
---@nodiscard
function GUI:PageView_scrollToItem(widget, index) end

---添加翻页容器页面
---*  widget ： 进度条对象
---*  index ： 	页面 
---@param widget obj
---@param index int
---@nodiscard
function GUI:PageView_addPage(widget, value) end

---设置翻页容器监听事件
---*  widget ： 进度条对象
---*  eventCB ： 回调函数 
---@param widget obj
---@param eventCB int
---@nodiscard
function GUI:PageView_addOnEvent(widget, eventCB) end

--操作

---打开面板
---*  filename ： 面板文件名
---@param filename 	string
---@nodiscard
function GUI:Win_Open(filename) end

---关闭面板
---*  parent ： 控件对象
---@param parent string
---@nodiscard
function GUI:Win_Close(parent) end

---移除其下所有子控件
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:removeAllChildren(widget) end

---将控件从父控件移除
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:removeFromParent(widget) end

---单独解析form标签文件
---*  widget ： 父控件对象
---*  filename ： from标签文件名
---@param widget parent
---@param filename 	string
---@nodiscard
function GUI:Win_AddFile(parent, filename) end

---设置打开面板特效(小-大)1
---*  widget ： 父控件对象
---@param widget parent
---@nodiscard
function GUI:Timeline_Window1(widget) end

---设置打开面板特效(小-大)2
---*  widget ： 父控件对象
---@param widget parent
---@nodiscard
function GUI:Timeline_Window2(widget) end

---设置打开面板特效(小-大)3
---*  widget ： 父控件对象
---@param widget parent
---@nodiscard
function GUI:Timeline_Window3(widget) end

---设置打开面板特效(大-小)4
---*  widget ： 父控件对象
---@param widget parent
---@nodiscard
function GUI:Timeline_Window4(widget) end

---设置打开面板特效(大-小)5
---*  widget ： 父控件对象
---@param widget parent
---@nodiscard
function GUI:Timeline_Window5(widget) end

---设置打开面板特效(大-小)6
---*  widget ： 父控件对象
---@param widget parent
---@nodiscard
function GUI:Timeline_Window6(widget) end

---设置控件渐隐
---*  widget ： 控件对象
---*  time ： 过程耗时
---*  timelineCB ： 完成时触发函数
---@param widget parent
---@param time 	int
---@param timelineCB strfun
---@nodiscard
function GUI:Timeline_FadeOut(widget, time, timelineCB) end

---设置控件渐现
---*  widget ： 控件对象
---*  time ： 过程耗时
---*  timelineCB ： 完成时触发函数
---@param widget parent
---@param time 	int
---@param timelineCB strfun
---@nodiscard
function GUI:Timeline_FadeIn(widget, time, timelineCB) end

---设置控件渐变至一个值
---*  widget ： 控件对象
---*  value ： 透明度
---*  time ： 过程耗时
---*  timelineCB ： 完成时触发函数
---@param widget parent
---@param value int
---@param time 	int
---@param timelineCB strfun
---@nodiscard
function GUI:Timeline_FadeTo(widget, value, time, timelineCB) end

---设置控件缩放至一个值
---*  widget ： 控件对象
---*  value ： 缩放值
---*  time ： 过程耗时
---*  timelineCB ： 完成时触发函数
---@param widget parent
---@param value int
---@param time 	int
---@param timelineCB strfun
---@nodiscard
function GUI:Timeline_ScaleTo(widget, value, time, timelineCB) end

---设置控件旋转至一个值
---*  widget ： 控件对象
---*  value ： 旋转角度
---*  time ： 过程耗时
---*  timelineCB ： 完成时触发函数
---@param widget parent
---@param value int
---@param time 	int
---@param timelineCB strfun
---@nodiscard
function GUI:Timeline_RotateTo(widget, value, time, timelineCB) end

---设置控件移动至一个值
---*  widget ： 控件对象
---*  value ： 移动坐标{x=int,y=int}
---*  time ： 动画时间
---*  timelineCB ： 完成时触发函数
---@param widget parent
---@param value table
---@param time int
---@param timelineCB strfun
---@nodiscard
function GUI:Timeline_MoveTo(widget, value, time, timelineCB) end

---设置为控件开启单次定时器
---*  widget ： 控件对象
---*  time ： 时间
---*  timelineCB ： 完成时触发函数
---@param widget parent
---@param time 	int
---@param timelineCB strfun
---@nodiscard
function GUI:Timeline_DelayTime(widget, time, timelineCB) end

---将文本控件设置为倒计时
---*  widget ： 控件对象
---*  time ： 	倒计时时间
---*  timeCB ： 每秒触发函数
---@param widget parent
---@param time 	int
---@param timeCB strfun
---@nodiscard
function GUI:Text_COUNTDOWN(widget, time, timeCB) end

---自适应布局
---*  pNode ： 控件对象
---*  param ： 	布局参数
---@param pNode parent
---@param param table
---@nodiscard
function GUI:UserUILayout(pNode, param) end

---设置控件闪烁
---*  widget ： 控件对象
---*  value ： 闪烁次数
---*  time ： 动画时间
---*  timelineCB ： 完成时触发函数
---@param widget parent
---@param value int
---@param time int
---@param timelineCB strfun
---@nodiscard
function GUI:Timeline_Blink(widget, value, time, timelineCB) end

---设置控件缩放动画
---*  widget ： 控件对象
---*  value ： 缩放大小
---*  time ： 动画时间
---*  timelineCB ： 完成时触发函数
---@param widget parent
---@param value float
---@param time int
---@param timelineCB strfun
---@nodiscard
function GUI:Timeline_ScaleBy(widget, value, time, timelineCB) end

---设置控件旋转动画
---*  widget ： 控件对象
---*  value ： 旋转角度
---*  time ： 动画时间
---*  timelineCB ： 完成时触发函数
---@param widget parent
---@param value float
---@param time int
---@param timelineCB strfun
---@nodiscard
function GUI:Timeline_RotateBy(widget, value, time, timelineCB) end

---设置控件移动动画
---*  widget ： 控件对象
---*  value ： 移动坐标{x=int,y=int}
---*  time ： 动画时间
---*  timelineCB ： 完成时触发函数
---@param widget parent
---@param value table
---@param time int
---@param timelineCB strfun
---@nodiscard
function GUI:Timeline_MoveBy(widget, value, time, timelineCB) end

---控件延时回调
---*  widget ： 控件对象
---*  time ： 	动画时间
---*  timeCB ： 完成时触发函数
---@param widget parent
---@param time 	int
---@param timeCB strfun
---@nodiscard
function GUI:Timeline_CallFunc(widget, value, time, timelineCB) end

---控件延时显示
---*  widget ： 控件对象
---*  time ： 	动画时间
---@param widget parent
---@param time 	int
---@nodiscard
function GUI:Timeline_Show(widget, time) end

---控件延时隐藏
---*  widget ： 控件对象
---*  time ： 	动画时间
---@param widget parent
---@param time 	int
---@nodiscard
function GUI:Timeline_Hide(widget, time) end

---设置控件抖动
---*  widget ： 控件对象
---*  value1 ： X轴抖动幅度
---*  value2 ： Y轴抖动幅度
---*  time ： 	动画时间
---*  timeCB ： 完成时触发函数
---@param widget parent
---@param value1 int
---@param value2 int
---@param time 	int
---@param timeCB strfun
---@nodiscard
function GUI:Timeline_Shake(widget, value1, value2, time, timelineCB) end

---设置进度条控件的变化动画
---*  widget ： 容器对象
---*  widgetBg ： 进度条对象
---*  data ： count 重置次数; to: 目标进度值; step: 动画步长 ;interval: 增长的速度， 默认0.01 ;colors: 血条颜色变化顺序;callback: 回调函数
---@param widget parent
---@param widgetBg parent
---@param data table
---@nodiscard
function GUI:Timeline_Progress(widget, widgetBg, data) end

---加载 GUIExport文件
---*  widget ： 控件对象
---*  filename ： GUIExport路径下文件名
---@param widget parent
---@param filename string
---@nodiscard
function GUI:LoadExport(widget,filename) end

---显示容器控件位置
---*  widget ： 控件对象
---@param widget parent
---@nodiscard
function GUI:Layout_debug(widget) end

---设置鼠标经过tips
---*  widget ： 控件对象
---*  str ： tips文本
---*  pos ： 位置
---*  anr ： 锚点
---@param widget parent
---@param str str
---@param pos table
---@param anr table
---@nodiscard
function GUI:addMouseOverTips(widget,str,pos,anr) end

---设置点击吞噬
---*  widget ： 控件对象
---*  value ： 是否吞噬
---@param widget obj
---@param value bool
---@nodiscard
function GUI:setSwallowTouches(widget, value) end

---获取点击吞噬
---*  widget ： 控件对象
---@param widget obj
---@nodiscard
function GUI:getSwallowTouches(widget) end

---设置控件鼠标样式
---*  widget ： 控件对象
---*  styleType ： 鼠标样式
---@param widget parent
---@param styleType int
---@nodiscard
function GUI:addMouseStyle(widget, styleType) end

---设置控件绑定npc
---*  widget ： 控件对象
---*  npcID ： npcid
---@param widget int
---@param npcID int
---@nodiscard
function GUI:Win_BindNPC(widget, npcID) end

---创建一个角色静态模型
---*  _parent ： 父控件对象
---*  _ID ： 控件ID
---*  _PosX ： 控件位置的横坐标
---*  _PosY ： 控件位置的纵坐标
---*  sex ： 性别
---*  feature ： 特征 table值 为{}时为裸模
---*  scale ： 模型缩放比例
---@param _parent parent
---@param _ID string
---@param _PosX int
---@param _PosY int
---@param sex int
---@param feature table
---@param scale bool
---@nodiscard
function GUI:UIModel_Create( _parent, _ID, _PosX, _PosY, sex, feature, scale ) end



return GUI