lib996 = {}



---根据装备位获取装备对象
---* actor ： 玩家对象
---* where ： 装备位置
---@param actor object
---@param where int
---@nodiscard
function lib996:linkbodyitem(actor,where) end

---遍历所有在线玩家
---@nodiscard
function lib996:getplayerlst() end

---剔除离线挂机角色
---* mapID ： 地图号,“*”表示全部地图
---* level ： 剔除等级低于此等级均剔除“*”表示所有
---* count ： 最大剔除玩家数“*”表示所有
---@param mapID object
---@param level string
---@param count string
---@nodiscard
function lib996:tdummy(mapID,level,count) end

---表格转换成字符串
---* tab ： 要转换的表格
---@param tab table
---@nodiscard
function lib996:tbl2json(tab) end

---字符串转换成表格
---* str ： 要转换的字符串
---@param str str
---@nodiscard
function lib996:json2tbl(str) end

---获取当前时间
---@nodiscard
function lib996:gettime() end

---获取系统对象
---@nodiscard
function lib996:getsys() end

---打印日志
---* str ： 要打印的信息
---* show ： 0：m2不同步显示，1：m2同步显示
---@param str str
---@param show int
---@nodiscard
function lib996:scriptlog(str,show) end

---加载文件
---* path ： 文件路径
---@param path str
---@nodiscard
function lib996:include(path) end

---新建任务
---* actor ： 玩家对象
---* id ： 任务id
---* a ： 参数1用来替换任务内容里的%s
---* b ： 参数2用来替换任务内容里的%s
---* c ： 参数3用来替换任务内容里的%s
---* d ： 参数4用来替换任务内容里的%s
---* e ： 参数5用来替换任务内容里的%s
---* f ： 参数6用来替换任务内容里的%s
---* g ： 参数7用来替换任务内容里的%s
---* h ： 参数8用来替换任务内容里的%s
---* i ： 参数9用来替换任务内容里的%s
---* j ： 参数10用来替换任务内容里的%s
---@param actor object
---@param id int
---@param a str
---@param b str
---@param c str
---@param d str
---@param e str
---@param f str
---@param g str
---@param h str
---@param i str
---@param j str
---@nodiscard
function lib996:newpicktask(actor,id,a,b,c,d,e,f,g,h,i,j) end

---刷新进行中任务状态
---* actor ： 玩家对象
---* id ： 任务id
---* a ： 参数1用来替换任务内容里的%s
---* b ： 参数2用来替换任务内容里的%s
---* c ： 参数3用来替换任务内容里的%s
---* d ： 参数4用来替换任务内容里的%s
---* e ： 参数5用来替换任务内容里的%s
---* f ： 参数6用来替换任务内容里的%s
---* g ： 参数7用来替换任务内容里的%s
---* h ： 参数8用来替换任务内容里的%s
---* i ： 参数9用来替换任务内容里的%s
---* j ： 参数10用来替换任务内容里的%s
---@param actor object
---@param id int
---@param a str
---@param b str
---@param c str
---@param d str
---@param e str
---@param f str
---@param g str
---@param h str
---@param i str
---@param j str
---@nodiscard
function lib996:newchangetask(actor,id,a,b,c,d,e,f,g,h,i,j) end

---完成任务
---* actor ： 玩家对象
---* id ： 任务id
---@param actor object
---@param id int
---@nodiscard
function lib996:newcompletetask(actor,id) end

---删除任务
---* actor ： 玩家对象
---* id ： 任务id
---@param actor object
---@param id int
---@nodiscard
function lib996:newdeletetask(actor,id) end

---任务置顶显示
---* actor ： 玩家对象
---* id ： 任务id
---@param actor object
---@param id int
---@nodiscard
function lib996:tasktopshow(actor,id) end

---镖车自动寻路到指定坐标
---* actor ： 玩家对象
---* x ： x坐标
---* y ： y坐标
---* range ： 范围:0-12 填0则不检测
---@param actor object
---@param x int
---@param y int
---@param range int
---@nodiscard
function lib996:dartmap(actor,x,y,range) end

---人物下线时镖车存活设置
---* actor ： 玩家对象
---* time ： 镖车存活时间，秒
---* aim ： 0-消失，1-时间到达消失
---@param actor object
---@param time int
---@param aim int
---@nodiscard
function lib996:darttime(actor,time,aim) end

---商城是否满足指定条件显示
---* actor ： 玩家对象
---* show ： 1-不显示，0-显示
---@param actor object
---@param show int
---@nodiscard
function lib996:notallowshow(actor,show) end

---商城是否满足指定条件购买
---* actor ： 玩家对象
---* buy ： 1-不允许购买，0-允许购买
---@param actor object
---@param buy int
---@nodiscard
function lib996:notallowbuy(actor,buy) end

---输出消息到控制台
---* str ： 要输出的信息
---@param str str
---@nodiscard
function lib996:release_print(str) end

---播放屏幕特效
---* actor ： 玩家对象
---* id ： 	特效编号
---* effectid ： 特效ID
---* x ： 在屏幕上的X坐标
---* y ： 在屏幕上的Y坐标
---* speed ： 播放速度
---* times ： 播放次数 0为持续
---* itype ： 0:自己 1:所有人
---@param actor object
---@param id int
---@param effectid int
---@param x int
---@param y int
---@param speed int
---@param times int
---@param itype int
---@nodiscard
function lib996:screffects(actor,id,effectid,x,y,speed,times,itype) end

---关闭屏幕特效
---* actor ： 玩家对象
---* id ： 	特效编号
---* itype ： 0:自己 1:所有人
---@param actor object
---@param id int
---@param itype int
---@nodiscard
function lib996:deleffects(actor,id,itype) end

---获取全局信息
---* itype ： 0: 全局玩家信息 1: 开服天数(后台维护) 2: 开服时间(后台维护) 3: 合服次数 4: 合服时间 5: 服务器IP 6: 玩家数量 7: 背包最大数量 8: 引擎版本号
---@param itype int
---@nodiscard
function lib996:globalinfo(itype) end

---添加计划任务
---* id ： 	任务计划id，不可重复
---* name ： 任务计划名称
---* itype ： 0:指定时间 1:每天执行 2:每周执行 3:每月执行
---* strtime ： 时间表 详细见示例 多时间#拼接
---* strfun ： 回调函数
---* param ： 自定义参数，多参数#拼接
---@param id int
---@param name str
---@param itype int
---@param strtime str
---@param strfun str
---@param param str
---@nodiscard
function lib996:addscheduled(id,name,itype,strtime,strfun,param) end

---判断计划任务是否存在
---* id ： 任务计划id，不可重复
---@param id int
---@nodiscard
function lib996:hasscheduled(id) end

---删除计划任务
---* id ： 任务计划id，不可重复
---@param id int
---@nodiscard
function lib996:delscheduled(id) end

---调用其他lua虚拟机函数
---* actor ： 玩家对象
---* idx ： npcid QF:999999999,QM:999999996
---* time ： 延迟时间ms,0立即执行
---* strfun ： 函数名
---* param ： 参数
---@param actor object
---@param idx int
---@param time INT
---@param strfun str
---@param param str
---@nodiscard
function lib996:callfunbynpc(actor,idx,time,strfun,param) end

---设置无敌模式
---* actor ： 玩家对象
---* int ： 1：无敌，0：不无敌
---@param actor object
---@param int int
---@nodiscard
function lib996:superman(actor,int) end

---设置隐身模式
---* actor ： 玩家对象
---* int ： 1：隐身，0：不隐身
---@param actor object
---@param int int
---@nodiscard
function lib996:observer(actor,int) end

---获取所有毫秒数
---@nodiscard
function lib996:getalltimems() end

---修改人物当前血量
---* actor ： 玩家对象
---* char ： 操作符 + - =
---* nvalue ： 血量
---* effid ： 素材ID
---@param actor object
---@param char string
---@param nvalue string
---@param effid bool
---@nodiscard
function lib996:humanhp( actor, char, nvalue, effid ) end

---修改人物当前蓝量
---* actor ： 玩家对象
---* char ： 操作符 + - =
---* nvalue ： 蓝量
---* effid ： 素材ID
---@param actor object
---@param char string
---@param nvalue string
---@param effid bool
---@nodiscard
function lib996:humanhp( actor, char, nvalue, effid ) end

---通知周围血量与蓝量变化
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:healthspellchanged(actor) end

---获取人物/怪物 相关信息
---* actor ： 玩家对象
---* id ： 类型
---* param ： 参数3（仅ID=2时，可用）
---@param actor object
---@param id int
---@param param int
---@nodiscard
function lib996:getbaseinfo(actor,id,param) end

---设置人物/怪物 相关信息
---* actor ： 玩家对象
---* id ： 类型
---* value ： 属性值
---@param actor object
---@param id int
---@param value int
---@nodiscard
function lib996:setbaseinfo(actor,id,value) end

---判断对象是否为玩家   
---* actor ： 对象
---@param actor object
---@nodiscard
function lib996:isplayer(actor) end

---判断对象是否死亡   
---* actor ： 对象
---@param actor object
---@nodiscard
function lib996:isdeath(actor) end

---获取对象名称   
---* actor ： 对象
---@param actor object
---@nodiscard
function lib996:getname(actor) end

---获取对象所在的地图id   
---* actor ： 对象
---@param actor object
---@nodiscard
function lib996:getmapid(actor) end

---获取对象xy坐标   
---* actor ： 对象
---@param actor object
---@nodiscard
function lib996:getxy(actor) end

---获取对象当前HP  
---* actor ： 对象
---@param actor object
---@nodiscard
function lib996:gethp(actor) end

---获取对象当前MP  
---* actor ： 对象
---@param actor object
---@nodiscard
function lib996:getmp(actor) end

