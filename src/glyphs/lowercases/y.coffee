exports.glyphs['y'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 5 + (0) + serifWidth + 20
		spacingRight: 50 * spacing + 5 + serifWidth + 20
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x + 30 + 250 * width + (16)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) * 0.42
					y: - overshoot
					typeIn: 'line'
					expand:
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 93 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[0].nodes[1].expandedTo[0].x + contours[0].nodes[1].expand.width
					x: contours[0].nodes[1].expandedTo[0].x
					y: - overshoot
					typeIn: 'line'
					expand:
						width:
							if width < 1
							then ( thickness * ( 120 / 85 ) / 500 ) * xHeight
							else ( thickness * ( ( 120 - 35 * width + 35 ) / 85 ) / 500 ) * xHeight
						angle: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y},{x:  contours[0].nodes[1].expandedTo[0].x, y:  contours[0].nodes[1].expandedTo[0].y}) + Math.PI
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: - overshoot
					typeOut: 'line'
					expand:
						width: thickness * ( 25 / 85 )
						angle: 180 + 'deg'
						distr: 0
				1:
					x: Utils.onLine({
						y: ( 140 / 250 ) * descender
						on: [ contours[0].nodes[0].expandedTo[0], contours[2].nodes[0].expandedTo[1] ]
					})
					y: ( 140 / 250 ) * descender
					dirOut: Utils.lineAngle({x: contours[2].nodes[0].x, y: contours[2].nodes[0].y},{x:  contours[2].nodes[1].x, y:  contours[2].nodes[1].y} )
					typeIn: 'smooth'
					expand:
						width: thickness * ( 28 / 85 )
						angle: 180 - 56 + 'deg'
						distr: 1
				2:
					x: 151 + (0)
					x: contours[2].nodes[1].expandedTo[1].x - 30
					y: contours[2].nodes[1].y - 25
					dirIn: 0 + 'deg'
					typeOut: 'smooth'
					expand:
						width: thickness * ( 80 / 85 )
						angle: 180 - 126 + 'deg'
						distr: 1
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[2].nodes[2].expandedTo[1].x
					y: contours[2].nodes[2].expandedTo[1].y
					typeIn: 'line'
				1:
					x: contours[2].nodes[2].expandedTo[1].x - ( contours[2].nodes[2].expandedTo[1].x - contours[3].nodes[2].x ) / 2
					y: contours[2].nodes[2].expandedTo[0].y + ( 95 / 85 ) * thickness
				2:
					x: contours[2].nodes[2].expandedTo[0].x - ( 50 / 85 ) * thickness
					y: contours[2].nodes[2].expandedTo[0].y + ( contours[3].nodes[1].y - contours[2].nodes[2].expandedTo[0].y ) / 2 + ( 5 / 85 ) * thickness
					dirOut: - 90 + 'deg'
					typeIn: 'smooth'
				3:
					x: contours[2].nodes[2].expandedTo[0].x
					y: contours[2].nodes[2].expandedTo[0].y
					typeOut: 'line'
		# TODO:
		# This contour is used to set the spacing
		# We need to call the advanceWidth of the component instead
		# like: glyphs['v'].ot.advanceWidth
		# 4:
		# 	skeleton: true
		# 	closed: false
		# 	nodes:
		# 		0:
		# 			x: 395 + 17
		# 			y: xHeight - serifHeight * serifCurve
		# 			typeOut: 'line'
		# 			expand:
		# 				width: thickness * ( 39 / 85 )
		# 				angle: 0 + 'deg'
		# 				distr: 0.25
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'thirdleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'thirdright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-oblique-obtuse', 'none']
			id: 'thirdleft'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0]
					scaleX: -1
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-acute', 'none']
			id: 'thirdright'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
