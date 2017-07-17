exports.glyphs['o'] =
	unicode: 'o'
	glyphName: 'o'
	characterName: 'LATIN SMALL LETTER O'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 45
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].expandedTo[0].x
			y: xHeight + diacriticHeight
			left: contours[0].nodes[0].expandedTo[0].x
			right: contours[0].nodes[2].expandedTo[0].x
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (19)
					y: xHeight * ( 250 / 500 )
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness * ( 95 / 86 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * ( 26 / 86 ) * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 300 - (0),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * thickness * ( 95 / 86 ) + 10
					)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness * ( 95 / 86 )
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					expand: Object({
						width: thickness * ( 26 / 86 ) * contrast
						angle: 90 + 'deg'
						distr: 0
					})
