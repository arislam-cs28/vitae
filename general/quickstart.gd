extends Node2D

var index = 0

var instruct = [
	"Welcome to Dr. Vitae's laboratory! To maneuver the interface, you only need one key! The spacebar! Hover your cursor over the [i]next[/i] button and press the spacebar.",
	"Awesome job! Now, for the interface. For whatever section you want to go to, hover your cursor over its cell, and then press the spacebar.",
	"In the [i]Options[/i] section, you can set the SFX and music to be on or off.",
	"You can also reset your study session progress there.",
	"With Cat-alase, you can see your study session achievements.",
	"By experimenting with Dr. Vitae, you may get lab advice or random study fun.",
	"In the [i]Profile[/i] section, you can set your study goal and study interest for the session.",
	"To get trustworthy resources, click on the [i]Resources[/i] section.",
	"You can also catch up on studying in [i]My Study Corner[/i]!",
	"And Dr. Vitae may surprise you if you click on him on the home screen!",
	"Have fun and study hard, biologist!"
]

var length = instruct.size()
var current_text = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_text = instruct[0]
	$Panel/Panel2/RichTextLabel.text = current_text

# closing the quickstart instructions
func _on_close_pressed() -> void:
	$Panel/Panel2/RichTextLabel.text = instruct[0]
	current_text = instruct[0]
	$".".hide()

# going back to the previous quickstart instruction
func _on_back_pressed() -> void:
	index -= 1 # subtracting from index, previous dialogue shown
	if index < 0:
		index = instruct.size()-1 # going onto the last instruction if the back exceeds size
	current_text = instruct[index]
	$Panel/Panel2/RichTextLabel.text = current_text

# going onto the next quickstart instruction
func _on_next_pressed() -> void:
	index += 1 # adding to index, next dialogue shown
	if index >= instruct.size():
		index = 0 # going back to the first instruction if the next button exceeds size
	current_text = instruct[index]
	$Panel/Panel2/RichTextLabel.text = current_text
