#macro ITEM_FILENAME "item_list.txt"

var file = file_text_open_write(ITEM_FILENAME);

for(var i = 1; i < array_length_1d(global.Item_Text); ++i)
{
	var line = "item " + string(i) + " " + global.Item_Text[i] + "\n";
	file_text_write_string(file, line);
}

file_text_close(file);