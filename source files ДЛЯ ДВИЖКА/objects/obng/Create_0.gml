
ini_open("saveg.ini")

savr = ini_read_real("plstat", "savr", 1)

ishc = ini_read_real("plstat", "ishc", false)
istg = ini_read_real("plstat", "istg", false)
iskv = ini_read_real("plstat", "iskv", false)
iskw = ini_read_real("plstat", "iskw", false)
ists = ini_read_real("plstat", "ists", false)
issu = ini_read_real("plstat", "issu", false)
ismw = ini_read_real("plstat", "ismw", false)
iswr = ini_read_real("plstat", "iswr", false)

ini_close()
