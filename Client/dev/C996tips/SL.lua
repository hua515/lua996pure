SL = {}


---打印信息到控制台
---*  ... ： 字符
---@param ... str
---@nodiscard
function SL:Print(...) end

---打印表格到控制台
---*  ... ： 表
---@param ... table
---@nodiscard
function SL:Dump(...) end

---json字符串解密
---*  jsonStr ： json字符
---@param jsonStr str
---@nodiscard
function SL:JsonDecode(jsonStr) end

---json字符串加密
---*  jsonData ： json字符
---@param jsonStr str
---@nodiscard
function SL:JsonEncode(jsonData) end

---向服务器发送一个表单
---*  filename ： 文件名
---*  funcName ： 函数名
---*  param ： 参数
---@param filename str
---@param funcName str
---@param param str
---@nodiscard
function SL:SubmitForm(filename, funcName, param) end

---注册游戏事件回调
---*  eventID ： 事件ID
---*  eventTag ： 事件描述
---*  eventCB ： 回调函数
---@param eventID str
---@param eventTag str
---@param eventCB function
---@nodiscard
function SL:RegisterLUAEvent(eventID, eventTag, eventCB) end

---注销游戏事件回调
---*  eventID ： 事件ID
---*  eventTag ： 事件描述
---@param eventID str
---@param eventTag str
---@nodiscard
function SL:UnRegisterLUAEvent(eventID, eventTag) end

---获得服务器时间
---@nodiscard
function SL:GetCurServerTime() end

---开启一个定时器
---*  callback ： 函数回调
---*  interval ： 时间
---@param callback function
---@param interval int
---@nodiscard
function SL:Schedule(callback, interval) end

---停止一个定时器
---*  scheduleID ： 定时器ID
---@param scheduleID int
---@nodiscard
function SL:UnSchedule(scheduleID) end

---发送提示信息
---*  str ： 字符串
---@param str str
---@nodiscard
function SL:ShowSystemTips(str) end

---小退
---@nodiscard
function SL:OnExitToRoleUI() end

---大退
---@nodiscard
function SL:OnExitToLoginUI() end

---获取电池容量
---@nodiscard
function SL:GetBatteryPer() end

---获取网络类型
---@nodiscard
function SL:GetNetType() end

---获取当前平台
---@nodiscard
function SL:GetPlatform() end

---发送到系统聊天框
---*  str ： 文本内容
---@param str str
---@nodiscard
function SL:ShowSystemChat(str) end

---存储数据到本地，存储的文件名为：”GUIStorage”+玩家ID
---*  key ： 字段名
---*  data ： 数据
---@param key any
---@param data table|int|string
---@nodiscard
function SL:SetLocalString(key, data) end

---本地取数据
---*  key ： 存储时的字段
---@param key any
---@nodiscard
function SL:GetLocalString(key) end

---加载文件
---*  file ： 文件名
---@param file str
---@param famlilar bool
---@nodiscard
function SL:Require(file,famlilar) end
---MD5加密
---*  str ： 字符
---@param str str
---@nodiscard
function SL:GetStrMD5(str) end

---获取登录角色信息
---@nodiscard
function SL:GetLoginData() end

---请求HTTPGet
---*  url ： 链接地址
---*  httpCB ： 回调函数
---@param url str
---@param httpCB function
---@nodiscard
function SL:HTTPRequestGet(url,httpCB) end

---请求HTTPPost
---*  url ： 链接地址
---*  httpCB ： 回调函数
---*  suffix ： 请求信息
---*  head ： 请求头
---@param url str
---@param httpCB function
---@param suffix str
---@param head table
---@nodiscard
function SL:HTTPRequestPost(url,httpCB,suffix,head) end

---整理背包
---@nodiscard
function SL:ResetBagPos() end

---获取屏幕大小
---@nodiscard
function SL:GetScreenSize() end

---打开设置界面
---@nodiscard
function SL:OpenSettingUI() end

---关闭设置界面
---@nodiscard
function SL:CloseSettingUI() end

---打开行会指定页签界面
---*  page ： 行会界面(不填默认行会主界面)
---@param page int
---@nodiscard
function SL:OpenGuildMainUI(page) end

---关闭行会界面
---@nodiscard
function SL:CloseGuildMainUI() end

