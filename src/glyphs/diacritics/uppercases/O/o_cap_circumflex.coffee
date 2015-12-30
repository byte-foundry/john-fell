exports.glyphs['o_cap_circumflex'] =
	unicode: 'Ô'
	ot:
		advanceWidth: width * 800 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'O_cap'
			parentAnchors:
				0:
					x: 0
					y: 0
		1:
			base: 'circumflex'
			parentAnchors:
				0:
					x: 400
					y: capHeight + 70