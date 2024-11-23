extends VBoxContainer

const WORLD = preload("res://Scenes/World.tscn")

func _ready() -> void:
	# Asegurarte de que el cursor esté visible al cargar el menú
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_packed(WORLD)

func _on_quit_button_pressed() -> void:
	get_tree().quit()