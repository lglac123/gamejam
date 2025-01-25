extends Control

@onready var line_edit: LineEdit = $MarginContainer/LineEdit
@onready var label: Label = $MarginContainer/Label
@onready var save_button: Button = $MarginContainer/Button

func _ready():
	save_button.pressed.connect(_on_save_button_pressed)
	
func _on_save_button_pressed() -> void:
	var text_to_save: String = line_edit.text
	globals.nome = text_to_save
	label.text = "Texto salvo: " + globals.nome
	get_tree().change_scene_to_file("res://scenes/Stats.tscn")
