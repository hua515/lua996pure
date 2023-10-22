local config = { 
	[1] = { 
		Idx=1,
		name="生命值",
		nbvalue="1#0#0",
		type=1,
		desc="生命值",
		isshow=1,
		scolor=250,
		sort=11,
	},
	[2] = { 
		Idx=2,
		name="魔法值",
		nbvalue="3#0#0",
		type=1,
		desc="魔法值",
		isshow=1,
		scolor=146,
		sort=12,
	},
	[3] = { 
		Idx=3,
		name="攻击下限",
		nbvalue="20#0#0",
		type=1,
		desc="战士的核心属性，决定物理伤害",
		isshow=1,
		scolor=249,
		sort=3,
	},
	[4] = { 
		Idx=4,
		name="攻击上限",
		nbvalue="20#0#0",
		type=1,
		desc="战士的核心属性，决定物理伤害",
		isshow=1,
		scolor=249,
		sort=3,
	},
	[5] = { 
		Idx=5,
		name="魔法下限",
		nbvalue="0#0#0",
		type=1,
		desc="法师的核心属性，决定魔法伤害",
		isshow=1,
		sort=4,
	},
	[6] = { 
		Idx=6,
		name="魔法上限",
		nbvalue="0#0#0",
		type=1,
		desc="法师的核心属性，决定魔法伤害",
		isshow=1,
		sort=4,
	},
	[7] = { 
		Idx=7,
		name="道术下限",
		nbvalue="0#0#0",
		type=1,
		desc="道士的核心属性，决定道术伤害",
		isshow=1,
		sort=5,
	},
	[8] = { 
		Idx=8,
		name="道术上限",
		nbvalue="0#0#0",
		type=1,
		desc="道士的核心属性，决定道术伤害",
		isshow=1,
		sort=5,
	},
	[9] = { 
		Idx=9,
		name="防御下限",
		nbvalue="15#0#0",
		type=1,
		desc="抵抗受到的物理伤害",
		isshow=1,
		sort=1,
	},
	[10] = { 
		Idx=10,
		name="防御上限",
		nbvalue="15#0#0",
		type=1,
		desc="抵抗受到的物理伤害",
		isshow=1,
		sort=1,
	},
	[11] = { 
		Idx=11,
		name="魔防下限",
		nbvalue="15#0#0",
		type=1,
		desc="抵抗受到的魔法伤害",
		isshow=1,
		sort=2,
	},
	[12] = { 
		Idx=12,
		name="魔防上限",
		nbvalue="15#0#0",
		type=1,
		desc="抵抗受到的魔法伤害",
		isshow=1,
		sort=2,
	},
	[13] = { 
		Idx=13,
		name="准确",
		nbvalue="48#0#0",
		type=1,
		desc="物理攻击的命中概率",
		isshow=1,
		scolor=250,
		sort=9,
	},
	[14] = { 
		Idx=14,
		name="敏捷",
		nbvalue="48#0#0",
		type=1,
		desc="闪避受到的物理攻击",
		isshow=1,
		sort=10,
	},
	[15] = { 
		Idx=15,
		name="魔法躲避",
		nbvalue="0#0#0",
		type=3,
		desc="闪避受到的魔法攻击",
		isshow=2,
		sort=13,
	},
	[16] = { 
		Idx=16,
		name="毒物躲避",
		nbvalue="0#0#0",
		type=3,
		desc="增加一定的麻痹抗性",
		isshow=2,
		sort=14,
	},
	[17] = { 
		Idx=17,
		name="中毒恢复",
		nbvalue="0#0#0",
		type=3,
		desc="缩减中毒时间和麻痹时间",
		isshow=2,
		sort=15,
	},
	[18] = { 
		Idx=18,
		name="体力恢复",
		nbvalue="0#0#0",
		type=3,
		desc="提高安全区生命值恢复效果",
		isshow=2,
		sort=16,
	},
	[19] = { 
		Idx=19,
		name="魔法恢复",
		nbvalue="0#0#0",
		type=3,
		desc="提高安全区魔法值恢复效果",
		isshow=2,
		sort=17,
	},
	[20] = { 
		Idx=20,
		name="攻击速度",
		nbvalue="0#0#0",
		type=1,
		desc="影响角色攻击速度",
		isshow=2,
		scolor=249,
		sort=6,
	},
	[21] = { 
		Idx=21,
		name="暴击几率增加",
		nbvalue="75#0#0",
		type=3,
		desc="攻击时触发暴击的概率",
		isshow=2,
		scolor=253,
		sort=18,
	},
	[22] = { 
		Idx=22,
		name="暴击伤害增加",
		nbvalue="10#0#0",
		type=3,
		desc="暴击时的伤害",
		isshow=2,
		scolor=254,
		sort=28,
	},
	[23] = { 
		Idx=23,
		name="韧性",
		nbvalue="75#0#0",
		type=2,
		desc="降低被暴击概率",
		isshow=2,
		sort=999,
	},
	[24] = { 
		Idx=24,
		name="暴击抵抗",
		nbvalue="0#0#0",
		type=1,
		desc="降低受到的暴击伤害",
		isshow=2,
		sort=999,
	},
	[25] = { 
		Idx=25,
		name="增加攻击伤害",
		nbvalue="0#0#0",
		type=3,
		desc="增加造成的伤害",
		isshow=2,
		scolor=254,
		sort=20,
	},
	[26] = { 
		Idx=26,
		name="物理伤害减少",
		nbvalue="0#0#0",
		type=3,
		desc="减少受到的物理伤害",
		isshow=2,
		scolor=254,
		sort=21,
	},
	[27] = { 
		Idx=27,
		name="魔法伤害减少",
		nbvalue="0#0#0",
		type=3,
		desc="减少受到的魔法伤害",
		isshow=2,
		scolor=254,
		sort=22,
	},
	[28] = { 
		Idx=28,
		name="忽视目标防御",
		nbvalue="300#0#0",
		type=3,
		desc="攻击无视对方一定的防御力",
		isshow=2,
		scolor=254,
		sort=23,
	},
	[29] = { 
		Idx=29,
		name="所有伤害反弹",
		nbvalue="0#0#0",
		type=3,
		desc="反弹一定的伤害",
		isshow=2,
		scolor=254,
		sort=24,
	},
	[30] = { 
		Idx=30,
		name="人物体力增加",
		nbvalue="0#0#0",
		type=3,
		desc="增加一定比例的生命",
		isshow=2,
		scolor=254,
		sort=26,
	},
	[31] = { 
		Idx=31,
		name="人物魔力增加",
		nbvalue="0#0#0",
		type=3,
		desc="增加一定比例的魔法",
		isshow=2,
		scolor=254,
		sort=27,
	},
	[32] = { 
		Idx=32,
		name="增加目标爆率",
		nbvalue="0#0#0",
		type=3,
		desc="提高击杀玩家的爆装几率",
		isshow=2,
		scolor=254,
		sort=25,
	},
	[33] = { 
		Idx=33,
		name="爆率降低",
		nbvalue="0#0#0",
		type=3,
		desc="降低死亡时的爆装几率",
		isshow=2,
		sort=999,
	},
	[34] = { 
		Idx=34,
		name="吸血",
		nbvalue="0#0#0",
		type=2,
		desc="回复一定攻击比例的生命",
		isshow=2,
		sort=999,
	},
	[35] = { 
		Idx=35,
		name="攻魔道伤",
		nbvalue="0#0#0",
		type=3,
		desc="攻击/魔法/道术提升一定比例",
		isshow=2,
		sort=999,
	},
	[36] = { 
		Idx=36,
		name="防御加成",
		nbvalue="0#0#0",
		type=2,
		desc="防御提升一定比例",
		isshow=2,
		scolor=146,
		sort=999,
	},
	[37] = { 
		Idx=37,
		name="魔防加成",
		nbvalue="0#0#0",
		type=3,
		desc="魔防提升一定比例",
		isshow=2,
		sort=999,
	},
	[38] = { 
		Idx=38,
		name="神圣",
		nbvalue="0#0#0",
		type=1,
		desc="物理伤害对不死族造成额外的伤害",
		isshow=2,
		sort=8,
	},
	[39] = { 
		Idx=39,
		name="幸运",
		nbvalue="0#0#0",
		type=1,
		desc="提高攻击时发挥的最低伤害",
		isshow=2,
		sort=7,
	},
	[40] = { 
		Idx=40,
		name="对怪伤害",
		nbvalue="0#0#0",
		type=1,
		desc="对怪物额外造成的固定伤害",
		isshow=2,
		scolor=146,
		sort=999,
	},
	[41] = { 
		Idx=41,
		name="对怪增伤",
		nbvalue="0#0#0",
		type=3,
		desc="对怪物造成伤害提高",
		isshow=2,
		scolor=249,
		sort=999,
	},
	[42] = { 
		Idx=42,
		name="怒气恢复增加",
		nbvalue="0#0#0",
		type=1,
		isshow=0,
		sort=999,
	},
	[43] = { 
		Idx=43,
		name="合击攻击增加",
		nbvalue="0#0#0",
		type=3,
		isshow=0,
		sort=999,
	},
	[44] = { 
		Idx=44,
		name="怪物暴率",
		nbvalue="0#0#0",
		type=2,
		isshow=0,
		sort=999,
	},
	[45] = { 
		Idx=45,
		name="防止麻痹",
		nbvalue="0#0#0",
		type=2,
		isshow=0,
		sort=999,
	},
	[46] = { 
		Idx=46,
		name="防止护身",
		nbvalue="0#0#0",
		type=2,
		isshow=0,
		sort=999,
	},
	[47] = { 
		Idx=47,
		name="防止复活",
		nbvalue="0#0#0",
		type=2,
		isshow=0,
		sort=999,
	},
	[48] = { 
		Idx=48,
		name="防止全度",
		nbvalue="0#0#0",
		type=2,
		isshow=0,
		sort=999,
	},
	[49] = { 
		Idx=49,
		name="防止诱惑",
		nbvalue="0#0#0",
		type=2,
		isshow=0,
		sort=999,
	},
	[50] = { 
		Idx=50,
		name="防止火墙",
		nbvalue="0#0#0",
		type=2,
		isshow=0,
		sort=999,
	},
	[51] = { 
		Idx=51,
		name="防止冰冻",
		nbvalue="0#0#0",
		type=2,
		isshow=0,
		sort=999,
	},
	[52] = { 
		Idx=52,
		name="防止蛛网",
		nbvalue="0#0#0",
		type=2,
		isshow=0,
		sort=999,
	},
	[54] = { 
		Idx=54,
		name="对战增伤",
		nbvalue="0#0#0",
		type=2,
		desc="增加对战士的伤害",
		isshow=2,
		sort=999,
	},
	[55] = { 
		Idx=55,
		name="受战减伤",
		nbvalue="0#0#0",
		type=2,
		desc="减少来自战士的伤害",
		isshow=2,
		scolor=146,
		sort=999,
	},
	[56] = { 
		Idx=56,
		name="对法增伤",
		nbvalue="0#0#0",
		type=2,
		desc="增加对法师的伤害",
		isshow=2,
		sort=999,
	},
	[57] = { 
		Idx=57,
		name="受法减伤",
		nbvalue="0#0#0",
		type=2,
		desc="减少来自法师的伤害",
		isshow=2,
		scolor=146,
		sort=999,
	},
	[58] = { 
		Idx=58,
		name="对道增伤",
		nbvalue="0#0#0",
		type=2,
		desc="增加对道士的伤害",
		isshow=2,
		sort=999,
	},
	[59] = { 
		Idx=59,
		name="受道减伤",
		nbvalue="0#0#0",
		type=2,
		desc="减少来自道士的伤害",
		isshow=2,
		scolor=146,
		sort=999,
	},
	[60] = { 
		Idx=60,
		name="生命加成",
		nbvalue="0#0#0",
		type=2,
		desc="基于等级的HP加成",
		isshow=2,
		scolor=250,
		sort=999,
	},
	[61] = { 
		Idx=61,
		name="生命恢复",
		nbvalue="24#0#0",
		type=1,
		desc="每10秒恢复生命",
		isshow=0,
		sort=999,
	},
	[62] = { 
		Idx=62,
		name="魔法恢复",
		nbvalue="0#0#0",
		type=1,
		desc="每10秒恢复魔法",
		isshow=0,
		sort=999,
	},
	[63] = { 
		Idx=63,
		name="格挡概率",
		nbvalue="0#0#0",
		type=2,
		desc="受到伤害时出发格挡的概率",
		isshow=2,
		sort=999,
	},
	[64] = { 
		Idx=64,
		name="格挡伤害",
		nbvalue="0#0#0",
		type=2,
		desc="格挡时减免的伤害",
		isshow=2,
		sort=999,
	},
	[65] = { 
		Idx=65,
		name="掉落概率",
		nbvalue="0#0#0",
		type=3,
		desc="怪物掉落概率",
		isshow=1,
		scolor=250,
		sort=999,
	},
	[66] = { 
		Idx=66,
		name="经验倍率",
		nbvalue="0#0#0",
		type=2,
		desc="增加获取到的基础经验，可被高级、超级经验放大",
		isshow=0,
		sort=999,
	},
	[67] = { 
		Idx=67,
		name="基础倍攻",
		nbvalue="0#0#0",
		type=3,
		desc="提升装备的基础攻魔道属性，包括极品属性",
		isshow=0,
		scolor=251,
		sort=999,
	},
	[68] = { 
		Idx=68,
		name="对人伤害",
		nbvalue="0#0#0",
		type=1,
		desc="对玩家造成无视防御的伤害",
		isshow=1,
		scolor=254,
		sort=999,
	},
	[69] = { 
		Idx=69,
		name="冰冻概率",
		nbvalue="0#0#0",
		type=3,
		desc="攻击时触发冰冻效果的概率",
		isshow=0,
		sort=999,
	},
	[70] = { 
		Idx=70,
		name="防止冰冻",
		nbvalue="0#0#0",
		type=2,
		desc="降低触发冰冻效果的概率",
		isshow=0,
		sort=999,
	},
	[71] = { 
		Idx=71,
		name="生命恢复",
		nbvalue="0#0#0",
		type=2,
		desc="每秒恢复一定数值的血量",
		isshow=1,
		sort=999,
	},
	[72] = { 
		Idx=72,
		name="对怪暴击率",
		nbvalue="0#0#0",
		type=3,
		desc="攻击怪物时额外附加的暴击率",
		isshow=2,
		sort=36,
	},
	[73] = { 
		Idx=73,
		name="攻击加成",
		nbvalue="0#0#0",
		type=2,
		desc="攻击时，提升一定比例的攻击",
		isshow=2,
		scolor=250,
		sort=29,
	},
	[74] = { 
		Idx=74,
		name="对怪伤害",
		nbvalue="0#0#0",
		type=1,
		desc="攻击怪物时造成的固定伤害",
		isshow=2,
		scolor=250,
		sort=34,
	},
	[75] = { 
		Idx=75,
		name="对怪增伤",
		nbvalue="0#0#0",
		type=2,
		desc="按比例提升对怪物的伤害",
		isshow=2,
		scolor=250,
		sort=35,
	},
	[76] = { 
		Idx=76,
		name="PK增伤",
		nbvalue="0#0#0",
		type=2,
		desc="PK时按比例提升伤害",
		isshow=2,
		scolor=250,
		sort=43,
	},
	[77] = { 
		Idx=77,
		name="PK减伤",
		nbvalue="0#0#0",
		type=2,
		desc="PK时按比例减少伤害",
		isshow=2,
		scolor=250,
		sort=44,
	},
	[78] = { 
		Idx=78,
		name="穿透",
		nbvalue="0#0#0",
		type=2,
		desc="突破对方防御",
		isshow=2,
		scolor=250,
		sort=45,
	},
	[79] = { 
		Idx=79,
		name="神圣一击",
		nbvalue="0#0#0",
		type=2,
		desc="对目标造成3倍伤害",
		isshow=2,
		scolor=245,
		sort=60,
	},
	[80] = { 
		Idx=80,
		name="神圣伤害",
		nbvalue="8#0#0",
		type=2,
		desc="触发致命一击时额外伤害",
		isshow=2,
		scolor=245,
		sort=61,
	},
	[81] = { 
		Idx=81,
		name="对怪吸血",
		nbvalue="0#0#0",
		type=2,
		desc="仅对怪物伤害时提升的吸血比例",
		isshow=2,
		scolor=250,
		sort=37,
	},
	[82] = { 
		Idx=82,
		name="受怪减伤",
		nbvalue="0#0#0",
		type=2,
		desc="按比例减少受到来自怪物的伤害",
		isshow=2,
		scolor=250,
		sort=38,
	},
	[83] = { 
		Idx=83,
		name="药品恢复加成",
		nbvalue="0#0#0",
		type=2,
		desc="按比例提升药品的恢复量",
		isshow=2,
		scolor=250,
		sort=39,
	},
	[84] = { 
		Idx=84,
		name="吸血抵抗",
		nbvalue="0#0#0",
		type=2,
		desc="抵抗吸血概率",
		isshow=2,
		scolor=250,
		sort=46,
	},
	[85] = { 
		Idx=85,
		name="破防抵抗",
		nbvalue="0#0#0",
		type=2,
		desc="抵抗忽视防御概率",
		isshow=2,
		scolor=250,
		sort=47,
	},
	[86] = { 
		Idx=86,
		name="烈火减免",
		nbvalue="0#0#0",
		type=2,
		desc="减少烈火伤害比例",
		isshow=2,
		scolor=250,
		sort=48,
	},
	[87] = { 
		Idx=87,
		name="刺杀减免",
		nbvalue="0#0#0",
		type=2,
		desc="减少刺杀伤害比例",
		isshow=2,
		scolor=250,
		sort=49,
	},
	[88] = { 
		Idx=88,
		name="攻杀减免",
		nbvalue="0#0#0",
		type=2,
		desc="减少攻杀伤害比例",
		isshow=2,
		scolor=250,
		sort=50,
	},
	[89] = { 
		Idx=89,
		name="HP加成",
		nbvalue="0#0#0",
		type=2,
		desc="新hp加成，万分比",
		isshow=1,
		scolor=250,
		sort=30,
	},
	[90] = { 
		Idx=90,
		name="神圣抵抗",
		nbvalue="120#0#0",
		type=2,
		desc="被攻击时，抵抗神圣一击的几率",
		isshow=2,
		scolor=245,
		sort=62,
	},
	[200] = { 
		Idx=200,
		name="内功值",
		nbvalue="1#0#0",
		type=1,
		desc="内功值",
		isshow=1,
		sort=13,
	},
	[201] = { 
		Idx=201,
		name="内功恢复",
		nbvalue="0#0#0",
		type=1,
		desc="每3秒恢复的内功值",
		isshow=0,
		sort=999,
	},
	[202] = { 
		Idx=202,
		name="吸血几率",
		nbvalue="0#0#0",
		type=3,
		desc="触发吸血的概率",
		isshow=0,
		sort=999,
	},
	[203] = { 
		Idx=203,
		name="内功减伤",
		nbvalue="0#0#0",
		type=2,
		desc="万分比伤害减伤",
		isshow=0,
		sort=999,
	},
	[204] = { 
		Idx=204,
		name="威望",
		nbvalue="0#0#0",
		type=1,
		desc="用于人物pk对比，高的大低的可以加7%伤害",
	},
}
return config
