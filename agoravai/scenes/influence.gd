extends HBoxContainer

@onready var timer = $InfluenceTimer
@onready var label = $InfluenceCount

func _ready():
	timer.wait_time = 10
	timer.one_shot = true

	timer.connect("timeout", Callable(self, "_on_timeout"))
	
	timer.start()

	update_label()

func _physics_process(delta: float) -> void:
	if not timer.is_stopped():
		update_label()

func update_label():
	var remaining_time: int = timer.wait_time - timer.time_left
	label.text = str(remaining_time)  

func _on_timeout():
	label.text = "Game Over!" 
