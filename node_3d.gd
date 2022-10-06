extends Node3D


func create_neutral_lut(p_name: String, p_size: int, p_vertical: bool):
	var image = Image.new()
	image.create(
			p_size if p_vertical else (p_size * p_size),
			(p_size * p_size) if p_vertical else p_size,
			false,
			Image.FORMAT_RGB8
	)

	for z in p_size:
		var x_offset := int(z * p_size) if not p_vertical else 0
		var y_offset := int(z * p_size) if p_vertical else 0
		for x in p_size:
			for y in p_size:
				image.set_pixel(x_offset + x, y_offset + y, Color8(
						roundi((x / float(p_size - 1)) * 255),
						roundi((y / float(p_size - 1)) * 255),
						roundi((z / float(p_size - 1)) * 255)
				))

	image.save_png("user://" + p_name + ".png")


func _ready() -> void:
	create_neutral_lut("lut_neutral_17x17x17_horizontal", 17, false)
	create_neutral_lut("lut_neutral_33x33x33_horizontal", 33, false)
	create_neutral_lut("lut_neutral_51x51x51_horizontal", 51, false)
	create_neutral_lut("lut_neutral_65x65x65_horizontal", 65, false)
	create_neutral_lut("lut_neutral_17x17x17_vertical", 17, true)
	create_neutral_lut("lut_neutral_33x33x33_vertical", 33, true)
	create_neutral_lut("lut_neutral_51x51x51_vertical", 51, true)
	create_neutral_lut("lut_neutral_65x65x65_vertical", 65, true)

	OS.shell_open(ProjectSettings.globalize_path("user://"))
	get_tree().quit()
