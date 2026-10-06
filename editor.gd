#! namespace SettingHelper class Editor

extends "res://addons/_lib/setting_helper/components/sh_base.gd"

func _get_settings_object():
	if not Engine.is_editor_hint():
		printerr("SettingHelper.Editor - No editor available.")
		return null
	return Engine.get_singleton("EditorInterface").get_editor_settings()
