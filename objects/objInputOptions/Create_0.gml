/// @description setup
pause = true;

rebinding_verb = undefined;

menu_selection = 0;

lock_confirm = input_binding_get("accept")
lock_deny = input_binding_get("cancel")

instance_create(x,y,objFadeInShutter)