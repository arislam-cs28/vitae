extends Button

class_name NewButton

@export var clicky: String = "yes"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if is_hovered(): # checking to see if the button is hovered over
		if Input.is_action_just_pressed("yes"): # checking to see if user pressed the spacebar
			pressed.emit() # emitting pressed signal if they have
			
		
func _gui_input(_event: InputEvent) -> void: # setting a function to observe inputs (NOT from our little hover clicks above)
	if InputEventJoypadButton or InputEventMouseButton or InputEventScreenTouch: # making sure that these are not used as actual presses
		get_viewport().set_input_as_handled() # makes it known to ignore any clicks not from the "yes" space key being pressed
