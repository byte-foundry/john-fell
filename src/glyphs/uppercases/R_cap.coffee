exports.glyphs['R_cap'] =
	unicode: 'R'
	glyphName: 'R'
	characterName: 'LATIN CAPITAL LETTER R'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (25) + serifWidth + 40
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + serifHeight + serifCurve * ( 65 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - serifHeight - serifCurve * ( 65 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight
					dirOut: 0 + 'deg'
					# typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 20 / 85 )
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x - 255,
						contours[0].nodes[1].expandedTo[1].x
					)
					y: capHeight
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * opticThickness * ( 36 / 85 )
						angle: - 146 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 255 + 200 * width - (28),
						contours[0].nodes[0].expandedTo[1].x + 355
					)
					y: capHeight * ( ( 555 - (12) ) / 750 )
					dirOut: - 90 + 'deg'
					tensionOut: 1.15
					type: 'smooth'
					expand: Object({
						width: thickness * opticThickness * ( 112 / 85 )
						angle: 180 - 10 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[1].expandedTo[1].x
					y: capHeight * ( 380 / 750 )
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * opticThickness * ( 25 / 85 )
						angle: 90 + 'deg'
						distr: 1
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[3].y
					dirOut: 180 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: contours[1].nodes[3].expand.width
						angle: 90 + 'deg'
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[0].x + Math.min( 90 + thickness, 175 * width ) - (65 - serifWidth)
					y: 0
					type: 'smooth'
					tensionOut: 1.6
					expand: Object({
						width: thickness * opticThickness * ( serifHeight / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[2].nodes[2].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[0].x - contours[2].nodes[2].expandedTo[0].x ) * 0.5
					y: ( ( (55 + serifHeight) + (5) ) / 750 ) * capHeight
					dirIn: Utils.lineAngle( contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[2].expandedTo[1].point )
					tensionIn: 1.6
					type: 'smooth'
					expand: Object({
						width: thickness * opticThickness * ( 117 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[1].nodes[3].expandedTo[0].x - ( 10 / 85 ) * thickness
					y: contours[1].nodes[3].expandedTo[0].y + ( contours[1].nodes[3].expandedTo[1].y - contours[1].nodes[3].expandedTo[0].y ) * 0.5
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 95 / 85 )
						angle: 11 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: serifHeight + serifCurve
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: serifHeight + serifCurve * ( 65 /15 )
				1:
					x: Utils.onLine({
						y: serifHeight + serifCurve
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: serifHeight + serifCurve * ( 65 /15 )
				2:
					leftWidth: 40
					rightWidth: 40
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
				2:
					anchorLine: capHeight
					leftWidth: 40
					directionY: -1
					right: false
