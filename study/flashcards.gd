extends Node2D

var index = 0
var question = []
var information = []
var current_question = ""
var current_info = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	"""
	var question = UserStats.question
	var information = UserStats.information
	
	current_question = question[0]
	current_info = information[0]
	UserStats.points += 1
	UserStats.flashcards += 1
	$Bg/Screen/Question.text = current_question
	$Bg/Screen/Answer.text = current_info
	$Bg/Screen/CardNum.text = str(index + 1) + "/" + str(question.size())
	"""
	pass
	


func _on_back_pressed() -> void:
	index -= 1
	if index < 0:
		index = question.size()-1
	current_question = question[index]
	current_info = information[index]
	
	$Bg/Screen/Question.text = current_question
	$Bg/Screen/Answer.text = current_info
	$Bg/Screen/CardNum.text = str(index + 1) + "/" + str(question.size())
	


func _on_next_pressed() -> void:
	index += 1 
	if index >= question.size():
		index = 0 
	current_question = question[index]
	current_info = information[index]
	
	$Bg/Screen/Question.text = current_question
	$Bg/Screen/Answer.text = current_info
	UserStats.points += 1
	UserStats.flashcards += 1
	$Bg/Screen/CardNum.text = str(index + 1) + "/" + str(question.size())


func _on_close_pressed() -> void:
	current_info = ""
	current_question = ""
	$".".hide()


func load_flashcards(): # making this because the ready function wont let this work ugh
	question = UserStats.question
	information = UserStats.information

	index = 0

	current_question = question[0]
	current_info = information[0]
	UserStats.points += 1
	UserStats.flashcards += 1
	$Bg/Screen/Question.text = current_question
	$Bg/Screen/Answer.text = current_info
	$Bg/Screen/CardNum.text = str(index + 1) + "/" + str(question.size()) # IT WORKS I LOVE LIFE
