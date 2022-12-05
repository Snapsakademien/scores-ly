import os

folderList = os.walk((os.getcwd() + "\\songs"))
next(folderList)

program = "main.ly"

for x in folderList:
    os.chdir(x[0])
    print(x[0])
    os.system(program)
