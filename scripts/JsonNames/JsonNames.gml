var theJsonFile = file_text_open_read("names.json");
var theData = "";
while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}
file_text_close(theJsonFile);

var theJsonMap = json_decode(theData);
global.Names = ds_map_find_value(theJsonMap, "default");
global.totalNames = ds_list_size(global.Names);