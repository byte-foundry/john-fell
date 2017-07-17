exports.glyphs['d'] =
	unicode: 'd'
	glyphName: 'd'
	characterName: 'LATIN SMALL LETTER D'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 15 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[1].x + 50
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x + 200 * width + 255 - (9),
						contours[1].nodes[2].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: 90 + serifHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight - spurHeight * ( 30 ) - serifHeight * ( 10 / 20 ) - serifCurve * ( 45 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.75
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + thickness * ( 5 / 85 )
					y: 80
					dirOut: - 125 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 30 / 85 )
						angle: 90 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) * 0.57 + (2)
					y: - overshoot / 2
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 50 / 85 )
						angle: 45 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (23)
					y: xHeight * ( 257 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 91 / 86 )
						angle: 15 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[1].nodes[2].expandedTo[1].x ) * 0.65 - (4)
					y: xHeight + overshoot
					dirIn: 0 + 'deg'
					tensionIn: 1.1
					type: 'smooth'
					expand: Object({
						width: thickness * ( 27 / 86 )
						angle: - 68 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[0].x + thickness * ( 5 / 85 )
					y: xHeight - xHeight * ( ( 500 - 385 ) / 500 )
					y: xHeight - xHeight * ( 115 / 500 )
					dirIn: 116 + 'deg'
					dirIn: Math.max( 146 - ( 30 / 500 ) * xHeight, 90 ) + 'deg'
					# dirOut: 90 + 'deg'
					tensionIn: 0.9
					type: 'smooth'
					expand: Object({
						width: Math.min( thickness * ( 54 / 86 ), ( thickness * ( 54 / 86 ) / 500 ) * xHeight )
						angle: 180 + 34 + 'deg'
						distr: 1
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: ascenderHeight
					leftWidth: 20
					right: false
					attaque: true
					attaqueAngle: 16
					directionY: -1
			parentParameters:
				serifMedian: serifMedian # - serifMedian / 2 * spurHeight
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: - overshoot
					rightWidth: 20
					left: false
					attaque: true
					attaqueAngle: 14
