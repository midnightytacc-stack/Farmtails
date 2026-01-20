class_name InterractableComponent
extends Area2D

signal interractable_activated
signal interractable_deactivated



func _on_body_entered(body: Node2D) -> void:
	interractable_activated.emit()



func _on_body_exited(body: Node2D) -> void:
	interractable_deactivated.emit()
