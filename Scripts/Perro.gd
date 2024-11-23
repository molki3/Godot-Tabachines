extends Area3D

signal collected  # Señal para notificar que el perro fue recolectado

func _ready():
	print("Self es:", self)
	connect("body_entered", Callable(self, "_on_body_entered"))  # Conectar la señal

func _on_body_entered(body: Node3D):
	print("Cuerpo detectado:", body.name)
	if body.name == "Player":  # Verifica si el nodo que entra es el jugador
		emit_signal("collected")  # Envía la señal al jugador
		queue_free()  # Elimina el perro de la escena
