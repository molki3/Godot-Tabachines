extends VBoxContainer

const WORLD = preload("res://Scenes/World.tscn")

func _ready() -> void:
	# Asegurarte de que el cursor esté visible al cargar el menú
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_quit_button_pressed() -> void:
	# Salir del juego
	get_tree().quit()