---获取对象最大HP  
---* actor ： 对象
---@param actor object
---@nodiscard
function lib996:getmaxhp(actor) end

---获取对象最大MP  
---* actor ： 对象
---@param actor object
---@nodiscard
function lib996:getmaxmp(actor) end

---通知客户端显示显示表单
---* actor ： 玩家对象
---* FormName ： 文件名
---* Content ： Win_Create节点ID(参数用#号拼接)
---@param actor object
---@param FormName string
---@param Content string
---@nodiscard
function lib996:showformwithcontent(actor,FormName,Content) end

---查询人物名称是否存在
---* actor ： 玩家对象
---* name ： 要查询的名字
---@param actor object
---@param name string
---@nodiscard
function lib996:queryhumnameexist(actor,name) end

---修改人物名称
---* actor ： 玩家对象
---* name ： 要修改的名字
---@param actor object
---@param name string
---@nodiscard
function lib996:changehumname(actor,name) end

---修改人物名字颜色
---* actor ： 玩家对象
---* color ： 996m2 颜色列表
---@param actor object
---@param color int
---@nodiscard
function lib996:changenamecolor(actor,color) end

---获取人物临时属性
---* actor ： 玩家对象
---* nWhere ： 位置 对应cfg_att_score 属性ID
---@param actor object
---@param nWhere int
---@nodiscard
function lib996:gethumnewvalue(actor,nWhere) end

---修改人物临时属性（带有效期）
---* actor ： 玩家对象
---* nWhere ： 位置 对应cfg_att_score 属性ID
---* nValue ： 对应属性值
---* nTime ： 有效时间，秒
---@param actor object
---@param nWhere int
---@param nValue int
---@param nTime int
---@nodiscard
function lib996:changehumnewvalue(actor,nWhere,nValue,nTime) end

---设置人物经验值
---* actor ： 玩家对象
---* char ： 操作符 + - =
---* count ： 数量
---* addexp ： 是否增加聚灵珠经验
---@param actor object
---@param char string
---@param count string
---@param addexp bool
---@nodiscard
function lib996:changeexp(actor,char,count,addexp) end

---调整人物等级
---* actor ： 玩家对象
---* char ： 操作符 + - =
---* count ： 数量
---@param actor object
---@param char string
---@param count string
---@nodiscard
function lib996:changelevel(actor,char,count) end

---顶戴花翎
---* actor ： 玩家对象
---* where ： 位置 0-9
---* effType ： 播放效果(0图片名称 1特效ID)
---* resName ： 图片名或者特效ID
---* x ： X坐标 (为空时默认X=0)
---* y ： Y坐标 (为空时默认Y=0)
---* autoDrop ： 自动补全空白位置0,1(0=掉 1=不掉)
---* selfSee ： 是否只有自己看见(0=所有人都可见 1=仅仅自己可见)
---@param actor object
---@param where int
---@param effType int
---@param resName string
---@param x int
---@param y int  
---@param autoDrop int
---@param selfSee int 
---@nodiscard
function lib996:seticon(actor,where,effType,resName,x,y,autoDrop,selfSee) end

---在人物身上播放特效
---* actor ： 玩家对象
---* effectid ： 特效ID
---* offsetX ： 相对于人物偏移的X坐标
---* offsetY ： 相对于人物偏移的Y坐标
---* times ： 播放次数—0-一直播放
---* behind ： 播放模式-0-前面-1-后面
---* selfshow ： 仅自己可见0-否，视野内均可见，1-是
---@param actor object
---@param effectid int
---@param offsetX int
---@param offsetY int
---@param times int
---@param behind int  
---@param selfshow int
---@nodiscard
function lib996:playeffect(actor,effectid,offsetX,offsetY,times,behind,selfshow) end

---清除人物身上播放的特效
---* actor ： 玩家对象
---* effectid ： 特效ID
---@param actor object
---@param effectid string
---@nodiscard
function lib996:clearplayeffect(actor,effectid) end

---查询人物货币
---* actor ： 玩家对象
---* id ： 货币ID（1-100）
---@param actor object
---@param id int
---@nodiscard
function lib996:querymoney(actor,id) end

---获取人物通用货币数量(多货币计算)
---* actor ： 玩家对象
---* moneyname ： 货币名称
---@param actor object
---@param moneyname string
---@nodiscard
function lib996:getbindmoney(actor,moneyname) end

---扣除人物通用货币数量(多货币依次计算)
---* actor ： 玩家对象
---* moneyname ： 货币名称
---* count ： 对应货币值
---@param actor object
---@param moneyname string
---@param count int
---@nodiscard
function lib996:consumebindmoney( actor, moneyname, count ) end

---设置人物背包格子数
---* actor ： 玩家对象
---* count ： 格子大小（不小于46，不大于126）
---@param actor object
---@param count int
---@nodiscard
function lib996:setbagcount( actor, count ) end

---遍历勾选背包内物品
---* actor ： 玩家对象
---* makeindex ： 选中的物品唯一ID多个物品用“,”分隔
---@param actor object
---@param makeindex str
---@nodiscard
function lib996:selectbagitems( actor, makeindex ) end

---穿戴装备
---* actor ： 玩家对象
---* where ： 位置
---* makeindex ： 	物品唯一ID
---@param actor object
---@param where int
---@param makeindex int
---@nodiscard
function lib996:takeonitem( actor, where, makeindex ) end

---脱下装备
---* actor ： 玩家对象
---* where ： 位置
---* makeindex ： 	物品唯一ID
---@param actor object
---@param where int
---@param makeindex int
---@nodiscard
function lib996:takeoffitem( actor, where, makeindex ) end

---开/关首饰盒
---* actor ： 玩家对象
---* bState ： 0：关闭，1：开启
---@param actor object
---@param bState int
---@nodiscard
function lib996:setsndaitembox(actor,bState) end

---修改武器、衣服外观
---* actor ： 玩家对象
---* item ： 物品对象
---* looks ： 	外观值
---@param actor object
---@param item object
---@param looks int
---@nodiscard
function lib996:changeitemshape(actor,item,looks) end

---获取背包剩余空格数
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:getbagblank(actor) end

---获取背包所有物品
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:getbagitems(actor) end

---获取仓库所有物品
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:getstorageitems(actor) end

---整理背包里的物品
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:refreshbag(actor) end

---给人物装备面板加特效
---* actor ： 玩家对象
---* effectid ： 特效ID， 0-删除特效
---* position ： 	显示位置：0-前面 1-后面
---@param actor object
---@param effectid int
---@param position int
---@nodiscard
function lib996:updateequipeffect(actor,effectid,position) end

---根据玩家名获取玩家对象
---* name ： 玩家对象
---@param name string
---@nodiscard
function lib996:getplayerbyname(name) end

---根据玩家唯一ID获取玩家对象
---* id ： 玩家唯一id
---@param id string
---@nodiscard
function lib996:getplayerbyid(id) end

---修改攻击模式
---* actor ： 	玩家对象
---* attackmode ： 攻击模式
---@param actor object
---@param attackmode int
---@nodiscard
function lib996:changeattackmode(actor,attackmode) end

---强制修改攻击模式
---* actor ： 玩家对象
---* attackmode ： 攻击模式 -1=提前结束强制状态
---* time ： 	强制切换时间时间
---@param actor object
---@param attackmode int
---@param time int
---@nodiscard
function lib996:setattackmode(actor,attackmode,time) end

---获取当前攻击模式
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:getattackmode(actor) end

---跳转到地图随机坐标
---* actor ： 	玩家对象
---* mapname ： 地图名
---@param actor object
---@param mapname string
---@nodiscard
function lib996:map(actor,mapname) end

---跳转到地图指定坐标
---* actor ： 玩家对象
---* mapname ： 地图名
---* nX ： 	X坐标
---* nY ： Y坐标
---* nRange ： 	范围
---@param actor object
---@param mapname string
---@param nX int
---@param nY int
---@param nRange int
---@nodiscard
function lib996:mapmove(actor,mapname,nX,nY,nRange) end

---导航玩家到指定位置
---* actor ： 玩家对象
---* X ： X坐标
---* Y ： Y坐标
---@param actor object
---@param X string
---@param Y string
---@nodiscard
function lib996:gotonow(actor,X,Y) end

---获取玩家GM权限等级
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:getgmlevel(actor) end

---复活
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:realive(actor) end

---延时跳转
---* actor ： 玩家对象
---* time ： 时间(毫秒)
---* func ： 	触发函数
---* del ： 换地图是否删除此延时(0或为空时=不删除 1=删除)
---* param ： 	多参数用#号拼接
---@param actor object
---@param time int
---@param func string
---@param del int
---@param param str
---@nodiscard
function lib996:delaygoto(actor,time,func,del) end

---删除延迟
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:cleardelaygoto(actor) end

---人物飘血飘字特效
---* target ： 飘血飘字的主体，一般为受攻击者
---* type ： 显示类型 详细在下方说明中
---* damage ： 	显示的点数
---* hitter ： 空则为所有人 可看到飘血飘字的主体，一般为攻击者
---@param target object
---@param type integer
---@param damage integer
---@param hitter object
---@nodiscard
function lib996:sendattackeff(target,type,damage,hitter) end

---设定人物攻击飘血飘字类型
---* actor ： 玩家对象
---* type ： 显示类型
---@param actor object
---@param type int
---@nodiscard
function lib996:setattackefftype(actor,type) end

---采集挖矿等进度条操作
---* actor ： 玩家对象
---* time ： 进度条时间，秒
---* succ ： 	成功后跳转的函数
---* msg ： 提示消息
---* canstop ： 能否中断0-不可中断1-可以中断
---* fail ：   中断触发的函数
---@param actor object
---@param time int
---@param succ string
---@param msg string
---@param canstop int
---@param fail string
---@nodiscard
function lib996:showprogressbardlg(actor,time,succ,msg,canstop,fail) end

---设置玩家穿人穿怪
---* actor ： 玩家对象
---* type ： 模式：0-恢复默认；1-穿人；2-穿怪；3-穿人穿怪
---* time ： 	时间(秒)
---* objtype ： 对象 ：0-玩家；1-宝宝
---@param actor object
---@param type int
---@param time int
---@param objtype int
---@nodiscard
function lib996:throughhum(actor,type,time,objtype) end

---设置当前攻击目标
---* obj1 ： 玩家或英雄或怪物对象1  
---* obj2 ： 玩家或英雄或怪物对象2
---@param obj1 object
---@param obj2 object
---@nodiscard
function lib996:settargetcert(obj1,obj2) end

---是否可以设定为攻击目标
---* obj1 ： 玩家或英雄或怪物对象1  
---* obj2 ： 玩家或英雄或怪物对象2
---@param obj1 object
---@param obj2 object
---@nodiscard
function lib996:ispropertarget(obj1,obj2) end

---停止摆摊
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:forbidmyshop(actor) end

---增加气泡
---* actor ： 玩家对象
---* ID ： ID
---* name ： 显示名称
---* fun ： 函数名(多参数用逗号分割)
---@param actor object
---@param ID int
---@param name string
---@param fun function
---@nodiscard
function lib996:addbutshow(actor,ID,name,fun) end

---删除气泡
---* actor ： 玩家对象 
---* ID ： ID
---@param actor object
---@param ID int
---@nodiscard
function lib996:delbutshow(actor,ID) end

---获取角色属性
---* actor ： 玩家对象 
---* attid ： 属性id
---@param actor object
---@param attid int
---@nodiscard
function lib996:attr(actor,attid) end

---设置人物货币
---* actor ： 玩家对象
---* id ： 货币ID（1-100）
---* opt ： 操作符 + - =
---* count ： 数量
---* msg ： 备注内容 
---* send ： 是否立即刷新
---@param actor object
---@param id int
---@param opt str
---@param count int
---@param msg str
---@param send bool
---@nodiscard
function lib996:changemoney(actor,id,opt,count,msg,send) end

---修改武器、衣服特效
---* actor ： 玩家对象
---* where ： 位置 0，1
---* EffId ： 特效ID
---* selfSee ： 是否只有自己看见(1=所有人都可见 0=仅仅自己可见)
---@param actor object
---@param where int
---@param EffId int
---@param selfSee int
---@nodiscard
function lib996:changedresseffect(actor,where,EffId,selfSee) end

---停止自动挂机
---* actor ： 玩家对象 
---@param actor object
---@nodiscard
function lib996:stopautoattack(actor) end

---发送邮件
---* userid ： 玩家唯一id 填入玩家名则 #七伤拳
---* type ： 自定义邮件类型
---* title ： 邮件标题
---* str ： 邮件内容
---* rewards ： 附件：物品1#数量#绑定标记&物品2#数量#绑定标记，&分组，#分隔 
---@param userid string
---@param type int
---@param title int
---@param str int
---@param rewards int
---@nodiscard
function lib996:sendmail(userid,type,title,str,rewards) end

---发送聊天框消息
---* actor ： 玩家对象
---* type ： 1:自己 2:全服 3:行会 4:当前地图 5:组队
---* msg ： 消息内容
---@param actor object
---@param type int
---@param msg str
---@nodiscard
function lib996:sendmsg(actor,type,msg) end

---发送屏幕中间大字体信息
---* actor ： 玩家对象
---* FColor ： 前景色
---* BColor ： 背景色
---* msg ： 消息内容
---* flag ： 0:发送给自己 1:发送所有人物 2:发送行会 3:发送国家 4:发送当前地图 5:替换模式 7:组队
---* time ： 显示时间
---* func ： 倒计时结束后跳转的脚本位置，对应脚本需要放QFunction脚本中，使用跳转时，消息文字提示中必须包含%d，用于显示倒计时时间
---@param actor object
---@param FColor int
---@param BColor int
---@param msg str
---@param flag str
---@param time int
---@param func str
---@nodiscard
function lib996:sendcentermsg(actor,FColor,BColor,msg,flag,time,func) end

---发送聊天框固顶信息
---* actor ： 玩家对象
---* flag ： 0:发送所有人物 1:发送给自己 2:发送行会 3:发送当前地图 4:组队
---* FColor ： 前景色
---* BColor ： 背景色
---* time ： 显示时间
---* msg ： 消息内容
---* show ： 是否显示人物名称 0-是 1-否
---@param actor object
---@param flag str
---@param FColor int
---@param BColor int
---@param time int
---@param msg str
---@param show str
---@nodiscard
function lib996:sendtopchatboardmsg(actor,flag,FColor,BColor,msg,time,show) end

---发送屏幕滚动信息
---* actor ： 玩家对象
---* flag ： 0:发送给自己 1:发送所有人物 2:发送行会 3:发送当前地图 4:组队
---* FColor ： 前景色
---* BColor ： 背景色
---* higjt ： 高度
---* show ： 滚动次数
---* msg ： 消息内容
---@param actor object
---@param flag str
---@param FColor int
---@param BColor int
---@param higjt int
---@param show int
---@param msg str
---@nodiscard
function lib996:sendmovemsg(actor,flag,FColor,BColor,higjt,show,msg) end

---弹出窗口消息
---* actor ： 玩家对象
---* msg ： 消息内容
---* afun ： 确定后跳转的接口
---* bfun ： 取消后跳转的接口
---@param actor object
---@param msg str
---@param afun str
---@param bfun str
---@nodiscard
function lib996:messagebox(actor,msg,afun,bfun) end

---调用触发
---* actor ： 玩家对象
---* info ： 0:小组成员 1:行会成员 2:当前地图的人物 3:以自己为中心范围玩家
---* strfun ： 回调函数
---* range ： 触发模式=3时指定的范围大小
---@param actor object
---@param info int
---@param strfun str
---@param range str
---@nodiscard
function lib996:gotolabel(actor,info,strfun,range) end

---解锁仓库格子
---* actor ： 玩家对象
---* count ： 要解释的格子数
---@param actor object
---@param count int
---@nodiscard
function lib996:changestorage(actor,count) end

---开启自动挂机
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:startautoattack(actor) end

---播放声音
---* actor ： 玩家对象
---* id ： 文件索引
---* count ： 循环播放次数
---* flag ： 0.播放给自己 1.播放给全服 2.播放给同一地图 4.播放给同屏人物
---@param actor object
---@param id int
---@param count int
---@param flag int
---@nodiscard
function lib996:playsound(actor,id,count,flag) end

---停止当前动作
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:stop(actor) end

---获取玩家唯一id
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:getuserid(actor) end

---获取玩家当前等级
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:getlevel(actor) end

---获取玩家性别
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:getsex(actor) end

---获取玩家职业
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:getjob(actor) end

---获取玩家当前经验值
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:getexp(actor) end

---获取玩家转生等级
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:getrelevel(actor) end

---获取玩家背包最大格子数
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:getbagsize(actor) end

---判断玩家对象是否为行会会长
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:isguildmaster(actor) end

---获取玩家自动寻路终点坐标
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:gettargetxy(actor) end

---设置隐身术效果
---* actor ： 玩家对象
---* time ： 持续时间，秒，-1取消隐身术效果
---@param actor object
---@param time int
---@nodiscard
function lib996:sethide(actor,time) end

---获取玩家pk点
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:getpkpoint(actor) end

---设置玩家pk点
---* actor ： 玩家对象
---* opt ： 操作符 + - =
---* n ： 数量
---@param actor object
---@param opt str
---@param n int
---@nodiscard
function lib996:setpkpoint(actor,opt, n) end

---设置玩家等级
---* actor ： 玩家对象
---* opt ： 操作符 + - =
---* n ： 数量
---@param actor object
---@param opt str
---@param n int
---@nodiscard
function lib996:setlevel(actor,opt, n) end

---设置玩家性别
---* actor ： 玩家对象
---* n ： 性别 0：男，1：女
---@param actor object
---@param n int
---@nodiscard
function lib996:setsex(actor,n) end

---设置玩家职业
---* actor ： 玩家对象
---* n ： 0：战士，1：法师，2：道士
---@param actor object
---@param n int
---@nodiscard
function lib996:setjob(actor,n) end

---设置玩家转生等级
---* actor ： 玩家对象
---* n ： 当前转生等级
---@param actor object
---@param n int
---@nodiscard
function lib996:setrelevel(actor,n) end

---获取玩家最大经验值
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:getmaxexp(actor) end

---获取角色所有属性
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:attrtab(actor) end

---刷新人物属性
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:recalcabilitys(actor) end

---根据物品唯一ID获得物品对象
---* actor ： 玩家对象
---* makeindex ： 物品唯一ID
---@param actor object
---@param makeindex int
---@nodiscard
function lib996:getitembymakeindex(actor,makeindex) end

---给物品
---* actor ： 玩家对象
---* itemname ： 物品名称
---* qty ： 数量
---* bind ： 物品规则
---@param actor object
---@param itemname string
---@param qty int
---@param bind int
---@nodiscard
function lib996:giveitem(actor,itemname,qty,bind) end

---给物品直接装备
---* actor ： 玩家对象
---* where ： 装备位置
---* itemname ： 物品名称
---* qty ： 数量
---* bind ： 物品规则
---@param actor object
---@param where int
---@param itemname string
---@param qty int
---@param bind int
---@nodiscard
function lib996:giveonitem(actor,where,itemname,qty,bind) end

---拿物品
---* actor ： 玩家对象
---* itemname ： 物品名称
---* qty ： 数量
---* IgnoreJP ： 忽略极品(0:所有都扣除，1：极品不扣除)
---@param actor object
---@param itemname string
---@param qty int
---@param IgnoreJP int
---@nodiscard
function lib996:takeitem(actor,itemname,qty,IgnoreJP) end

---根据装备位获取装备对象
---* actor ： 玩家对象
---* where ： 装备位置
---@param actor object
---@param where int
---@nodiscard
function lib996:linkbodyitem(actor,where) end

---获取物品实体信息
---* actor ： 玩家对象
---* item ： 物品对象
---* id ： 1:唯一ID 2:物品ID 3:剩余持久 4:最大持久 5:叠加数量 6:绑定状态
---@param actor object
---@param item object
---@param id int
---@nodiscard
function lib996:getiteminfo(actor,item,id) end

---获取物品模板信息
---* itemid ： 物品ID
---* itemName ： 物品名称
---* id ： 0:idx 1:名称 2:StdMode 3:Shape 4:重量 5:AniCount 6:最大持久 7:叠加数量 8:价格（price） 9:使用条件 10:使用等级 11:道具表常量(29列) 12:道具表常量（30列）
---@param itemid int
---@param itemName string
---@param id int
---@nodiscard
function lib996:getstditeminfo(itemid/itemName,id) end

---获取物品记录信息
---* actor ： 玩家对象
---* item ： 物品对象
---* type ： [1,2,3]
---* position ： 当type=1,取值范围[0..49]type=2,取值范围[0..19]
---@param actor object
---@param item object
---@param type int
---@param position int
---@nodiscard
function lib996:getitemaddvalue(actor,item,type,position) end

---刷新物品信息到前端
---* actor ： 玩家对象
---* item ： 物品对象
---@param actor object
---@param item object
---@nodiscard
function lib996:refreshitem(actor,item) end

---通过物品唯一id销毁物品
---* actor ： 玩家对象
---* ids ： 物品唯一ID(makeindex)逗号(,)串联
---* count ： 叠加物品扣除数量，不填此参数，默认全部扣除，不可叠加物品全部扣除
---@param actor object
---@param ids int
---@param count int
---@nodiscard
function lib996:delitembymakeindex(actor,ids,count) end

---使用物品（吃药、使用特殊物品等）
---* actor ： 玩家对象
---* itemname ： 物品名称
---* count ： 数量
---@param actor object
---@param itemname string
---@param count int
---@nodiscard
function lib996:eatitem(actor,itemname,count) end

---给道具增加自定义属性
---* actor ： 玩家对象
---* makeid ： 道具makeindex(唯一id)
---* type ： 属性组
---* attid ： 属性id
---* attvar ： 属性值
---@param actor object
---@param makeid int
---@param type int
---@param attid int
---@param attvar int
---@nodiscard
function lib996:additemattr(actor,makeid,type,attid,attvar) end

---删除道具自定义属性
---* actor ： 玩家对象
---* makeid ： 道具makeindex(唯一id)
---* type ： 属性组
---* attid ： 属性id(为0时清除该组所有属性)
---@param actor object
---@param makeid int
---@param type int
---@param attid int
---@nodiscard
function lib996:delitemattr(actor,makeid,type,attid) end

---获取道具自定义属性组
---* actor ： 玩家对象
---* makeid ： 道具makeindex(唯一id)
---@param actor object
---@param makeid int
---@nodiscard
function lib996:getitemattrtag(actor, makeid) end

---根据道具自定义属性组获取该组属性
---* actor ： 玩家对象
---* makeid ： 道具makeindex(唯一id)
---* nTag ： 属性组
---@param actor object
---@param makeid int
---@param nTag int
---@nodiscard
function lib996:getitemattr(actor, makeid, nTag) end

---设置物品特效
---* actor ： 玩家对象
---* where ： 装备位置
---* bagid ： 背包特效编号
---* ineid ： 内观特效编号
---@param actor object
---@param where int
---@param bagid int
---@param ineid int
---@nodiscard
function lib996:setitemeffect(actor, where, bagid,ineid) end

---获取物品当前耐久度
---* actor ： 玩家对象
---* makeindex ： 物品唯一id
---@param actor object
---@param makeindex int
---@nodiscard
function lib996:getdura(actor,makeindex) end

---修改物品当前耐久度
---* actor ： 玩家对象
---* makeindex ： 物品唯一id
---* ope ： 运算符 “+” “-“ “=”
---* value ： 修改的耐久值
---@param actor object
---@param makeindex int
---@param ope str
---@param value int
---@nodiscard
function lib996:setdura(actor,makeindex,ope,value) end

---刷新物品变量到前端
---* actor ： 玩家对象
---* makeid ： 物品makeindex（物品唯一id）
---@param actor object
---@param makeid int
---@nodiscard
function lib996:senditemvartoc(actor,makeid) end

---根据怪物名称杀死怪物
---* mapid ： 地图id
---* monname ： 怪物全名，nil时 杀死全部
---* count ： 数量，0所有
---* drop ： 是否掉落物品，true掉落
---@param mapid object
---@param monname string
---@param count int
---@param drop bool
---@nodiscard
function lib996:killmonsters(mapid,monname,count,drop) end

---根据怪物对象杀死怪物
---* actor ： 击杀者对象
---* mon ： 怪物对象
---* drop ： 是否掉落物品，true掉落
---* trigger ： 是否触发killmon
---* showdie ： 是否显示死亡动画
---@param actor object
---@param mon object
---@param drop bool
---@param trigger bool
---@param showdie bool
---@nodiscard
function lib996:killmonbyobj(actor,mon,drop,trigger,showdie) end

---杀怪物品再爆
---* actor ： 玩家对象
---* count ： 怪物物品掉落增加次数
---@param actor object
---@param count int
---@nodiscard
function lib996:monitems(actor,count) end

---把怪物设置成宝宝
---* mon ： 怪物对象
---* player ： 玩家对象
---@param mon object
---@param player object
---@nodiscard
function lib996:setmonmaster(mon,player) end

---遍历宠物列表
---* actor ： 玩家对象
---* nIndex ： 索引(0开始)
---@param actor object
---@param nIndex int
---@nodiscard
function lib996:getslavebyindex(actor,nIndex) end

---修改宝宝名称
---* mob ： 宝宝对象
---* name ： 宝宝新名字
---@param mob object
---@param name object
---@nodiscard
function lib996:changemonname(mob,name) end

---修改宝宝等级
---* play ： 玩家对象
---* mon ： 宝宝对象
---* operate ： 操作符号(+,-,=)
---* nLevel ： 等级
---@param play object
---@param mon object
---@param operate string
---@param nLevel int
---@nodiscard
function lib996:changeslavelevel(play,mon,operate,nLevel) end

---根据makeId返回怪物对象
---* mapid ： 地图id
---* monUserId ： 怪物makeId(唯一id)
---@param mapid object
---@param monUserId string
---@nodiscard
function lib996:getmonbyuserid(mapid,monUserId) end

---根据怪物id返回怪物基础信息
---* idx ： 怪物的IDX
---* id ：id
---@param idx object
---@param id string
---@nodiscard
function lib996:getmonbaseinfo(idx,id) end

---检测范围内怪物数量
---* mapid ： 地图id
---* monName ： 怪物名称，nil 检测所有怪
---* nx ： 坐标X
---* ny ： 坐标Y
---* nRange ： 范围
---@param mapid object
---@param monName string
---@param nx int
---@param ny int
---@param nRange int
---@nodiscard
function lib996:checkrangemoncount(mapid,monName,nx,ny,nRange) end

---召唤拾取小精灵
---* player ： 玩家对象
---* monname ：精灵名称
---@param player object
---@param monname string
---@nodiscard
function lib996:createsprite(player,monname) end

---检测拾取小精灵
---* player ： 玩家对象
---* monname 精灵名称,为nil 则检测全部
---@param player object
---@param monname string
---@nodiscard
function lib996:checkspritelevel(player,monname) end

---拾取模式
---* player ： 玩家对象
---* mode ： 模式（0=以人物为中心捡取，1=以小精灵为中心捡取）
---* Range ： 范围
---* interval ： 间隔，最小500ms
---@param player object
---@param mode int
---@param Range int
---@param interval int
---@nodiscard
function lib996:pickupitems(player,mode,Range,interval) end

---关闭拾取模式
---* player ： 玩家对象
---@param player object
---@nodiscard
function lib996:stoppickupitems(player) end

---在指定位置优先打指定打怪
---* player ： 玩家对象
---* map ： 地图
---* X ： X坐标
---* Y ： Y坐标
---* MonName ： 优先攻击的怪物名称MonName支持多个怪物名称，怪物名称用 # 拼接
---@param player object
---@param map string
---@param X string
---@param Y string
---@param MonName string
---@nodiscard
function lib996:killmobappoint(player,map,X,Y,MonName) end

---临时增加怪物爆出物品
---* obj ： 人物、怪物对象
---* mon ： 怪物对象
---* itemname ： 物品名称
---@param obj object
---@param mon object
---@param itemname string
---@nodiscard
function lib996:additemtodroplist(obj,mon,itemname) end

---在指定地图xy坐标刷新怪物
---* mapid ： 地图id
---* x ： x坐标
---* y ： y坐标
---* monname ： 怪物名称
---* range ： 范围
---* count ： 数量
---* color ： 颜色
---@param mapid object
---@param x int
---@param y int
---@param monname str
---@param range int
---@param count int
---@param color int
---@nodiscard
function lib996:genmon(mapid,x,y,monname,range,count,color) end

---获取怪物主人对象
---* mon ： 怪物对象
---@param mon object
---@nodiscard
function lib996:getmonplayer(mon) end

---获取怪物id
---* mon ： 怪物对象
---@param mon object
---@nodiscard
function lib996:getmonidx(mon) end

---设置宝宝叛变
---* mon ： 怪物对象
---@param mon object
---@nodiscard
function lib996:betray(mon) end

---检测怪物的类型
---* mon ： 怪物对象
---@param mon object
---@nodiscard
function lib996:montype(mon) end

---创建行会
---* player ： 玩家对象
---* name ：行会名
---@param player object
---@param name string
---@nodiscard
function lib996:buildguild(player,name) end

---加入行会
---* player ： 玩家对象
---* name ：行会名
---@param player object
---@param name string
---@nodiscard
function lib996:guildaddmember(player,name) end

---退出行会
---* player ： 玩家对象
---* name ：行会名
---@param player object
---@param name string
---@nodiscard
function lib996:guilddelmember(player,name) end

---解散行会
---* player ： 玩家对象
---@param player object
---@nodiscard
function lib996:GuildCloseBefore(player) end

---获取人物所在行会成员数量
---* player ： 玩家对象
---@param player object
---@nodiscard
function lib996:getguildmembercount(player) end

---把行会添加到攻城列表
---* name ： 行会名
---* day ： 天数
---@param name string
---@param day int
---@nodiscard
function lib996:addtocastlewarlistex(name,day) end

---所有行会在当晚同时攻城
---@nodiscard
function lib996:addattacksabakall() end

---获取玩家所在的行会对象
---* player ： 玩家对象
---@param player object
---@nodiscard
function lib996:getmyguild(player) end

---搜索行会
---* index ： 0:行会ID 1:行会名称
---* key ： 搜索关键词
---@param index int
---@param key string
---@nodiscard
function lib996:findguild(index,key) end

---获取行会信息
---* guild ： 玩家对象
---* index ： 索引
---@param guild int
---@param index int
---@nodiscard
function lib996:getguildinfo(guild,index) end

---设置行会信息
---* guild ： 行会对象
---* index ： 索引
---* value ：要设置的内容
---@param guild object
---@param index int
---@param value string
---@nodiscard
function lib996:setguildinfo(guild,index,value) end

---返回所有行会对象
---@nodiscard
function lib996:getallguild() end

---指定对象加入指定行会
---* actor ： 指定的玩家对象
---* guiname ： 要加入的行会名称
---@param actor object
---@param guiname int
---@nodiscard
function lib996:addguildmember(actor,guiname) end

---踢出指定的行会成员
---* actor ： 要踢出玩家对象
---* guiname ： 行会名称
---@param actor object
---@param guiname int
---@nodiscard
function lib996:delguildmember(actor,guiname) end

---创建队伍
---* player ： 玩家对象
---@param player object
---@nodiscard
function lib996:creategroup(player) end

---添加队员
---* player ： 玩家对象
---* memberId ： 组员UserId（唯一id）
---@param player object
---@param memberId string
---@nodiscard
function lib996:addgroupmember(player,memberId) end

---删除队员
---* player ： 玩家对象
---* memberId ： 组员UserId（唯一id）
---@param player object
---@param memberId string
---@nodiscard
function lib996:delgroupmember(player,memberId) end

---获取队员列表
---* player ： 玩家对象
---@param player object
---@nodiscard
function lib996:getgroupmember(player) end

---添加镜像地图
---* oldMap ： 原地图ID
---* NewMap ： 新地图ID（此id可作为临时对象使用）
---* NewName ：新地图名
---* time ： 有效时间(秒)
---* BackMap ： 回城地图(有效时间结束后，传回去的地图)
---@param oldMap string
---@param NewMap string
---@param NewName string
---@param time int
---@param BackMap string
---@nodiscard
function lib996:addmirrormap(oldMap,NewMap,NewName,time,BackMap) end

---删除镜像地图
---* MapId ： 地图ID
---@param MapId object
---@nodiscard
function lib996:delmirrormap(MapId) end

---检测镜像地图是否存在
---* MapId ： 地图ID
---@param MapId object
---@nodiscard
function lib996:checkmirrormap(MapId) end

---添加地图特效
---* Id ： 特效播放ID，用于区分多个地图特效
---* MapId ： 地图ID
---* X ： 坐标X
---* Y ： 坐标Y
---* effId ： 特效ID
---* time ： 持续时间（秒）
---* mode ： 0:有人可见 1:自己可见 2:组队可见 3:行会成员可见 4:敌对可见
---@param Id int
---@param MapId object
---@param X int
---@param Y int
---@param effId int
---@param time int
---@param mode int
---@nodiscard
function lib996:mapeffect(Id,MapId,X,Y,effId,time,mode) end

---删除地图特效
---* Id ： 特效播放ID
---@param Id int
---@nodiscard
function lib996:delmapeffect(Id) end

---在地图上放置物品
---* actor ： 玩家对象
---* MapId ： 地图ID
---* X ： 坐标X
---* Y ： 坐标Y
---* range ： 范围
---* name ： 物品名
---* count ： 数量
---* time ： 时间（秒）
---* hint ： 是否掉落提示
---* take ： 是否立即拾取
---* self ： 仅自己拾取
---* order ： 是-按位置顺序，否-随机位置
---@param actor object
---@param MapId object
---@param X int
---@param Y int
---@param range int
---@param name string
---@param count int
---@param time int
---@param hint bool
---@param take bool
---@param self bool
---@param order bool
---@nodiscard
function lib996:throwitem(actor,MapId,X,Y,range,name,count,time,hint,take,self,order) end

---清理地图上指定名字的物品
---* MapId ： 地图ID
---* X ： 坐标X
---* Y ： 坐标Y
---* range ： 范围
---* itemName ： 物品名
---@param MapId object
---@param X int
---@param Y int
---@param range int
---@param itemName string
---@nodiscard
function lib996:clearitemmap(MapId,X,Y,range,itemName) end

---设定地图计时器
---* MapId ： 地图ID
---* Idx ： 计时器ID
---* second ： 时长（秒）
---* func ： 触发跳转的函数
---@param MapId object
---@param Idx int
---@param second int
---@param func string
---@nodiscard
function lib996:setenvirontimer(MapId,Idx,second,func) end

---关闭地图计时器
---* MapId ： 地图ID
---* Idx ： 计时器ID
---@param MapId object
---@param Idx string
---@nodiscard
function lib996:setenvirofftimer(MapId,Idx) end

---获取地图上指定范围内的对象
---* MapId ： 地图ID
---* X ： 坐标X
---* Y ： 坐标Y
---* range ： 范围
---* flag ： 1:玩家 2:怪物 4:NPC 8:物品
---@param MapId object
---@param X int
---@param Y int
---@param range int
---@param flag int
---@nodiscard
function lib996:getobjectinmap(MapId,x,y,range,flag) end

---获取怪物位置及复活时间
---* MapId ： 地图ID
---@param MapId object
---@nodiscard
function lib996:getmonrefresh(MapId) end

---设置地图跳转点
---* name ： 玩家对象
---* amapid ： 地图ID
---* jx ： 坐标X
---* jy ： 坐标Y
---* range ： 范围
---* bmapid ： 物品名
---* cx ： 数量
---* cy ： 时间（秒）
---* time ： 是否掉落提示
---@param name string
---@param amapid object
---@param jx int
---@param jy int
---@param range int
---@param bmapid object
---@param cx int
---@param cy int
---@param time int
---@nodiscard
function lib996:addmapgate(name,amapid,jx,jy,range,bmapid,cx,cy,time) end

---获取地图跳转点
---* name ： 跳转点名称
---* amapid ： 入口地图ID
---@param name string
---@param amapid object
---@nodiscard
function lib996:getmapgate(name,amapid) end

---删除地图跳转点
---* name ： 跳转点名称
---* amapid ： 入口地图ID
---@param name string
---@param amapid object
---@nodiscard
function lib996:delmapgate(name,amapid) end

---设置镜像地图剩余时间
---* MapId ： 镜像地图ID
---* time ： 剩余时间
---@param MapId object
---@param time int
---@nodiscard
function lib996:setmaptime(MapId,time) end

---获取镜像地图剩余时间
---* MapId ： 镜像地图ID
---@param MapId object
---@nodiscard
function lib996:getmaptime(MapId) end

---判断逻辑格是否为安全区
---* mapid ： 地图ID
---* x ： x坐标
---* y ： y坐标
---@param mapid object
---@param x int
---@param y int
---@nodiscard
function lib996:isinsafe(mapid, x, y) end

---判断逻辑格是否为攻城区
---* mapid ： 地图ID
---* x ： x坐标
---* y ： y坐标
---@param mapid object
---@param x int
---@param y int
---@nodiscard
function lib996:isincastle(mapid, x, y) end

---根据地图id返回地图名
---* mapid ： 地图ID
---@param mapid object
---@nodiscard
function lib996:getmapname(mapid) end

---获取对象int型变量
---* Type ： 类型0:玩家，1:行会，2:地图，3：物品，4：NPC，5:怪物
---* actor ： 对象 特殊：类型为物品时此处填makeindex
---* sVarName ： 变量名
---@param Type int
---@param actor obj
---@param sVarName string
---@nodiscard
function lib996:getint(Type,actor,sVarName) end

---设置对象int型变量
---* Type ： 类型0:玩家，1:行会，2:地图，3：物品，4：NPC，5:怪物
---* actor ： 对象 特殊：类型为物品时此处填makeindex
---* sVarName ： 变量名
---* nValue ： 变量值
---@param Type int
---@param actor obj
---@param sVarName string
---@param nValue int
---@nodiscard
function lib996:setint(Type,actor,sVarName,nValue) end

---获取对象str型变量
---* Type ： 类型0:玩家，1:行会，2:地图，3：物品，4：NPC，5:怪物
---* actor ： 对象 特殊：类型为物品时此处填makeindex
---* sVarName ： 变量名
---@param Type int
---@param actor obj
---@param sVarName string
---@nodiscard
function lib996:getstr(Type,actor,sVarName) end

---设置对象str型变量
---* Type ： 类型0:玩家，1:行会，2:地图，3：物品，4：NPC，5:怪物
---* actor ： 对象 特殊：类型为物品时此处填makeindex
---* sVarName ： 变量名
---* nValue ： 变量值
---@param Type int
---@param actor obj
---@param sVarName string
---@param nValue int
---@nodiscard
function lib996:setstr(Type,actor,sVarName,nValue) end

---获取系统int型变量
---* sVarName ： 变量名
---@param sVarName string
---@nodiscard
function lib996:getsysint(sVarName) end

---设置系统int型变量
---* sVarName ： 变量名
---* nValue ： 变量值
---@param sVarName string
---@param nValue int
---@nodiscard
function lib996:setsysint(sVarName,nValue) end

---获取系统str型变量
---* sVarName ： 变量名
---@param sVarName string
---@nodiscard
function lib996:getsysstr(sVarName) end

---设置系统str型变量
---* sVarName ： 变量名
---* nValue ： 变量值
---@param sVarName string
---@param nValue str
---@nodiscard
function lib996:setsysstr(sVarName,nValue) end

---自定义变量排序
---* varname ： 排序变量名
---* itype ： 0-所有玩家 1-在线玩家 2-行会
---* sort ： 0-升序，1-降序
---* count ： 获取的数据量 为空或0取所有，取前几名
---@param varname str
---@param itype int
---@param sort int
---@param count int
---@nodiscard
function lib996:sorthumvar(varname,itype,sort,count) end

---清理个人自定义变量
---* actor ： 要清理的人物对象传入 nil 表示清理所有玩家
---* varname ： 变量名 *表示所有变量
---@param actor object
---@param varname string
---@nodiscard
function lib996:clearhumcustvar(actor,varname) end

---清理系统自定义变量
---* varname ： 变量名 *表示所有变量
---@param varname string
---@nodiscard
function lib996:clearhumcustvar(varname) end

---清理自定义行会变量
---* actor ： 行会名称 nil 表示所有行会
---* varname ： 变量名 *表示所有变量
---@param actor object
---@param varname string
---@nodiscard
function lib996:clearguildcustvar(actor,varname) end

---添加buff
---* actor ： 对象
---* buffid ： buffid
---* time ： 持续时间为空则为buff表中时间
---* lap ： 叠加层数，默认1
---* player ： 施放者
---* abil ： 修改buff表att属性{[1]=200, [4]=20}，属性id=值
---@param actor object
---@param buffid int
---@param time int
---@param lap int
---@param player object
---@param abil table
---@nodiscard
function lib996:addbuff(actor,buffid,time,lap,player,abil) end

---删除buff
---* actor ： 对象
---* buffid ： buffid
---@param actor object
---@param buffid int
---@nodiscard
function lib996:delbuff(actor,buffid) end

---是否有buff
---* actor ： 对象
---* buffid ： buffid
---@param actor object
---@param buffid int
---@nodiscard
function lib996:hasbuff(actor,buffid) end

---获取buff信息
---* actor ： 对象
---* buffid ： buffid
---* itype ： 1:叠加层数 2:剩余时间
---@param actor object
---@param buffid int
---@param itype int
---@nodiscard
function lib996:getbuffinfo(actor,buffid,itype) end

---获取所有buff
---* actor ： 对象
---@param actor object
---@nodiscard
function lib996:getallbuffid(actor) end

---获取技能信息
---* actor ： 对象
---* skillid ： 技能ID
---* id ： 属性ID，1:等级，2:强化等级，3:熟练度
---@param actor object
---@param skillid int
---@param id int
---@nodiscard
function lib996:getskillinfo(actor,skillid,id) end

---添加技能
---* actor ： 玩家对象
---* skillid ： 技能ID
---* level ： 等级
---@param actor object
---@param skillid int
---@param level int
---@nodiscard
function lib996:addskill(actor,skillid,level) end

---删除技能
---* actor ： 玩家对象
---* cskillid ： 技能ID
---@param actor object
---@param skillid string
---@nodiscard
function lib996:delskill(actor,skillidr) end

---清空所有技能
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:clearskill(actor) end

---删除非本职业技能
---* actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:delnojobskill(actor) end

---设置技能等级
---* actor ： 玩家对象
---* skillid ： 技能ID
---* flag ： 类型：1-技能等级2-强化等级3-熟练度
---* point ： 等级或点数
---@param actor object
---@param skillid int
---@param flag int
---@param point int
---@nodiscard
function lib996:setskillinfo(actor,skillid,flag,point) end

---用脚本命令释放技能
---* actor ： 玩家对象
---* skillid ： 技能ID
---* type ： 类型：1-普通技能2-强化技能
---* level ： 技能等级
---* target ： 技能对象：1-攻击目标，2-自身，3-目标对象(即将开放)，4-当前地图坐标(即将开放)
---* flag ： 是否显示施法动作：0-不显示，1-显示
---@param actor object
---@param skillid int
---@param type int
---@param level int
---@param target int
---@param flag int
---@nodiscard
function lib996:releasemagic(actor,skillid,type,level,target,flag) end

---获取玩家沙巴克身份
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:castleidentity(actor) end

---获取沙巴克基本信息
---*  id ： 索引id
---@param id int
---@nodiscard
function lib996:castleinfo(id) end

---创建临时NPC
---*  npc ： npc对象
---*  x ： x坐标
---*  y ： y坐标
---*  npc ： json
---@param npc object
---@param x int
---@param y int
---@param npc str
---@nodiscard
function lib996:createnpc(npc,x,y,npc) end

---删除临时NPC
---*  npcid ： npc对象
---*  mapid ： 地图id
---@param npc object
---@param mapid object
---@nodiscard
function lib996:delnpc(npc,mapid) end

---根据ID获取NPC对象
---*  npcid ： npcid
---@param npcid int
---@nodiscard
function lib996:getnpcbyindex(npcid) end

---跳转到指定NPC附近
---*  actor ： 玩家对象
---*  npcid ： npcid
---*  rangea ： 范围：不在此范围内则移动到npc附近
---*  rangeb ： 范围：移动到NPC附近的范围内
---@param actor object
---@param npcid int
---@param rangea int
---@param rangeb int
---@nodiscard
function lib996:opennpcshowex(actor,npcid,rangea,rangeb) end

---设置NPC特效
---*  actor ： 玩家对象
---*  npcid ： npcid
---*  Effect ： 特效ID
---*  x ： x坐标
---*  y ： y坐标
---@param actor object
---@param npcid int
---@param Effect int
---@param x int
---@param y int
---@nodiscard
function lib996:setnpceffect(actor,npcid,Effect,x,y) end

---删除NPC特效
---*  actor ： 玩家对象
---*  npcid ： npcid
---@param actor object
---@param npcid int
---@nodiscard
function lib996:delnpceffect(actor,npcid) end

---获取NPC对象的Id
---*  npc ： 玩家对象
---@param npc object
---@nodiscard
function lib996:getnpcindex(npc) end

---添加对象定时器
---*  actor ： 玩家对象
---*  id ： 定时器id
---*  tick ： 执行间隔，秒
---*  count ： 执行次数，为0时不限次数
---@param actor object
---@param id int
---@param tick int
---@param count int
---@nodiscard
function lib996:setontimer(actor,id,tick,count) end

---移除对象定时器
---*  actor ： 玩家对象
---*  id ： 定时器id
---@param actor object
---@param id int
---@nodiscard
function lib996:setofftimer(actor,id) end

---添加系统定时器
---*  id ： 定时器id
---*  tick ： 执行间隔，秒
---*  count ： 执行次数，为 0时不限次数
---@param id int
---@param tick int
---@param count int
---@nodiscard
function lib996:setontimerex(id,tick,count) end

---移除系统定时器
---*  id ： 定时器id
---@param id int
---@nodiscard
function lib996:setofftimerex(id) end

---判断对象是否有定时器
---*  actor ： 玩家对象
---*  id ： 定时器id
---@param actor object
---@param id int
---@nodiscard
function lib996:hastimer(actor,id) end

---判断系统是否有定时器
---*  id ： 定时器id
---@param id int
---@nodiscard
function lib996:hastimerex(id) end

---是否有英雄
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:hashero(actor) end

---删除英雄
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:delhero(actor) end

---召唤英雄
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:recallhero(actor) end

---收回英雄
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:unrecallhero(actor) end

---获取英雄对象
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:gethero(actor) end

---判断英雄是否为唤出状态
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:isherorecall(actor) end

---判断英雄是否为唤出状态
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function lib996:isherorecall(actor) end

---聊天触发
---*  self ： 玩家对象
---*  msg ： 内容
---*  chat ： 1;系统;2;喊话3;私聊4;行会5;组队6;附近7;世界
---@param self object
---@param msg int
---@param chat str
---@nodiscard
function triggerchat(self,msg,chat) end

---脱装备时
---* actor ： 对象
---* itemid ： 物品id
---* pos ： 位置
---* itemname ： 物品名称
---* itemmakeid ： makeid（唯一ID）
---@param actor object
---@param itemid int
---@param pos int
---@param itemname str
---@param itemmakeid int
---@nodiscard
function on_take_off(actor,itemid,pos,itemname,itemmakeid) end

---穿装备时
---* actor ： 对象
---* itemid ： 物品id
---* pos ： 物品名称
---* itemname ： 位置
---* itemmakeid ： makeid（唯一ID）
---@param actor object
---@param itemid int
---@param pos int
---@param itemname str
---@param itemmakeid int
---@nodiscard
function on_take_on(actor,itemid,pos,itemname,itemmakeid) end

---物品进入背包时
---*  actor ： 玩家对象
---*  itemobj ： 物品对象
---@param actor object
---@param itemobj object
---@nodiscard
function addbag(actor,itemobj) end

---物品进入背包时
---*  actor ： 玩家对象
---*  itemobj ： 物品对象
---@param actor object
---@param itemobj object
---@nodiscard
function addbag(actor,itemobj) end

---充值触发
---*  actor ： 玩家对象
---*  gold ： 充值rmb金额
---*  productid ： 商品ID(前端调起充值时候传递的参数)
---*  moneyid ： 充值获得货币ID
---@param actor object
---@param gold int
---@param productid int
---@param moneyid int
---@nodiscard
function recharge(actor,gold,productid,moneyid) end

---NPC点击触发
---*  actor ： 玩家对象
---*  npcid ： 充值rmb金额
---@param actor object
---@param npcid int
---@nodiscard
function clicknpc(actor,npcid) end

---玩家跳转地图触发
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function entermap(actor) end

---捡取触发
---*  actor ： 玩家对象
---*  itemobj ： 物品对象
---@param actor object
---@param itemobj object
---@nodiscard
function pickupitemex(actor,itemobj) end

---奔跑触发
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function run(actor) end

---走路触发
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function walk(actor) end

---升级触发
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function playlevelup(actor) end

---退出触发
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function playoffline(actor) end

---属性变化时触发
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function sendability(actor) end

---攻城开始时触发
---@nodiscard
function castlewarstart() end

---攻城结束时触发
---@nodiscard
function castlewarend() end

---占领沙巴克触发
---@nodiscard
function getcastle0() end

---引擎启动时
---@nodiscard
function startup() end

---登录时触发
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function login(actor) end

---行会初始化
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function loadguild(actor) end

---每天第一次登录
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function setday(actor) end

---玩家死亡之前
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function nextdie(actor) end

---玩家死亡时
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function playdie(actor) end

---人物复活时
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function revival(actor) end

---人物小退触发
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function playreconnection(actor) end

---玩家改名后
---*  actor ： 玩家对象
---*  oname ： 旧名字
---*  actor ： 新名字
---@param actor object
---@param oname str
---@param nname str
---@nodiscard
function changehumnameok(actor,oname,nname) end

---怪物刷新时
---*  mon ： 怪物对象
---@param mon object
---@nodiscard
function makemonnotice(mon) end

---离开地图时
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function leavemap(actor) end

---添加buff时
---*  actor ： 对象
---*  buffid ： buffid
---*  time ： buff剩余时间
---@param actor object
---@param buffid int
---@param time int
---@nodiscard
function addbuffafter(actor,buffid,time) end

---删除buff时
---*  actor ： 对象
---*  buffid ： buffid
---*  time ： buff剩余时间
---@param actor object
---@param buffid int
---@param time int
---@nodiscard
function delbuffafter(actor,buffid,time) end

---穿装备前
---* actor ： 对象
---* itemid ： 物品id
---* pos ： 位置
---* itemname ： 物品名称
---* itemmakeid ： makeid（唯一ID）
---@param actor object
---@param itemid int
---@param pos int
---@param itemname str
---@param itemmakeid int
---@return bool |true——允许穿戴|false—不许
---@nodiscard
function on_take_on_pre(actor,itemid,pos,itemname,itemmakeid) end

---自动寻路开始时触发
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function findpathbegin(actor) end

---获取经验时触发
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function gainexp(actor) end

---货币改变时触发
---*  actor ： 玩家对象
---*  id ： 货币id
---@param actor object
---@param id int
---@nodiscard
function moneychangeex(actor,id) end

---怪物掉落物品前触发
---*  actor ： 玩家对象
---*  item ： item对象
---@param actor object
---@param item object
---@nodiscard
function mondropitemex(actor,item) end

---受伤前触发
---*  attack ： 攻击者对象
---*  role ： 受害者对象
---*  ack ： 攻击者本次打出的攻击力
---*  def ： 受害者本次受击的防御力
---*  skillid ： 技能id
---*  hurttype ： 伤害类型 0：物理伤害，1：魔法伤害
---@param attack object
---@param role object
---@param ack int
---@param def int
---@param skillid int
---@param hurttype int
---@nodiscard
function on_hurt_pre(attack,role,ack,def,skillid,hurttype) end

---注册虚拟机index
---*  idx ： 虚拟机编号 QF:999999999,QM:999999996
---*  scriptfile ： 文件路径
---@param idx int
---@param scriptfile str
---@nodiscard
function lib996:setsysindex(idx,scriptfile) end

---英雄复活时
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function herorevival(actor) end

---英雄死亡时
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function herodie(actor) end

---脱装备前
---* actor ： 对象
---* itemid ： 物品id
---* pos ： 位置
---* itemname ： 物品名称
---* itemmakeid ： makeid（唯一ID）
---@param actor object
---@param itemid int
---@param pos int
---@param itemname str
---@param itemmakeid int
---@return bool |true——允许脱下|false—不许
---@nodiscard
function on_take_off_pre(actor,itemid,pos,itemname,itemmakeid) end

---英雄穿装备时
---*  actor ： 玩家对象
---*  itemid ： 物品id
---*  where ： 位置
---*  itemName ： 物品名称
---*  makeindex ： makeid（唯一ID）
---@param actor object
---@param itemid int
---@param where int
---@param itemName string
---@param makeindex int
---@nodiscard
function herotakeonex(actor, itemid, where, itemname, makeindex) end

---物品进入英雄背包时
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function addherobag(actor) end

---新建任务时触发
---*  actor ： 玩家对象
---*  id ： 新建的任务id
---@param actor object
---@param id int
---@nodiscard
function picktask(actor,id) end

---任务变化时
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function changetask(actor) end

---任务被点击时
---*  actor ： 玩家对象
---*  id ： 任务id
---@param actor object
---@param id int
---@nodiscard
function clicknewtask(actor,id) end

---任务删除时
---*  actor ： 玩家对象
---@param actor object
---@nodiscard
function deletetask(actor) end

---设置英雄名称
---*  actor ： 玩家对象
---*  name ： 英雄名称  
---@param actor object
---@param name str
---@nodiscard
function lib996:checkheroname(actor,name) end

---获取玩家背包指定物品的数量
---*  actor ： 玩家对象
---*  itemname ： 物品名称
---*  itype ： 绑定类型 0：绑定，1非绑定，2绑定/非绑定
---@param actor object
---@param itemname str
---@param itype int
---@nodiscard
function lib996:itemcount(actor,itemname,itype) end

---判断虚拟机index是否存在
---*  id ： id
---@param id int
---@nodiscard
function lib996:hassysindex(id) end

---根据物品id获取物品名称
---*  id ： 物品id
---@param id int
---@nodiscard
function lib996:getnamebyindex(id) end

---根据物品makeindex获取物品名称
---*  makeindex ： 物品makeindex
---@param makeindex int
---@nodiscard
function lib996:getnamebymakeindex(makeindex) end

---根据技能id获取技能名称
---*  id ： 技能id
---@param id int
---@nodiscard
function lib996:getskillname(id) end

---根据技能名称获取技能id
---*  name ： 技能name
---@param name str
---@nodiscard
function lib996:getskillindex(name) end

---立即杀死角色 
---* aactor ： 受害者对象
---* babtor ： 凶手对象 填nil为系统杀死
---@param aactor object
---@param babtor object
---@return bool |true——成功|false——失败
---@nodiscard
function lib996:kill(aactor,babtor) end

---获取角色技能最大冷却时间
---* id ： 技能id
---@param id int
---@return int |成功——剩余CD时间-单位毫秒|失败——-1
---@nodiscard
function lib996:getskilldefaultcd(id) end

---判断坐标是否在指定区域中
---* isx ： 判断定的x坐标
---* isy ： 判断定的y坐标
---* rx ： 区域中心的x坐标
---* ry ： 区域中心的y坐标
---* radius ： 区域半径
---@param isx int
---@param isy int
---@param rx int
---@param ry int
---@param radius int
---@return boolean |true——在区域中|false——不在
---@nodiscard
function lib996:isinregion(isx,isy,rx,ry,radius) end

---获取地图上怪物的数量
---* mapid ： 地图id
---* monid ： 怪物id
---* ignbb ： 是否忽略宝宝 true:忽略 false:不忽略
---@param mapid int
---@param monid int
---@param ignbb bool
---@return int |成功——怪物数量|失败——-1
---@nodiscard
function lib996:getmoncount(mapid,monid,ignbb) end

---获取地图上玩家的数量
---* mapid ： 地图id
---* igndied ： 是否忽略死亡角色 true:忽略 false:不忽略
---@param mapid int
---@param igndied bool
---@return int |成功——玩家数量|失败——-1
---@nodiscardfalse——
function lib996:getplaycount(mapid,igndied) end

---获取行会id 
---* guiname ： 行会名
---@param guiname str
---@return int |成功——行会id|失败——-1
---@nodiscard
function lib996:getguildid(guiname) end

---获取行会名称 
---* guiid ： 行会id
---@param guiid int
---@return int |成功——行会名称|失败——nil
---@nodiscard
function lib996:getguildname(guiid) end

---设置行会关系 
---* aguiid ： A行会id
---* bguiid ： B行会id
---* opt ： 行会名 0：普通，1：敌对，2：盟友
---@param aguiid int
---@param bguiid int
---@param opt str
---@return boolean |true——成功|false——失败
---@nodiscard
function lib996:setguildrelation(aguiid,bguiid,opt) end

---获取两个行会之间的关系 
---* aguiid ： A行会名称
---* bguiid ： B行会名称
---@param aguiid int
---@param bguiid int
---@return int |成功——行会关系|失败——-1
---@nodiscard
function lib996:getguildrelation(aguiid,bguiid) end

---判断行会是否存在 
---* guiname ： 行会名
---@param guiname str
---@return boolean |true——存在|false——不存在
---@nodiscard
function lib996:hasguild(guiname) end

---判断某个玩家是否在该行会中 
---* actor ： 玩家对象
---* guiid ： 行会id
---@param actor object
---@param guiid str
---@return boolean |true——存在|false——不存在
---@nodiscard
function lib996:isinguild(actor,guiid) end

---设置行会成员在行会中的职位 
---* actor ： 玩家对象
---* pos ： 在行会中的职位 0：会长，1：副会长，2：称谓3，3：称谓4，4称谓5
---@param actor object
---@param pos int
---@return boolean |true——设置成功|false——设置失败
---@nodiscard
function lib996:setplayguildlevel(actor,pos) end

---获取行会成员在行会中的职位 
---* actor ： 玩家对象
---@param actor object
---@return int |成功——返回当前职位|失败——-1
---@nodiscard
function lib996:getplayguildlevel(actor) end
 
---添加称号时触发   
---*  actor ： 玩家对象
---*  id ： 称号id
---@param actor object
---@param id int
---@nodiscard
function on_add_title(actor,id) end


---删除称号时触发    
---*  actor ： 玩家对象
---*  id ： 称号id
---@param actor object
---@param id int
---@nodiscard
function on_del_title(actor,id) end

---添加玩家称号   
---*  actor ： 玩家对象
---*  id ： 称号id
---@param actor object
---@param id int
---@return bool |true——成功|false——失败
---@nodiscard
function lib996:addtitle(actor,id) end

---删除玩家称号   
---*  actor ： 玩家对象
---*  id ： 称号id
---@param actor object
---@param id int
---@return bool |true——成功|false——失败
---@nodiscard
function lib996:deltitle(actor,id) end

---设置玩家当前展示称号   
---*  actor ： 玩家对象
---*  id ： 称号id
---@param actor object
---@param id int
---@return bool |true——成功|false——失败
---@nodiscard
function lib996:setcurtitle(actor,id) end

---获取玩家当前展示称号   
---*  actor ： 玩家对象
---@param actor object
---@return int |成功——返回称号id|失败——返回-1
---@nodiscard
function lib996:getcurtitle(actor) end

---卸下玩家当前展示称号   
---*  actor ： 玩家对象
---*  id ： 称号id
---@param actor object
---@param id int
---@return bool |true——成功|false——失败
---@nodiscard
function lib996:discurtitle(actor,id) end


---获取玩家所有称号   
---*  actor ： 玩家对象
---@param actor object
---@return table |成功——称号id表|失败——返回nil
---@nodiscard
function lib996:getalltitle(actor) end

---玩家放技能时触发
---* actor ： 释放者
---* role ： 受害者（不存在时为空）
---* skillid ： 技能id
---* skillname ： 技能名称
---@param actor object
---@param role object
---@param skillid int
---@param skillname str
---@nodiscard
function on_spell(actor,role,skillid,skillname) end


---玩家放技能前触发
---* actor ： 释放者
---* role ： 受害者（不存在时为空）
---* skillid ： 技能id
---* skillname ： 技能名称
---@param actor object
---@param role object
---@param skillid int
---@param skillname str
---@return bool |true——允许释放|false—阻止释放
---@nodiscard
function on_spell_pre(actor,role,skillid,skillname) end

---获取当前引擎号
---@return str 返回当前引擎号
---@nodiscard
function getm2version() end

---获取游戏id
---@return int 返回游戏id
---@nodiscard
function getgameid() end

---获取服务器id
---@return int 返回服务器id
---@nodiscard
function getserverid() end

---请求HTTPGet
---* url ： 链接地址
---* strfun ： 回调函数
---@param url str
---@param strfun func
---@nodiscard
function lib996:httprequestget(url,strfun) end

---请求HTTPPost
---* url ： 链接地址
---* strfun ： 回调函数
---* suffix ： 请求信息
---* head ： 请求头
---@param url str
---@param strfun func
---@param suffix str
---@param head json字符串格式
---@nodiscard
function lib996:httprequestpost(url,strfun,suffix,head) end

---判断对象能否跑步
---* actor ： 对象
---@param actor object
---@nodiscard
function lib996:isrun(actor) end

---判断对象能否走路
---* actor ： 对象
---@param actor object
---@nodiscard
function lib996:iswalk(actor) end

---判断逻辑格是否为空
---* mapid ： 地图ID
---* x ： x坐标
---* y ： y坐标
---@param mapid object
---@param x int
---@param y int
---@nodiscard
---@return 类型：bool true：为空 false：不为空
function lib996:isempty(mapid, x, y) end

---设置角色技能最大冷却时间
---* actor ： 玩家对象
---* id ： 技能id
---* time ： cd时间（毫秒）
---@param actor object
---@param id int
---@param time int
---@nodiscard
function lib996:setskillmaxcd(actor,id,time) end

---获取角色技能剩余冷却时间
---* actor ： 玩家对象
---* id ： 技能id
---@param actor object
---@param id int
---@nodiscard
---@return 类型：int 成功：剩余CD时间-单位毫秒，失败：-1
function lib996:getskillcd(actor,id) end

---设置角色技能剩余冷却时间
---* actor ： 玩家对象
---* id ： 技能id
---* time ： cd时间（毫秒）0：立即刷新
---@param actor object
---@param id int
---@param time int
---@nodiscard
function lib996:setskillcd(actor,id,time) end

---摆摊售出物品时触发
---* actor ： 摊主
---* buyer ： 买主
---* makeinde ：售出物品唯一id
---* ItemId ： 售出物品id
---* moneyid ： 货币id
---* moneynum ： 货币数量
---@param actor object
---@param buyer object
---@param makeinde int
---@param ItemId int
---@param moneyid int
---@param moneynum int
---@nodiscard
function on_stall_item(actor,buyer,makeinde,ItemId,moneyid,moneynum) end

---设置沙巴克的拥有者行会
---* guiid ： 行会id
---@param guiid str
---@nodiscard
function lib996:setcastleownguild(guiid) end

---获取沙巴克的拥有者行会
---@nodiscard
---@return str |成功——返回拥有者行会名称|失败——nil
function lib996:getcastleownguild() end

---判断攻城战是否开启
---@nodiscard
---@return bool |true——开始|false——未开始
function lib996:iscastlewar() end

---获取攻城时间
---@nodiscard
---@return str |成功——返回临时占领的行会名称|失败——nil
function lib996:castlestart() end

---buff触发血量改变时
---* actor ： 对象
---* buffID ： buffid
---* buffGroup buff组
---* HP ： hp
---* BUFFhost ： 释放者
---@param actor object
---@param buffID int
---@param buffGroup int
---@param HP int
---@param BUFFhost object
---@nodiscard
---@return 类型：int hp
function bufftriggerhpchange(actor,buffID,buffGroup,HP,BUFFhost) end

---攻击时
---* attacks ： 对象
---* roles ： buffid
---* skillid buff组
---@param attacks object
---@param roles int
---@param skillid int
---@nodiscard
function attack(attacks,roles,skillid) end

--获取仓库剩余空格数
---* actor ： 对象
---@param actor object
---@nodiscard
---@return int |空格数|失败则返回-1
function lib996:getsblank(actor) end

---获取玩家仓库指定物品的数量
---* actor ： 对象
---* itemname ： 物品名称
---* itype ： 绑定类型 0：绑定，1非绑定，2绑定/非绑定
---@param actor object
---@param itemname str
---@param itype int
---@return int |指定物品的数量|失败则返回-1
---@nodiscard
function lib996:sitemcount(actor,itemname,itype) end

---获取玩家仓库最大格子数
---* actor ： 对象
---@param actor object
---@nodiscard
---@return int |仓库最大格子数|失败则返回-1
function lib996:getssize(actor) end

---删除玩家仓库指定物品
---* actor ： 对象
---* itemname ： 物品名称
---* qty ： 数量
---@param actor object
---@param itemname str
---@param qty int
---@return bool |true——成功|false——失败
---@nodiscard
function lib996:delsitems(actor,itemname,qty) end

---根据唯一id销毁玩家仓库物品
---* actor ： 对象
---* makeid ： 唯一id
---* count ： 叠加物品扣除数量，不填此参数，默认全部扣除，不可叠加物品全部扣除
---@param actor object
---@param makeid int
---@param count int
---@return bool |true——成功|false——失败
---@nodiscard
function lib996:dessitems(actor,makeid,count) end

---获取buff组别
---* buffid ： buffid
---@param buffid int
---@return 类型：int 组别
---@nodiscard
function lib996:getbuffgroup(buffid) end

---获取buff配置时间
---* buffid ： buffid
---@param buffid int
---@return 类型：int 时间
---@nodiscard
function lib996:getbufftemtime(buffid) end

---获取buff配置属性
---* buffid ： buffid
---@param buffid int
---@return 类型：table
---@nodiscard
function lib996:getbufftemattr(buffid) end

---判断对象是否可被攻击
---* actor ： 攻击者
---* role ： 被攻击者
---@param actor object
---@param role object
---@return 类型：bool | true：能 | false：不能
---@nodiscard
function lib996:canattack(actor,role) end





return lib996












