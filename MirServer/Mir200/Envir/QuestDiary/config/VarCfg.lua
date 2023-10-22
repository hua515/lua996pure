VarCfg = {}

--引擎U变量
VarCfg.U_create_actor_time                  = "U0"                      --创建角色时间戳
VarCfg.U_create_actor_openday               = "U1"                      --创建角色时已开服的天数
VarCfg.U_real_recharge                      = "U2"                      --总充值金额
VarCfg.U_today_real_recharge                = "U3"                      --今日充值金额

--引擎T变量
VarCfg.T_daily_date                         = "T1"                      --格式 20211103 年月日，  每日凌晨更新，如果凌晨不在线每日第一次登陆更新

--引擎变量 S
VarCfg.S_BattleSpirit_Data                  = "LCZ_BattleSpirit_Data"   --战灵数据
VarCfg.S_AegisPanel_Data                    = "LCZ_AegisPanel_Data"     --神盾数据
VarCfg.S_DivineTroops_Data                  = "LCZ_DivineTroops_Data"   --神兵数据

--临时自定义变量
VarCfg.Die_Flag                         = "N$B死掉了"                   --死亡触发之前处理 0 没死 1死掉了
VarCfg.Hero_Sex                         = "N$B_Hero_Sex"
VarCfg.Hero_Job                         = "N$B_Hero_Job"
VarCfg.Die_Drop_item                    = "S$B死亡掉装备"               --死亡爆出的装备
VarCfg.Recharge_Temp                    = "S$B充值记录"                 --充值临时记录

--自定义个人变量
VarCfg.Hero_renew_level                 = "Hero_renew_level"            --英雄转生_转生等级
VarCfg.S_cur_mapid                      = "SSJ_cur_mapid"               --当前所在地图id，切换地图时候获取上一次的地图id
VarCfg.VipLevel                         = "VipLevel"                    --vip等级
VarCfg.S_fashion_clothes                = "SSJ_fashion_clothes_"        --角色幻甲的变量名前缀
VarCfg.S_fashion_weapons                = "SSJ_fashion_weapons_"        --角色幻武的变量名前缀
VarCfg.S_pick_pet                       = "SSJ_pick_pet"                --捡物精灵是否开启
VarCfg.L_SummonPet                      = "LCZ_SummonPet_U4"            --召唤宠物状态 
VarCfg.L_FindBaoCount                   = "LCZ_FindBaoCount"            --藏宝图次数
VarCfg.AutoFight                        = "AutoFight_U3"                --自动战斗
VarCfg.limitUseItem                     = "L_limitUseItem"              --物品限制使用

VarCfg.mission_wkrw                     = "HD_mission_wkrw"             --挖矿任务完成状态 0=未接受 1=已接受但未完成 2=已完成

--引擎N变量
VarCfg.N_cur_level                      = "N$A_当前等级"                --当前等级(为了升级触发获取到上一次是多少级)



return VarCfg