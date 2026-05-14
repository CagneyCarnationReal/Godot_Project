extends Node2D

@export var player_contorller : PlayerController
@export var animation_player : AnimationPlayer
@export var sprite : Sprite2D
 
func _process(delta):
	#flips sprite
	if player_contorller.direction == 1:
		sprite.flip_h = false
	elif player_contorller.direction == -1:
		sprite.flip_h = true
	#plays movement and idle animations
	if abs(player_contorller.velocity.x) > 0.0:
		animation_player.play("move")
	else:
		animation_player.play("idle")
	#plays jump
	if player_contorller.velocity.y < 0.0:
		animation_player.play("jump")
	elif player_contorller.velocity.y > 0.0:
		animation_player.play("fall")
