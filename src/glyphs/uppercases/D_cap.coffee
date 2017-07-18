exports.glyphs['D_cap'] =
	unicode: 'D'
	glyphName: 'D'
	characterName: 'LATIN CAPITAL LETTER D'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 40 + serifWidth + 40
		spacingRight: 50 * spacing + 55
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
					x: spacingLeft + (25/85) * thickness
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 ) * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].x + 120 * width
					y: contours[1].nodes[0].expandedTo[0].y
					dirOut: 0 + 'deg'
					tensionOut: 1.1
					expand: Object({
						width: thickness * ( 82 / 85 ) * opticThickness * contrast
						angle: - 166 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 275 + 250 * width
					y: ( 375 / 750 ) * capHeight
					# dirIn: 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					expand: Object({
						width: thickness * ( 110 / 85 ) * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x + 80 * width
					y: 0
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness * ( 36 / 85 ) * opticThickness * contrast
						angle: 146 + 'deg'
						distr: 0
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[3].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[1].y
					tensionOut: 1.5
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( serifHeight + serifCurve ) * ( 80 / 35 )
					dirIn: - 90 + 'deg'
					typeOut: 'line'
				2:
					x: contours[2].nodes[1].x
					y: 0
					typeOut: 'line'
				3:
					x: contours[1].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].expandedTo[0].y
					typeOut: 'line'
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y - serifHeight - serifCurve * ( 65 /15 )
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y - serifHeight - serifCurve * ( 65 /15 )
				2:
					anchorLine: capHeight
					leftWidth: 40
					directionY: -1
					right: false
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y + serifHeight + serifCurve * ( 65 /15 )
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y + serifHeight + serifCurve * ( 65 /15 )
				2:
					leftWidth: 40
					right: false
