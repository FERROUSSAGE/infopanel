local shell = require("shell")
local fs = require("filesystem")
 
--Массив с программами, которые необходимо загрузить.
--Первый элемент - ссылка на файл, второй - путь для сохранения файла.
local applications = {
  { "https://github.com/FERROUSSAGE/infopanel/blob/master/gml/canvas.lua", "gm1/canvas.lia"},
  { "https://github.com/FERROUSSAGE/infopanel/blob/master/gml/colorutils.lua", "gml/colorutils.lua"},
  {"https://github.com/FERROUSSAGE/infopanel/blob/master/gml/default.gss", "gm1/default.gss"},
  {"https://github.com/FERROUSSAGE/infopanel/blob/master/gml/gfxbuffer.lua", "gm1/gfxbuffer.lua"},
  {"https://github.com/FERROUSSAGE/infopanel/blob/master/gml/gml.lua", "gm1/gm1.lua"},
  {"https://github.com/FERROUSSAGE/infopanel/blob/master/gml/gmlDialogs.lua", "gm1/gmlDialogs.lua"},
  {"https://github.com/FERROUSSAGE/infopanel/blob/master/gml/style.gss", "gm1/style.gss"},
  {"https://github.com/FERROUSSAGE/infopanel/blob/master/xml/XmlParser.lua", "xml/XmlParser.lua"},
}
 
--Загружаем файлы
for i = 1, #applications do
  print("Устанавливаю " .. applications[i][2])
  fs.makeDirectory(fs.path(applications[i][2]) or "")		
  shell.execute("wget " .. applications[i][1] .. " " .. applications[i][2] .. " -fQ")
  os.sleep(0.3)
end
print("Готово")
