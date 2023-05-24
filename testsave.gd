extends Control


# Called when the node enters the scene tree for the first time.


func _on_button_2_pressed():
	SaveFile.load_file()

func _on_button_pressed():
	SaveFile.save_file()
