# SCRIPT ACTION
## ELCM

### Purpose
Install all the necessary dependencies on all the nodes of a given Azure cluster.

### Usage
1. Go tho the [azure portal](https://portal.azure.com/#home) and login with your avlino username.
2. Click on the HDinsights cluster that you want to install all dependencies and then, click on Script actions tab.
3. Click on 'Submit new' and select:
    1. **Script type**: *(option)* - Custom
    2. **Name**: dependencies *(insert whatever you want as long it is clear about its purpose)* 
    3. **Bash script URI**: the uri of the setup file of this repository
    4. **Node type(s)**: 
        * x Head
        * x Worker
        * [] Zookeeper
    5. **Parameters**: this is needed to clone the repository of the ELCM project. The parameters are 3 strings separated by
     a space, with the following information:
        1. git username
        2. git password
        3. git branch
    6. Select the - Persist this action to rerun when new nodes are added to the cluster: this is useful when the
    automatic scaling is on - (add more nodes depending on the cluster usage)
    7. Finally, click on **Create**. The script will run in all the nodes of the cluster. This means that it will 
    install 
    all the necessary dependencies / libraries and code in all the nodes in an automated fashion.