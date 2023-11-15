from cyxyMethod.Yojian.getYojianSus import main as getYojianSus
from cyxyMethod.Generate.getGenerateSus import main as getGenerateSus
from cyxyMethod.Yojian.getYojianStatic import main as yojianStatic
from cyxyMethod.Generate.getGenerateStatic import main as generateStatic
from cyxyMethod.VersionControl import datasetName

if __name__ == '__main__':
    if datasetName == 'multi':
        getGenerateSus()
        # getYojianSus()
        # yojianStatic()
        generateStatic()
    elif datasetName == 'single':
        getGenerateSus()
        # getYojianSus()
        # yojianStatic()
        generateStatic()
    # elif datasetName == 'sir':
    #     getGenerateSus()
    #     getYojianSus()
    #     # yojianStatic()
    #     # generateStatic()