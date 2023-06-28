@tool
extends Node
class_name SpriteWrapper

@onready var ref_node = $Sprite2D
func ready(): return ref_node != null

@export var texture : CompressedTexture2D :
	get: return ref_node.texture if ready() else null
	set(val): if ready(): ref_node.texture = val
