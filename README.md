# SCRIPT ACTION
## ELCM

### Purpose
Install all the necessary dependencies on the Azure clusters.

### Usage
1. Go tho the azure portal (https://portal.azure.com/#home) and login with your avlino username.
2. Click on the HDinsights cluster that you want to install all dependencies and then, click on Script actions tab.
3. Click on 'Submit new' and select:
    1. Script type: - Custom
    2. Name: dependencies # suggestion
    3. Bash script URI: the uri of the setup file of this repository
    4. Node type(s):
        x Head
        x Worker
        [] Zookeeper
    5. Parameters: this is needed to clone the repository of the ELCM project. The parameters are 3 strings separated by
     a space, with the following information:
        1. git username
        2. git password
        3. git branch
    6. Select the - Persist this action to rerun when new nodes are added to the cluster: this is useful when the
    automatic scaling is on - (add more nodes depending on the cluster usage)