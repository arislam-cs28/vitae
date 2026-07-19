extends AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().node_added.connect(_on_node_added) # connecting all nodes to the system

func _on_node_added(node: Node):
	if node is NewButton or node is TexButton: # when a node is added, checks if the node is a regular button or a texture button
		if not node.pressed.is_connected(sound): # check if the sound played or not
			node.pressed.connect(sound) # plays sound
		
func sound(): # sound function
	if UserStats.play_sfx == true: # if the user permits sound, the button clicks play the sfx sound effect
		play()
	else:
		stop() # stops the sound effect if the user does not permit sfx
