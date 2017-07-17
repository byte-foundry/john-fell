exports.glyphs['r'] =
	unicode: 'r'
	glyphName: 'r'
	characterName: 'LATIN SMALL LETTER R'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (16) + serifWidth + 15
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + serifHeight + serifCurve
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight - serifHeight * ( 60 / 20 ) - serifCurve * ( 40 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - thickness * ( 5 / 85 )
					y: ( ( 375 + 50 ) / 500 ) * xHeight - 50
					dirOut: if width <= 1.2 then 74 - 74 * width + 74 + 'deg' else 79 - 15 * width + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 45 / 85 ) * contrast
						angle: - 90 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 145 * width
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 56 / 85 )
						angle: - 135 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 240 * width - (75)
					y: contours[1].nodes[1].expandedTo[1].y - 35 + Math.min( - 20 * aperture + 20, - 125 * aperture + 125 )
					dirIn: 110 - 20 * aperture + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 100 / 85 )
						angle: 180 + 'deg'
						distr: 0.75
					})
		2:
			#######################################################
			#######################################################
			#######################################################
			# TODO: make it skeleton only with serifBall param
			#######################################################
			#######################################################
			#######################################################
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
					dirOut: contours[1].nodes[2].dirIn
					typeIn: 'line'
					# type: 'smooth'
				1:
					x: contours[1].nodes[2].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[2].expandedTo[1].x ) / 2
					# x: 365
					y: contours[1].nodes[2].expandedTo[0].y - thickness * ( 50 / 85 )
					dirOut: 0 + 'deg'
					dirIn: 0 + 'deg'
					# type: 'smooth'
				2:
					x: contours[1].nodes[2].expandedTo[1].x
					y: contours[1].nodes[2].expandedTo[1].y
					dirIn: contours[1].nodes[2].dirIn
					# type: 'smooth'
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: 0
					leftWidth: 10
					rightWidth: 20
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: xHeight
					leftWidth: 20
					right: false
					attaque: true
					attaqueAngle: 20
					directionY: -1
			parentParameters:
				serifMedian: serifMedian # - serifMedian / 2 * spurHeight