---打开行会申请界面
---@nodiscard
function SL:OpenGuildApplyListUI() end

---关闭行会申请界面
---@nodiscard
function SL:CloseGuildApplyListUI() end

---打开行会创建界面
---@nodiscard
function SL:OpenGuildCreateUI() end

---关闭行会创建界面
---@nodiscard
function SL:CloseGuildCreateUI() end

---打开行会申请界面
---@nodiscard
function SL:OpenGuildAllyApplyUI() end

---关闭行会申请界面
---@nodiscard
function SL:CloseGuildAllyApplyUI() end

---打开角色界面
---@nodiscard
function SL:OpenMyPlayerUI() end

---打开英雄界面
---@nodiscard
function SL:OpenMyPlayerHeroUI() end

---打开其他人角色界面
---@nodiscard
function SL:OpenOtherPlayerUI() end

---打开其他人英雄界面
---@nodiscard
function SL:OpenOtherPlayerHeroUI() end

---打开背包界面
---@nodiscard
function SL:OpenBagUI() end

---打开英雄背包界面
---@nodiscard
function SL:OpenHeroBagUI() end

---打开拍卖行
---@nodiscard
function SL:OpenAuctionUI() end

---打开摆摊界面
---@nodiscard
function SL:OpenAutoTradeUI() end

---打开排行榜
---@nodiscard
function SL:OpenRankUI() end

---打开聊天
---@nodiscard
function SL:OpenChatUI() end

---打开交易行
---@nodiscard
function SL:OpenTradingBankUI() end

---打开商城
---*  int ： 默认1 1：商城：灵符 2：商城：元宝 3：商城：技能 4：商城：货币 5：商城：充值
---@param int int
---@nodiscard
function SL:OpenStoreUI(int) end

---打开技能配置界面
---@nodiscard
function SL:OpenSkillSettingUI() end

---打开仓库界面
---@nodiscard
function SL:OpenStorageUI() end

---通用弹窗
---*  data ： 弹窗参数
---@param data table
---@nodiscard
function SL:OpenCommonTipsPop(data) end

---通用tips弹窗
---*  data ： 弹窗参数
---@param data table
---@nodiscard
function SL:OpenCommonDescTipsPop(data) end

---打开社交界面
---@nodiscard
function SL:OpenSocialUI() end

---打开充值面板
---*  channel ： 支付方式(微信/支付宝)
---*  currencyID ： 货币ID
---*  price ： 支付金额
---*  productIndex ： 商品索引/商品ID
---@param channel int
---@param currencyID int
---@param price int
---@param productIndex int
---@nodiscard
function SL:RequestPay(channel, currencyID, price, productIndex) end

---打开引导
---*  data ： 引导数据（参考示例）
---@param data table
---@nodiscard
function SL:StartGuide(data) end

---关闭引导
---@nodiscard
function SL:CloseGuide() end

---是否处于引导
---@nodiscard
function SL:IsActiveGuide() end

---是否处于强制引导
---@nodiscard
function SL:IsForceGuide() end

---打开分辨率修改界面
---@nodiscard
function SL:OpenResolutionSetUI() end

---关闭分辨率修改界面
---@nodiscard
function SL:CloseResolutionSetUI() end

---获取角色基础属性
---@nodiscard
function SL:GetRoleData() end

---获取角色行会信息
---@nodiscard
function SL:GetGuildData() end

---是否加入行会
---@nodiscard
function SL:IsJoinGuild() end

---根据道具ID获取道具信息
---*  index ： 道具ID
---@param index int
---@nodiscard
function SL:GetItemDataByIndex(index) end

---根据道具索引名获取道具信息
---*  keyname ： 道具索引名
---@param keyname str
---@nodiscard
function SL:GetItemDataByKeyName(keyname) end

---根据道具ID获取背包物品数量
---*  index ： 道具ID
---*  famlilar ： 是否绑定
---@param index int
---@param famlilar bool
---@nodiscard
function SL:GetItemNumberByIndex(index, famlilar) end

---根据道具ID获取道具名
---*  index ： 道具名字
---@param index int
---@nodiscard
function SL:GetItemNameByIndex(index) end

---根据道具索引名获取道具数量
---*  keyname ： 道具索引名
---*  param ： 是否绑定
---@param keyname str
---@param param bool
---@nodiscard
function SL:GetItemNumberByKeyName(keyname, param) end

