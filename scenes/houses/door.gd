extends StaticBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var interractable_component: InterractableComponent = $InterractableComponent

func _ready() -> void:
	interractable_component.interractable_activated.connect(on_interractable_activated)
	interractable_component.interractable_activated.connect(on_interractable_deactivated)

func on_interractable_activated() -> void:
	animated_sprite_2d.play("open_door")
	print("activated")
	
func on_interractable_deactivated() -> void:
	animated_sprite_2d.play("close_door")
	print("deactivated")
