import os
import sys 

def checkRepoLocations(projectName=None):
    home_directory = os.path.expanduser( '~' )
    pathToProjects = home_directory + "/ProjectsRepoTest"

    def verifyProjectsRepo():
        try:
            if os.path.isdir(pathToProjects):
                pass
                # print("ProjectsRepo Exists! All good!\n")
            else:
                # print("Could not find ProjectsRepo folder. Creating ProjectsRepo...\n")
                os.mkdir(pathToProjects)
                print("Success!")
        except Exception as e:
            print("Failed to create the ProjectsRepo folder. Here is why: \n" + str(e))
            return False
        return True
    
    def checkAndCreateProject():
        if projectName == None:
            print("NOT ENOUGH ARGUMENTS: No Project Name. Please provide a project name....\n")
            return
        else:
            projectsRepo = verifyProjectsRepo()
            currentProject = pathToProjects + "/" + projectName
            
            if projectsRepo == True:
                # print("ProjectsRepo Is Good...\n")
                try:
                    if os.path.isdir(currentProject):
                        # print(f"{currentProject} Exists! All good! \n")
                        pass
                    else:
                        # print(f"Could not find {currentProject} folder. Creating folder for project...\n")
                        os.mkdir(currentProject)
                        # print("Success!")
                except Exception as e:
                    # print("Failed to create the project folder thing folder. Here is why: \n" + str(e))
                    return
            print(str(currentProject)) 
            return
    checkAndCreateProject()
    return

checkRepoLocations(sys.argv[1])