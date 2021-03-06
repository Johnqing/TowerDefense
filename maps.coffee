###
* 参数解释
*
* 1为路，2为终点
* 
* "map" 地图，1代表道路，2代表终点
* "enemy" 敌人队列,等级分为ABCDS
* "life" 生命次数
* "money" 初始金钱数
* "begin" 敌人进攻的起点（在边界之外）
* "bdirc" 敌人进攻的行走方向
* "award" 过关奖励金币数
###
@MAPS = [
	map: [
		[0,1,0,0,0,0,2,1,1,1,1,0,0,0,0,0],
		[0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0],
		[0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0],
		[0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0],
		[0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0],
		[0,1,0,0,0,0,0,0,0,0,1,1,1,1,0,0],
		[0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0],
		[0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0],
		[0,1,1,1,0,0,0,0,0,0,0,0,0,1,0,0],
		[0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0],
		[0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0],
		[0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0],
		[0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0],
		[0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
		[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
	]
	enemy: [
		'AAAAA'
		'AAAAAAAAAA'
		'AAAAAAAABB'
		'AAABBBCCCC'
		'CCCCCDDDDDDDDSS'
		'AABBBCCCSSSSSSS'
	],
	life: 15
	money: 1000
	begin: [1, -1]
	bdirc: 1
	award: 500
]

###
* 炮等级详细解释
*
* range 攻击范围
* interval 攻击速度
* attack 攻击力
* price 售价
* rank 等级
###

@GUN = 
	A:
		range: 20
		interval: 1500
		attack: 5
		price: 20
		rank: 'A'
	B: 
		range: 30
		interval: 1300
		attack: 10
		price: 20
		rank: 'B'
	C: 
		range: 30
		interval: 1000
		attack: 20
		price: 300
		rank: 'C'
	D: 
		range: 50
		interval: 500
		attack: 30
		price: 500
		rank: 'D'
	S: 
		range: 100
		interval: 400
		attack: 50
		price: 1000
		rank: 'S'
###
* 敌人等级详细解释
*
* speed 行进速度
* life 血量
* def 防御度
* rank 等级
###
@ENEMY = 
	A:
		speed: 0.2
		life: 100
		def: 10
		rank: 'A'
	B: 
		speed: 0.3
		life: 100
		def: 30
		rank: 'B'
	C: 
		speed: 0.3
		life: 100
		def: 50
		rank: 'C'
	D: 
		speed: 0.5
		life: 100
		def: 70
		rank: 'D'
	S: 
		speed: 1
		life: 100
		def: 90
		rank: 'S'
