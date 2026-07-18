extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$GoalSet.hide()
	$InterestSet.hide()


func _on_return_pressed() -> void:
	get_tree().change_scene_to_file("res://home_screen.tscn")

func _on_recall_pressed() -> void:
	UserStats.study_motivation = "active recall"
	goal_set()


func _on_learn_pressed() -> void:
	UserStats.study_motivation = "learn materials"
	goal_set()

func _on_review_pressed() -> void:
	UserStats.study_motivation = "review materials"
	goal_set()


func _on_inspiration_pressed() -> void:
	UserStats.study_motivation = "get inspired"
	goal_set()

func _on_mastery_pressed() -> void:
	UserStats.study_motivation = "master materials"
	goal_set()

func _on_cram_pressed() -> void:
	UserStats.study_motivation = "cram for a test"
	goal_set()
	
func _on_microbio_pressed() -> void:
	UserStats.interest = "microbiology"
	interest_set()


func _on_eco_pressed() -> void:
	UserStats.interest = "ecology"
	interest_set()


func _on_botan_pressed() -> void:
	UserStats.interest = "botany"
	interest_set()


func _on_evo_bio_pressed() -> void:
	UserStats.interest = "evolutionary biology"
	interest_set()


func _on_zoo_pressed() -> void:
	UserStats.interest = "zoology"
	interest_set()


func _on_med_pressed() -> void:
	UserStats.interest = "medicine + health"
	interest_set()


func _on_biochem_pressed() -> void:
	UserStats.interest = "biochemistry"
	interest_set()


func _on_astrobio_pressed() -> void:
	UserStats.interest = "astrobiology"
	interest_set()


func _on_biomed_pressed() -> void:
	UserStats.interest = "biomedical engineering"
	interest_set()


func _on_gene_pressed() -> void:
	UserStats.interest = "genetics"
	interest_set()


func _on_molecular_pressed() -> void:
	UserStats.interest = "molecular biology"
	interest_set()


func _on_viro_pressed() -> void:
	UserStats.interest = "virology"
	interest_set()
	
func goal_set():
	$GoalSet.show()
	await get_tree().create_timer(2.0).timeout
	$GoalSet.hide()

func interest_set():
	$InterestSet.show()
	await get_tree().create_timer(2.0).timeout
	$InterestSet.hide()
