/*****************************
* This creates the console
* system and stores it in a
* variable.
*****************************/
my_console = console_create();

/*****************************
* This allows you to override
* the default settings for the
* console system.
*****************************/
console_settings(my_console," ",false);

/*****************************
* This loads some preset commands
* into the console system.
*****************************/
console_preset(my_console);

/*****************************
* This loads all the available
* commands from a text file,
* which will be shown as suggestions
* whilst the user types.
*****************************/
//console_text_open(my_console,"commands.txt");

/*****************************
* You can also add individual
* commands to the suggestions
* list.
*****************************/
console_add(my_console,"item" + s + "<itemId>" + s + "<count>");
console_add(my_console,"save");
console_add(my_console,"exit");
console_add(my_console,"quit");
console_add(my_console,"reset");
console_add(my_console,"show_all_construct");
console_add(my_console,"add_health");
console_add(my_console,"add_satiety");
console_add(my_console, "export_tiledata");
console_add(my_console, "invinsible" + s + "<0/1>");

/* */
/*  */
