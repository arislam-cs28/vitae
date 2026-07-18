extends AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().node_added.connect(_on_node_added)

func _on_node_added(node: Node):
	if node is NewButton or node is TexButton:
		if not node.pressed.is_connected(sound):
			node.pressed.connect(sound)
		
func sound():
	if UserStats.play_sfx == true:
		play()
	else:
		stop()
