exports.glyphs['P_cap'] =
	unicode: 'P'
	glyphName: 'P'
	characterName: 'LATIN CAPITAL LETTER P'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + (25) + serifWidth + 40
		spacingRight: 50 * spacing + 20
	anchors:
		0:
			x: 0
			y: 0
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
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0
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
						width: thickness * opticThickness * ( 20 / 100 )
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 100 * width
					y: capHeight
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * opticThickness * ( 36 / 100 )
						angle: - 146 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + ( 245+ (70) ) * width
					y: capHeight * ( ( 555 - (12) ) / 750 )
					dirOut: - 90 + 'deg'
					tensionOut: 1.15
					type: 'smooth'
					expand: Object({
						width: thickness * opticThickness * ( 112 / 100 )
						angle: 180 - 10 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x + 50 * width
					y: capHeight * ( 365 / 750 )
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * opticThickness * ( 25 / 100 )
						distr: 1
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[3].y
					dirOut: 180 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: contours[1].nodes[3].expand.width
						distr: 1
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y + serifHeight + serifCurve * ( 65 / 15 )
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y + serifHeight + serifCurve * ( 65 / 15 )
				2:
					anchorLine: 0
					leftWidth: 40
					rightWidth: 40
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y - serifHeight - serifCurve * ( 65 / 15 )
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y - serifHeight - serifCurve * ( 65 / 15 )
				2:
					anchorLine: capHeight
					leftWidth: 40
					directionY: -1
					right: false
