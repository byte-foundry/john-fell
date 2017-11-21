exports.glyphs['v'] =
	unicode: 'v'
	glyphName: 'v'
	characterName: 'LATIN SMALL LETTER V'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 5 + serifWidth
		spacingRight: 50 * spacing + 5 + serifWidth
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			angle: Utils.lineAngle({x: contours[1].nodes[1].x, y: contours[1].nodes[1].y}, {x: contours[1].nodes[0].expandedTo[0].x, y: contours[1].nodes[0].expandedTo[0].y})
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x + 10 + 250 * width + (16) - Math.max(0, (thickness - 120) * 30 / 60)
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
				1:
					x: contours[1].nodes[0].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[0].expandedTo[1].x ) * 0.4 - Math.max(0, (thickness - 120) * 13 / 60)
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
					x: spacingLeft + 0.25 * contours[1].nodes[0].expand.width
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
						width: contours[1].nodes[0].expand.width * Math.sin(Math.PI - anchors[0].angle) / Math.cos(contours[1].nodes[1].expand.angle + Math.PI / 2 - anchors[0].angle)
						angle: Utils.lineAngle({x: contours[0].nodes[0].expandedTo[0].x, y: contours[0].nodes[0].expandedTo[0].y},{x:  contours[0].nodes[1].expandedTo[0].x, y:  contours[0].nodes[1].expandedTo[0].y}) + Math.PI
						distr: 0
	components:
		0:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft'
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
			parameters:
				serifCurve: serifCurve + 40
		1:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright'
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
			parameters:
				serifCurve: serifCurve + 40
		2:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft2'
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
			parameters:
				serifCurve: serifCurve + 40
		3:
			base: ['serif-oblique-acute', 'none']
			id: 'topright2'
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
			parameters:
				serifCurve: serifCurve + 40
