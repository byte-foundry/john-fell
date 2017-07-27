exports.glyphs['E_cap'] =
	unicode: 'E'
	glyphName: 'E'
	characterName: 'LATIN CAPITAL LETTER E'
	ot:
		advanceWidth: contours[3].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (25) + serifWidth + 40
		spacingRight: 50 * spacing + 40 + serifWidth / 2
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						angle: 0 + 'deg'
						width: thickness * opticThickness * ( 100 / 85 )
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						angle: 0 + 'deg'
						width: thickness * opticThickness * ( 100 / 85 )
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
					typeOut: 'line'
					expand: Object({
						angle: - 90 + 'deg'
						width: thickness * opticThickness * ( 25 / 100 ) * contrast
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 213 + 200 * width,
						contours[0].nodes[0].expandedTo[1].x + 313
					)
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						angle: - 90 + 'deg'
						width: thickness * opticThickness * ( 25 / 100 ) * contrast
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: contours[2].nodes[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						angle: 90 + 'deg'
						width: thickness * opticThickness * ( 28 / 100 ) * contrast
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 147 + 200 * width,
						contours[0].nodes[0].expandedTo[1].x + 247
					)
					y: capHeight * ( 385 / 750 ) * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						angle: 90 + 'deg'
						width: contours[2].nodes[0].expand.width
						distr: 0
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						angle: - 90 + 'deg'
						# width: Math.max( serifHeight, thickness * opticThickness * ( 20 / 100 ) ) // Fit the thickness to the serifHeight
						width: thickness * opticThickness * ( 25 / 100 ) * contrast
						distr: 1
					})
				1:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 235 + 200 * width,
						contours[0].nodes[0].expandedTo[1].x + 335
					)
					y: contours[3].nodes[0].y
					dirOut: 0 + 'deg'
					expand: Object({
						angle: - 90 + 'deg'
						width: thickness * opticThickness * ( 25 / 100 ) * contrast
						distr: 1
					})
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: Math.min(
						contours[0].nodes[0].expandedTo[1].x + ( serifHeight + serifCurve ) * ( 80 / 35 ),
						Math.max(
							contours[3].nodes[0].expandedTo[1].x,
							contours[3].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 100 / 15 )
						)
					)
					y: contours[3].nodes[0].expand.width
					tensionOut: 1.5
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( serifHeight + serifCurve ) * ( 80 / 35 )
					dirIn: - 90 + 'deg'
					typeOut: 'line'
				2:
					x: contours[4].nodes[1].x
					y: contours[4].nodes[0].y
					typeOut: 'line'
				3:
					x: contours[4].nodes[0].x
					y: contours[4].nodes[0].y
					typeOut: 'line'
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.max(
						contours[2].nodes[0].expandedTo[1].y,
						capHeight - serifHeight - serifCurve * ( 65 /15 )
					)
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: Math.max(
						contours[2].nodes[0].expandedTo[1].y,
						capHeight - serifHeight - serifCurve * ( 65 /15 )
					)
				2:
					anchorLine: capHeight
					leftWidth: 40
					right: false
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: Math.min(
						contours[2].nodes[0].expandedTo[0].y,
						serifHeight + serifCurve * ( 65 /15 )
					)
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: Math.min(
						contours[2].nodes[0].expandedTo[0].y,
						serifHeight + serifCurve * ( 65 /15 )
					)
				2:
					leftWidth: 40
					right: false
		2:
			base: 'serif-v'
			parentAnchors:
				0:
					x: Math.max(contours[2].nodes[0].expandedTo[1].x + 10, contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[2].nodes[0].expandedTo[1].y
				1:
					x: Math.max(contours[2].nodes[0].expandedTo[1].x + 10, contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[2].nodes[0].expandedTo[0].y
				2:
					anchorLine: contours[2].nodes[1].expandedTo[0].x + Math.max( 0, serifHeight * serifArc )
					leftWidth: 75
					rightWidth: 75
					# baseRight: contours[2].nodes[1].expandedTo[0].point
			# parentParameters:
			# 	serifMedian: serifMedian * 75/100
			# 	serifHeight: serifHeight * 16/20
			# 	serifCurve: serifCurve * 30/15
		3:
			base: 'serif-v'
			parentAnchors:
				1:
					x: Math.max(contours[1].nodes[0].expandedTo[1].x, contours[1].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[1].nodes[1].expandedTo[1].y
				0:
					x: Math.max(contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[1].nodes[1].expandedTo[0].y
				2:
					anchorLine: contours[1].nodes[1].expandedTo[0].x
					right: false
					leftWidth: 60
					leftCurve: 1.2
					baseRight: contours[1].nodes[1].expandedTo[0].point
			# parentParameters:
			# 	serifMedian: serifMedian * 0.75
			# 	midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[0].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (-4) + 'deg' ] )
		4:
			base: 'serif-v'
			parentAnchors:
				1:
					x: Math.max(contours[3].nodes[0].expandedTo[1].x, contours[3].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[3].nodes[0].expandedTo[1].y
				0:
					x: Math.max(contours[3].nodes[0].expandedTo[0].x, contours[3].nodes[1].expandedTo[0].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[3].nodes[0].expandedTo[0].y
				2:
					anchorLine: contours[3].nodes[1].expandedTo[0].x
					rightWidth: 60
					left: false
					baseLeft: contours[3].nodes[1].expandedTo[1].point
					# baseRight: contours[3].nodes[1].expandedTo[0].point
			transformOrigin: Array( contours[3].nodes[1].expandedTo[1].x, contours[3].nodes[1].expandedTo[1].y )
			transforms: Array( [ 'skewX', serifRotate * (8) + 'deg' ] )
