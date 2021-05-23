import os
from random import randint
from statistics import mean
from shutil import copyfile


def sortFilesOnSignOfMean(directory):
    deleteDirectoryOrCreateNew(os.path.join(directory, "positive"))
    deleteDirectoryOrCreateNew(os.path.join(directory, "negative"))
    for file in os.listdir(directory):
        filePath = os.path.join(directory, file)
        if os.path.isdir(filePath):
            continue
        else:
            myMean = getMeanOfValues(filePath)
            print(myMean)
            if myMean > 0:
                copyfile(filePath, os.path.join(directory, "positive", file))
            else:
                copyfile(filePath, os.path.join(directory, "negative", file))


def getMeanOfValues(filePath) -> float:
    with open(filePath, "r") as fileContent:
        data = [float(x.strip()) for x in fileContent.read().split("\n") if x.strip()]
    return mean(data)


def generateFile(directory, numberOfFiles, numberOfValues):
    deleteDirectoryOrCreateNew(directory)
    # create Files
    for i in range(numberOfFiles):
        with open(os.path.join(directory, "File_" + str(i)), "w") as file:
            for j in range(numberOfValues):
                file.write(str(randint(-1000, 1000)) + "\n")


def main():
    print("I am the main :)")
    directory = os.path.join(os.getcwd(), "Files")
    generateFile(directory, 10, 200)
    sortFilesOnSignOfMean(directory)


def deleteDirectoryOrCreateNew(directory):
    try:
        for f in os.listdir(directory):
            pathToFileOrDir = os.path.join(directory, f)
            if os.path.isdir(pathToFileOrDir):
                os.rmdir(pathToFileOrDir)
            else:
                os.remove(pathToFileOrDir)
    except:
        os.mkdir(directory)


if __name__ == "__main__":
    main()