---发送GM命令
---*  msg ： gm命令
---@param msg str
---@nodiscard
function SL:SendGMMsgToChat(msg) end

---设置音效
---*  ID ： 音效id
---@param ID int
---@nodiscard
function SL:SetAudioByID(ID) end

---获取已请求服务端物品所有自定义变量
---*  key ： 物品：makeindex
---@param key int
---@nodiscard
function SL:GetSerCustomVar(key) end

---获取角色常量(属性)
---*  var ： 常量名
---@param var str
---@nodiscard
function SL:GetMetaValue(var) end

---获取buff数据
---*  targetID ： UserID
---@param targetID int
---@nodiscard
function SL:GetBuffData(targetID) end

---是否自动战斗
---@nodiscard
function SL:IsAFK() end

---开启自动战斗
---@nodiscard
function SL:AFKBegin() end

---关闭自动战斗
---@nodiscard
function SL:AFKEnd() end

---是否在自动寻路
---@nodiscard
function SL:IsAutoMove() end

---开启自动寻路
---*  mapID ： 地图id
---*  mapX ： x坐标
---*  mapY ： y坐标
---@param mapID int
---@param mapX int
---@param mapY int
---@nodiscard
function SL:AutoMoveBegin(mapID, mapX, mapY) end

---关闭自动寻路
---@nodiscard
function SL:AutoMoveEnd() end

---是否自动拾取（人物）
---@nodiscard
function SL:IsAutoPick() end

---开启自动拾取（人物）
---@nodiscard
function SL:AutoPickBegin() end

---关闭自动拾取（人物）
---@nodiscard
function SL:AutoPickEnd() end

---根据装备位获取装备数据
---*  pos ： 装备位
---@param pos int
---@nodiscard
function SL:GetEquipDataByPos(pos) end

---根据装备位获取英雄装备数据
---*  pos ： 装备位
---@param pos int
---@nodiscard
function SL:GetHeroEquipDataByPos(pos) end

---根据装备StdMode获取装备位置
---*  stdMode ： 装备类型
---@param stdMode int
---@nodiscard
function SL:GetEquipPosByStdMode(stdMode) end

---获取服务器定义的开关
---*  ID ： 自定义ID
---@param ID int
---@nodiscard
function SL:GetServerOption(ID) end

---获取F12设置状态
---*  ID ： 设置ID
---@param ID int
---@nodiscard
function SL:CheckSet(ID) end

---设置F12设置状态
---*  ID ： 设置的唯一ID
---*  values ： {default, default1, defaul2} 配置中字段的值
---@param ID int
---@param values table
---@nodiscard
function SL:SetSettingValue(ID, values) end

---获取设置数据
---*  ID ： 索引
---@param ID int
---@nodiscard
function SL:GetSettingValue(ID) end

---重新加载地图
---@nodiscard
function SL:ReloadMap() end

---请求改变宠物战斗模式
---*  pkmode ： 模式
---@param pkmode int
---@nodiscard
function SL:RequestChangePetPKMode(pkmode) end

---获取 cfg_colour_style 配置
---*  ID ： cfg_colour_style 表id
---@param ID int
---@nodiscard
function SL:GetColorCfg(ID) end

---获取装备套装数据
---*  ID ： 对应 cfg_equip 中 Suit 字段
---@param ID int
---@nodiscard
function SL:GetSuitDataById(ID) end

---根据 MakeIndex 获取数据
---*  MakeIndex ： 索引
---@param MakeIndex int
---@nodiscard
function SL:GetItemDataByMakeIndex(MakeIndex) end

---根据穿戴位置查看玩家装备信息
---*  pos ： 装备位置
---@param pos int
---@nodiscard
function SL:GetLookPlayerItemDataByPos(pos) end

---道具使用
---*  itemData ： 道具数据
---@param itemData int
---@nodiscard
function SL:UseItem(itemData) end

---判断背包是否满了
---*  isTips ： 是否弹出tips说明
---@param isTips bool
---@nodiscard
function SL:IsBagFull(isTips) end

---获取 game_data 配置
---@nodiscard
function SL:GetGamaDataCfg() end

---分割字符串
---*  str ： 目标字符串
---*  delimiter ： 分隔符
---@param str str
---@param delimiter str
---@nodiscard
function SL:Split(str, delimiter) end

