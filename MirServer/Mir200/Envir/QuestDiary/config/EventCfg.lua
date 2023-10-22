EventCfg = {}

--引擎事件
EventCfg.goSystemStart              = "goSystemStart"                   --引擎启动触发
EventCfg.onNewHuman                 = "onNewHuman"                      --新角色第一次登录    (参数：actor)
EventCfg.onLogin                    = "onLogin"                         --登录    (参数：actor)
EventCfg.onLoginAttr                = "onLoginAttr"                     --登录附加属性    (参数：actor, 登录属性数据)
EventCfg.onLoginEnd                 = "onLoginEnd"                      --登录完成    (参数：actor, 登录同步数据)
EventCfg.onKillMon                  = "onKillMon"                       --任意地图杀怪    (参数：actor, 死亡怪物对象, 死亡怪物idx)
EventCfg.onkillplay                 = "onkillplay"                      --任意地图杀人
EventCfg.onPlayLevelUp              = "onPlayLevelUp"                   --玩家升级    (参数：actor, 当前等级, 之前等级)
EventCfg.onTakeOnEx                 = "onTakeOnEx"                      --穿装备
EventCfg.onTakeOffEx                = "onTakeOffEx"                     --脱装备
EventCfg.onAddBag                   = "onAddBag"                        --物品进背包
EventCfg.onExitGame                 = "onExitGame"                      --小退或大退游戏
EventCfg.onTriggerChat              = "onTriggerChat"                   --聊天栏输入信息
EventCfg.onClicknpc                 = "onClicknpc"                      --点击某NPC
EventCfg.onRechargeBefore           = "onRechargeBefore"                --充值前触发,修改实充用(参数：actor, 充值rmb金额, 产品ID（保留）, 货币ID)
EventCfg.onRecharge                 = "onRecharge"                      --充值     (参数：actor, 充值rmb金额, 产品ID（保留）, 货币ID)
EventCfg.goEnterMap                 = "goEnterMap"                      --进入地图
EventCfg.goSwitchMap                = "goSwitchMap"                     --切换地图
EventCfg.onPostDie                  = "onPostDie"                       --角色死亡后触发    (参数：actor被击杀者对象,hiter杀人者对象)
EventCfg.onRevival                  = "onRevival"                       --角色复活之后触发    (参数：actor)
EventCfg.onMove                     = "onMove"                          --移动触发 (参数：actor, 0跑/1走)
EventCfg.onLoserCar                 = "onLoserCar"                      --丢失镖车触发    (参数：actor, 镖车对象, 镖车idx)
EventCfg.onKillCar                  = "onKillCar"                       --击杀镖车触发    (参数：actor, 镖车对象, 镖车idx)
EventCfg.goCastlewarStart           = "gocastlewarstart"                --攻城开始时触发
EventCfg.goCastlewarEnd             = "goCastlewarend"                  --攻城结束时触发
EventCfg.onHeroLoginAttr            = "onHeroLoginAttr"                 --英雄登录附加属性      (参数：actor, hero, 英雄登陆属性数据)
EventCfg.onHerologinEnd             = "onHerologinEnd"                  --英雄登录完成          (参数：actor, hero)
EventCfg.onFashionUpdata            = "onFashionUpdata"                 --装扮更新触发          (参数：actor, 更新对象类型[1玩家/2英雄],idx(对应装扮配置.lua),value(1开启/2穿戴))
EventCfg.onHeroCreateEnd            = "onHeroCreateEnd"                 --英雄创建完成触发      (参数：actor)
EventCfg.onHeroCreateEnd            = "onHeroCreateEnd"                 --英雄创建完成触发      (参数：actor)
EventCfg.onHurtPre                  = "onHurtPre"                       --伤害触发              (参数：actor)
EventCfg.onKillPets                 = "onKillPets"                      --宝宝死亡触发          (参数：actor)
EventCfg.onAttack                   = "onAttack"                        --攻击触发              (参数：actor)
EventCfg.OnMondropitemex            = "OnMondropitemex"                 --怪物掉落物品前触发     (参数：actor)


--游戏事件
EventCfg.goZSLevelChange            = "goZSLevelChange"                 --转生等级发生变化 (参数：actor, 当前转生等级， 之前的转生等级)
EventCfg.goBeforedawn               = "goBeforedawn"                    --机器人脚本每日凌晨触发  (参数：actor, 凌晨同步数据)
EventCfg.roBeforedawn               = "roBeforedawn"                    --机器人脚本每日凌晨触发 (已开服天数)
EventCfg.goDailyUpdate              = "goDailyUpdate"                   --每日更新(凌晨或每日第一次登录)(参数：actor, 是否每日第一次登录, 同步数据)
EventCfg.goCheckModule              = "goCheckModule"                   --检查是否有模块达到开启要求
EventCfg.goOpenModule               = "goOpenModule"                    --某模块达到开启要求(参数：actor, 模块ID)
EventCfg.goPickUpItemEx             = "goPickUpItemEx"                  --拾取物品后触发(参数：actor, item，--等待支持num)
    
return EventCfg