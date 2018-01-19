exports.glyphs['backslash'] =
	unicode: '\\'
	glyphName: 'backslash'
	characterName: 'REVERSE SOLIDUS'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (10)
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 30 + (22)
					y: capHeight + overshoot * 2
					typeOut: 'line'
					expand:
						width: thickness * ( 50 / 85 )
						angle: 0
						distr: 0.5
				1:
					x: 290 + (22)
					y: - 80
					typeIn: 'line'
					expand:
						width: thickness * ( 50 / 85 )
						angle: 0
						distr: 0.5