---复制数据(深拷贝)
---*  data ： 目标数据
---@param data str
---@nodiscard
function SL:CopyData(data) end

---文件路径是否存在
---*  path ： 文件路径
---@param path str
---@nodiscard
function SL:IsFileExist(path) end

---检测人物是否可使用
---*  itemData ： 装备数据
---@param itemData str
---@nodiscard
function SL:CheckItemUseNeed(itemData) end

---检测英雄是否可使用
---*  itemData ： 装备数据
---@param itemData str
---@nodiscard
function SL:CheckItemUseNeed_Hero(itemData) end

---根据属性 ID 获取属性配置
---*  attID ： 属性id(cfg_att_score)
---@param attID str
---@nodiscard
function SL:GetAttConfigByAttId(attID) end

---请求改变PK模式
---*  pkmode ： 模式
---@param pkmode str
---@nodiscard
function SL:RequestChangePKMode(pkmode) end

---兑换激活码
---*  cdk ： 激活码
---@param cdk str
---@nodiscard
function SL:CheckCDK(cdk) end

---获取游戏道具所有来源渠道
---@nodiscard
function SL:GetItemForm() end

---获取游戏道具所有类型渠道
---@nodiscard
function SL:GetItemType() end

---根据英雄装备StdMode获取装备
---*  stdMode ： 装备类型
---@param stdMode int
---@nodiscard
function SL:GetHeroEquipPosByStdMode(stdMode) end

---根据装备或者装备 StdMode 获取装备位置列表
---*  param ： itemData或者StdMode
---@param param int
---@nodiscard
function SL:GetEquipPosByStdModeList(param) end

---根据英雄装备或者 StdMode 获取英雄装备位置列表
---*  param ： itemData或者StdMode
---@param param int
---@nodiscard
function SL:GetHeroEquipPosByStdModeList(param) end

---根据itemData获取道具类型
---*  itemData ： 道具信息
---@param itemData table
---@nodiscard
function SL:GetItemTypeByData(itemData) end

---获取背包数据
---@nodiscard
function SL:GetBagData() end

---获取指定页签下背包的数据
---*  page ： 要转换的表格
---@param page int
---@nodiscard
function SL:GetBagDataByPage(page) end

---聊天消息类型枚举
---@nodiscard
function SL:ChatChannel() end

---设置聊天频道是否接收消息
---*  channel ： 聊天枚举
---@param channel int
---@nodiscard
function SL:SetChatChannelReceiving(channel) end

---设置当前聊天频道
---*  channel ： 聊天枚举
---@param channel int
---@nodiscard
function SL:SetChatChannel(channel) end

---获取当前聊天频道
---@nodiscard
function SL:SetChatChannel() end

---获取当前版本号
---@nodiscard
function SL:GetGameVersion() end

---获取游戏ID
---@nodiscard
function SL:GetGameID() end

---获取玩家UID
---@nodiscard
function SL:GetGameUserUID() end

---获取Channel ID
---@nodiscard
function SL:GetGameChannelID() end

---获取当前主服务器ID
---@nodiscard
function SL:GetGameMainServerID() end

---获取当前服务器ID
---@nodiscard
function SL:GetGameServerID() end

---获取当前服务器名字
---@nodiscard
function SL:GetGameServerName() end

---添加地图特效
---*  actorID ： id
---*  sfxId ： 控件ID
---*  type ： 控件位置的横坐标
---*  x ： 控件位置的纵坐标
---*  y ： 图片背景图片
---*  param ： 打勾图片路径
---@param actorID int
---@param sfxId int
---@param type int
---@param x int
---@param y int
---@param param string
---@nodiscard
function SL:AddMapSpecialEffect(actorID, sfxId, type, x, y, param) end

---根据玩家属性ID获取属性值
---*  attID ： cfg_att_score表对应 的 id
---@param attID int
---@nodiscard
function SL:GetRoleAttByType(attID) end

---十六进制转十进制
---*  hexStr ： 16进制数
---@param hexStr int
---@nodiscard
function SL:HexToInt(hexStr) end

---显示或隐藏其他玩家
---@nodiscard
function SL:OnShowHidePlayer() end

