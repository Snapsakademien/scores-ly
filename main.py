import os
import glob

root_folder = os.getcwd()
folderList = os.walk((root_folder + "\\songs"))
next(folderList)

program = "main.ly"
score = "score.ly"
song_title = ""
content_list: list = []

with open("toc.txt", "w") as f:
    for x in folderList:
        if "_includes" in x:
            print()
        else:
            os.chdir(x[0])
            print(x[0])
            with open(score, "r") as s:
                lines = s.readlines()
                for line in lines:
                    if "Header" in line:
                        song_title = line.split()[0].lstrip("\\")
                        break
            os.system(program)
            pdf = glob.glob("*.pdf")[0]
            with open(root_folder + "\\include\\copyright.ly") as c:
                lines = c.readlines()
                l = 0
                for line in lines:
                    if len(line.split()) > 0 and song_title == line.split()[0]:
                        nl = lines.index(line)
                content_list.append([lines[nl + 1].split("\"")[1],
                                     "\\addcontentsline{toc}{section}{" + lines[nl + 1].split("\"")[1] + "}",
                                    "\\includepdf[pages=-]{./songs/" + os.path.basename(x[0]) + "/" + pdf + "}"])
                content_list.sort(key=lambda x: x[0])
    for x in content_list:
        f.write(x[1] + "\n")
        f.write(x[2] + "\n\n")
        print(x[1])
        print(x[2] + "\n")

f.close()
