extends Node2D
@onready var sq: CharacterBody2D = $sq
@onready var d2: Area2D = $Area2D
@onready var txt: Label = $Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_2d_body_entered(body: Node2D) -> void:
	sq.visible = false
	txt.text = "You won!"
	await get_tree().create_timer(1).timeout
	txt.text = "No more game"
	await get_tree().create_timer(1.5).timeout
	get_tree().quit()
	#print("it entered")
	pass # Replace with function body.
