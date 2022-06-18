extends Button


func _ready():
	pass


func _on_ButtonPlayMainMenu_pressed():
	get_tree().change_scene("res://Assets/Scenes/Level.tscn")
