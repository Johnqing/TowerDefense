points = 0
roadArr = []


TD = (opts) ->
	@mapWrap = opts.mapWrap
	@gunWrap = opts.gunWrap
	@propertyWrap = opts.propertyWrap

	@init()
TD:: = 
	init: ->
		that = @
		curPoint = MAPS[points]
		curMaps = curPoint.map
		n = 0
		# 地图
		for map, n in curMaps
			for m, r in curMaps		
				if curMaps[n][r] < 1
					curMaps[n][r] = 0
				else
					newR = r * 20
					newN = n * 20
					roadArr.push [
						newR
						newN
						that.uploadMap newR, newN, curMaps[n][r]
					]
		# 炮弹生成
		for k, v of GUN
			that.creatItem """
				<strong>#{k}</strong>
				<span class="price">价格：#{v.price}</span>
				<span class="range">攻击范围：#{v.range}</span>
				<span class="interval">攻击速度：#{v.interval}</span>
				<span class="attack">攻击力：#{v.attack}</span>
			"""
			, k, that.gunWrap
		# 财产生成
		that.creatItem """
			<span class=\"life\">血量：#{curPoint.life}</span>
			<span class=\"life\">金币：#{curPoint.money}</span>
		"""	
		, "pt", that.propertyWrap
		return
	# 地图更新
	uploadMap: (left, top, n, wrap, cls) ->
		m = document.createElement 'div'

		mapWrap = wrap or @mapWrap
		m.className = cls or 'road'
		m.style.cssText = """
			position:absolute;
			left:#{left}px;
			top:#{top}px;
			"""
		# 终点
		if n is 2
			m.className = 'end'

		mapWrap.appendChild m
		return m

	# 生成炮弹和个人财产
	creatItem: (ht, key, obj) ->
		that = @
		m = document.createElement 'div'
		m.className = "gun #{key}"
		m.innerHTML = ht
		obj.appendChild m
		return

new TD(
	mapWrap: document.getElementById 'map'
	gunWrap: document.getElementById 'fort'
	propertyWrap: document.getElementById 'property'
)
