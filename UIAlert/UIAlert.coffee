# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# UI Alert
# by Paul Farino (paul.farino1@gmail.com)
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Run the function when you want a UI Alert
# module.showAlert(“My awesome title”, “my awesome message”, “OK”, “Don't Allow”)
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

exports.showAlert = (title, message, btnright, btnleft) ->

	UIAlert = new Layer
		width: 270*2
		y: 415
		height: 180*2
		backgroundColor: "rgba(200,200,200,.9)"
		shadowSpread: 1
		shadowColor: "rgba(101,101,101,.3)"
		borderRadius: 10
		borderWidth: 1
		borderColor: "rgba(205,205,205,1)"
	UIAlert.center()

	# Title
	UIAlertTitle = new Layer
		backgroundColor: null
		y: 550
		x: Align.center
		width: 270*2
		height: 47

	UIAlertTitle.html = "#{title}"
	UIAlertTitle.style =
		"text-align" : "center"
		"font-size" : "17pt"
		"font-weight" : "bold"
		"color" : "#030303"

	# Message
	UIAlertMessage = new Layer
		backgroundColor: null
		y: 600
		x: Align.center
		width: 270*2
		height: 47

	UIAlertMessage.html = "#{message}"
	UIAlertMessage.style =
		"text-align" : "center"
		"font-size" : "13pt"
		"font-weight" : "regular"
		"color" : "#030303"

	# Button Right
	buttonRight = new Layer
		color: "#0076FF"
		height: 44*2
		backgroundColor: null
		y: 794
		x: 410


	buttonRight.html = "#{btnright}"
	buttonRight.style =
		"text-align" : "center"
		"font-size" : "17pt"
		"font-weight" : "bold"

	# Button Left
	buttonLeft = new Layer
		color: "#0076FF"
		height: 44*2
		backgroundColor: null
		y: 794
		x: 142


	buttonLeft.html = "#{btnleft}"
	buttonLeft.style =
		"text-align" : "center"
		"font-size" : "17pt"

	# Horizontal Line
	hrLineHorizontal = new Layer
		y: 770
		x: 105
		width: 270*2
		height: 1


	# Vertical Line
	hrLineVertical = new Layer
		y: 770
		x: 392
		width: 1
		height: 74

	hrLineVertical.centerX()