---添加窗体控件自定义属性
---*  widget ： 控件对象
---*  desc ： 描述
---*  key ： 属性名称
---*  value ： 属性值
---@param widget parent
---@param desc string
---@param key string
---@param value str or int
---@nodiscard
function SL:AddWndProperty(widget, desc, key, value) end

---删除窗体控件自定义属性
---*  widget ： 控件对象
---*  desc ： 描述
---*  key ： 属性名称
---*  value ： 属性值
---@param widget parent
---@param desc string
---@param key string
---@param value str or int
---@nodiscard
function SL:DelWndProperty(widget, desc, key, value) end

---获取窗体控件自定义属性
---*  widget ： 控件对象
---*  desc ： 描述
---*  key ： 属性名称
---@param widget parent
---@param desc string
---@param key string
---@nodiscard
function SL:GetWndProperty(widget, desc, key) end

---注册窗体控件事件
---*  widget ： 控件对象
---*  msg ： 描述
---*  msgtype ： 窗体事件id
---*  callback ： 回调函数
---@param widget parent
---@param msg string
---@param msgtype int
---@param callback strfun
---@nodiscard
function SL:RegisterWndEvent(widget, msg, msgtype, callback) end

---注销窗体控件事件
---*  widget ： 控件对象
---*  msg ： 描述
---*  msgtype ： 窗体事件id
---@param widget parent
---@param msg string
---@param msgtype int
---@nodiscard
function SL:UnRegisterWndEvent(widget, msg, msgtype) end

---删除好友
---*  name ： 玩家名
---@param name str
---@nodiscard
function SL:DelFriends(name) end

---添加好友
---*  name ： 玩家名
---@param name str
---@nodiscard
function SL:AddFriends(name) end

---获取所有好友
---@nodiscard
function SL:GetFriends() end

---删除所有好友
---@nodiscard
function SL:DelAllFriends() end

---判断是否拥有该好友
---*  name ： 玩家名
---@param name str
---@nodiscard
function SL:HasFriends(name) end

---获取任务栏状态
---@nodiscard
function SL:GetTaskBarState() end

---设置任务栏状态
---*  param ： status = status, callback = callback
---@param param object
---@nodiscard
function SL:SetTaskBarState(param) end

---自定义资源下载
---*  path ： 路径
---*  url ： 地址
---*  downloadCB ： 触发函数
---@param path object
---@param url object
---@param downloadCB func
---@nodiscard
function SL:DownLoadRes(path,url,downloadCB) end

---打开 PC 技能键盘设置
---*  skillID ： 技能ID
---@param skillID int
---@nodiscard
function SL:OpenSkillSetWin32UI(skillID) end

---关闭 PC 技能键盘设置
---@nodiscard
function SL:CloseSkillSetWin32UI() end

---获取称号列表
---@nodiscard
---@return 类型: table 表
function SL:CloseSkillSetWin32UI() end

---获取技能键(PC)
---*  skillID ： 技能ID
---@param skillID int
---@nodiscard
---@return string | 技能键
function SL:GetSkillKey(skillID) end

---删除技能键(PC)
---*  skillID ： 技能ID
---@param skillID int
---@nodiscard
function SL:DeleteSkillKey(skillID) end

---设置技能键(PC 1~8)
---*  skillID ： 技能ID
---*  key ： 键值
---@param skillID int
---@param key string
---@nodiscard
function SL:SetSkillKey(skillID, key) end

---释放技能
---*  skillID ： 技能ID
---@param skillID int
---@nodiscard
function SL:OnLaunchSkill(skillID) end

---获取技能配置
---@nodiscard
function SL:GetSkillConfig() end

---通过技能ID获取技能数据
---*  skillID ： 技能ID
---@param skillID int
---@nodiscard
---@return table | 表
function SL:GetSkillDataByID(skillID) end

---获取所有技能
---*  noBasicSkill ： 是否排除普攻
---*  activeOnly ： 是否只获取主动技能
---@param noBasicSkill object
---@param activeOnly object
---@nodiscard
---@return table | 表
function SL:GetSkills(noBasicSkill, activeOnly) end

---设置释放玩家自动拾取
---*  bool ： 是否自动拾取
---@param bool bool
---@nodiscard
function SL:SetPlayerAutoPickStatus(bool) end

---获取释放玩家自动拾取
---@nodiscard
---@return bool |是 |bool |是否自动拾取
function SL:GetPlayerAutoPickStatus() end





return SL
