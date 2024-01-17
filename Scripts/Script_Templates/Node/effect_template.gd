# meta-name: Effect
# meta-description: Create an effect which can be applied to a target.
class_name VerbEffect
extends Effect

var member_var := 0

func execute(targets: Array[Node]) -> void:
	print("Effect targets: %s" % targets)
	print("It does %s something" % member_var)
