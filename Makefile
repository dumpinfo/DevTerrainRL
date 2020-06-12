
###$@ --> 规则中的目标
###$< --> 规则中的第一个依赖条件
###$^ --> 规则中的所有依赖条件

CXX = g++ -g -pg  -fprofile-arcs -ftest-coverage



OBJDIR     =  ./obj_x64
DEFINES   += -g -pg  -fprofile-arcs -ftest-coverage -DDEBUG -D_DEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS -DCPU_ONLY -DGOOGLE_GLOG_DLL_DECL= -DENABLE_TRAINING -DENABLE_DEBUG_PRINT -DENABLE_DEBUG_VISUALIZATION -D_LINUX_
INCLUDES  += -I.  -I/usr/include/hdf5/serial  -Iexternal/Bullet/src -Iexternal -Iexternal/jsoncpp/include -Iexternal/caffe/include -Iexternal/caffe/build/src -IC:/Program\ Files\ \(x86\)/boost/boost_1_58_0 -Iexternal/3rdparty/include/hdf5 -Iexternal/3rdparty/include -Iexternal/3rdparty/include/openblas -Iexternal/3rdparty/include/lmdb -I/usr/local/cuda/include -Iexternal/OpenCV/include -Iexternal/caffe/src
CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
CFLAGS    += $(CPPFLAGS) $(ARCH) -Wall -g -m64 -std=c++0x -ggdb `pkg-config --cflags gl` `pkg-config --cflags glu`
CXXFLAGS  += $(CFLAGS) 
LDFLAGS   += -m64 -L/usr/lib64 -Wl,-rpath,/disk2/MotionDev/TerrainTest/OKMIMIC/DeepTerrainRL-1.1.1/lib `pkg-config --libs gl` `pkg-config --libs glu` -Lexternal/Bullet/bin -Lexternal/jsoncpp/build/debug/src/lib_json -Lexternal/caffe/build/lib
LIBS      += -lgcov -lX11 -ldl -lpthread -lBulletDynamics_gmake_x64_debug -lBulletCollision_gmake_x64_debug -lLinearMath_gmake_x64_debug -ljsoncpp -lboost_system -lcaffe -lglog -lhdf5_serial_hl -lhdf5_serial  -lglut -lGLEW -lopencv_imgcodecs -ljsoncpp
RESFLAGS  += $(DEFINES) $(INCLUDES) 
LDDEPS    += 
LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)





default: DeepTerrainRL


$(OBJDIR):
	mkdir -p $(OBJDIR)


SOURCES = \
	./anim/Character.cpp  \
	./anim/IKSolver.cpp  \
	./anim/KinCharacter.cpp  \
	./anim/KinTree.cpp  \
	./anim/Motion.cpp  \
	./learning/ACLearner.cpp  \
	./learning/ACTrainer.cpp  \
	./learning/AsyncACTrainer.cpp  \
	./learning/AsyncCaclaTrainer.cpp  \
	./learning/AsyncMACETrainer.cpp  \
	./learning/AsyncQNetTrainer.cpp  \
	./learning/AsyncTrainer.cpp  \
	./learning/CaclaTrainer.cpp  \
	./learning/ExpTuple.cpp  \
	./learning/MACETrainer.cpp  \
	./learning/NeuralNet.cpp  \
	./learning/NeuralNetLearner.cpp  \
	./learning/NeuralNetTrainer.cpp  \
	./learning/NNSolver.cpp  \
	./learning/ParamServer.cpp  \
	./learning/QNetTrainer.cpp  \
	./learning/TrainerInterface.cpp  \
	./render/Camera.cpp  \
	./render/DrawCharacter.cpp  \
	./render/DrawGround.cpp  \
	./render/DrawKinTree.cpp  \
	./render/DrawObj.cpp  \
	./render/DrawPerturb.cpp  \
	./render/DrawSimCharacter.cpp  \
	./render/DrawUtil.cpp  \
	./render/DrawWorld.cpp  \
	./render/GraphUtil.cpp  \
	./render/TextureDesc.cpp  \
	./render/TextureUtil.cpp  \
	./scenarios/DrawScenario.cpp  \
	./scenarios/DrawScenarioExp.cpp  \
	./scenarios/DrawScenarioExpMACE.cpp  \
	./scenarios/DrawScenarioExpCacla.cpp  \
	./scenarios/DrawScenarioPoliEval.cpp  \
	./scenarios/DrawScenarioSimChar.cpp  \
	./scenarios/DrawScenarioSimInteractive.cpp  \
	./scenarios/DrawScenarioTrain.cpp  \
	./scenarios/DrawScenarioTrainMACE.cpp  \
	./scenarios/DrawScenarioTrainCacla.cpp  \
	./scenarios/Scenario.cpp  \
	./scenarios/ScenarioExp.cpp  \
	./scenarios/ScenarioExpMACE.cpp  \
	./scenarios/ScenarioExpCacla.cpp  \
	./scenarios/ScenarioPoliEval.cpp  \
	./scenarios/ScenarioSimChar.cpp  \
	./scenarios/ScenarioTrain.cpp  \
	./scenarios/ScenarioTrainMACE.cpp  \
	./scenarios/ScenarioTrainCacla.cpp  \
	./sim/BaseControllerMACE.cpp  \
	./sim/BaseControllerQ.cpp  \
	./sim/CharController.cpp  \
	./sim/CharTracer.cpp  \
	./sim/ContactManager.cpp  \
	./sim/Controller.cpp  \
	./sim/DogController.cpp  \
	./sim/DogControllerMACE.cpp  \
	./sim/BaseControllerCacla.cpp  \
	./sim/DogControllerCacla.cpp  \
	./sim/DogControllerQ.cpp  \
	./sim/FSMController.cpp  \
	./sim/GoatControllerMACE.cpp  \
	./sim/Ground.cpp  \
	./sim/GroundFlat.cpp  \
	./sim/GroundVar2D.cpp  \
	./sim/ImpPDController.cpp  \
	./sim/Joint.cpp  \
	./sim/NNController.cpp  \
	./sim/PDController.cpp  \
	./sim/Perturb.cpp  \
	./sim/PerturbManager.cpp  \
	./sim/RaptorController.cpp  \
	./sim/RaptorControllerCacla.cpp  \
	./sim/RaptorControllerMACE.cpp  \
	./sim/RaptorControllerQ.cpp  \
	./sim/RBDModel.cpp  \
	./sim/RBDUtil.cpp  \
	./sim/SimBox.cpp  \
	./sim/SimCapsule.cpp  \
	./sim/SimCharacter.cpp  \
	./sim/SimCharSoftFall.cpp  \
	./sim/SimDog.cpp  \
	./sim/SimObj.cpp  \
	./sim/SimPlane.cpp  \
	./sim/SimRaptor.cpp  \
	./sim/SpAlg.cpp  \
	./sim/TerrainGen2D.cpp  \
	./sim/TerrainRLCharController.cpp  \
	./sim/World.cpp  \
	./util/ArgParser.cpp  \
	./util/FileUtil.cpp  \
	./util/IndexManager.cpp  \
	./util/JsonUtil.cpp  \
	./util/MathUtil.cpp  \
	./util/Rand.cpp  \
	./util/Trajectory.cpp  \
	./util/Util.cpp  \
	./Main.cpp  

OBJ = \
	./anim/Character.o  \
	./anim/IKSolver.o  \
	./anim/KinCharacter.o  \
	./anim/KinTree.o  \
	./anim/Motion.o  \
	./learning/ACLearner.o  \
	./learning/ACTrainer.o  \
	./learning/AsyncACTrainer.o  \
	./learning/AsyncCaclaTrainer.o  \
	./learning/AsyncMACETrainer.o  \
	./learning/AsyncQNetTrainer.o  \
	./learning/AsyncTrainer.o  \
	./learning/CaclaTrainer.o  \
	./learning/ExpTuple.o  \
	./learning/MACETrainer.o  \
	./learning/NeuralNet.o  \
	./learning/NeuralNetLearner.o  \
	./learning/NeuralNetTrainer.o  \
	./learning/NNSolver.o  \
	./learning/ParamServer.o  \
	./learning/QNetTrainer.o  \
	./learning/TrainerInterface.o  \
	./render/Camera.o  \
	./render/DrawCharacter.o  \
	./render/DrawGround.o  \
	./render/DrawKinTree.o  \
	./render/DrawObj.o  \
	./render/DrawPerturb.o  \
	./render/DrawSimCharacter.o  \
	./render/DrawUtil.o  \
	./render/DrawWorld.o  \
	./render/GraphUtil.o  \
	./render/TextureDesc.o  \
	./render/TextureUtil.o  \
	./scenarios/DrawScenario.o  \
	./scenarios/DrawScenarioExp.o  \
	./scenarios/DrawScenarioExpMACE.o  \
	./scenarios/DrawScenarioExpCacla.o  \
	./scenarios/DrawScenarioPoliEval.o  \
	./scenarios/DrawScenarioSimChar.o  \
	./scenarios/DrawScenarioSimInteractive.o  \
	./scenarios/DrawScenarioTrain.o  \
	./scenarios/DrawScenarioTrainMACE.o  \
	./scenarios/DrawScenarioTrainCacla.o  \
	./scenarios/Scenario.o  \
	./scenarios/ScenarioExp.o  \
	./scenarios/ScenarioExpMACE.o  \
	./scenarios/ScenarioExpCacla.o  \
	./scenarios/ScenarioPoliEval.o  \
	./scenarios/ScenarioSimChar.o  \
	./scenarios/ScenarioTrain.o  \
	./scenarios/ScenarioTrainMACE.o  \
	./scenarios/ScenarioTrainCacla.o  \
	./sim/BaseControllerMACE.o  \
	./sim/BaseControllerQ.o  \
	./sim/CharController.o  \
	./sim/CharTracer.o  \
	./sim/ContactManager.o  \
	./sim/Controller.o  \
	./sim/DogController.o  \
	./sim/DogControllerMACE.o  \
	./sim/BaseControllerCacla.o  \
	./sim/DogControllerCacla.o  \
	./sim/DogControllerQ.o  \
	./sim/FSMController.o  \
	./sim/GoatControllerMACE.o  \
	./sim/Ground.o  \
	./sim/GroundFlat.o  \
	./sim/GroundVar2D.o  \
	./sim/ImpPDController.o  \
	./sim/Joint.o  \
	./sim/NNController.o  \
	./sim/PDController.o  \
	./sim/Perturb.o  \
	./sim/PerturbManager.o  \
	./sim/RaptorController.o  \
	./sim/RaptorControllerCacla.o  \
	./sim/RaptorControllerMACE.o  \
	./sim/RaptorControllerQ.o  \
	./sim/RBDModel.o  \
	./sim/RBDUtil.o  \
	./sim/SimBox.o  \
	./sim/SimCapsule.o  \
	./sim/SimCharacter.o  \
	./sim/SimCharSoftFall.o  \
	./sim/SimDog.o  \
	./sim/SimObj.o  \
	./sim/SimPlane.o  \
	./sim/SimRaptor.o  \
	./sim/SpAlg.o  \
	./sim/TerrainGen2D.o  \
	./sim/TerrainRLCharController.o  \
	./sim/World.o  \
	./util/ArgParser.o  \
	./util/FileUtil.o  \
	./util/IndexManager.o  \
	./util/JsonUtil.o  \
	./util/MathUtil.o  \
	./util/Rand.o  \
	./util/Trajectory.o  \
	./util/Util.o  \
	./Main.o  

DeepTerrainRL: $(OBJ) ./Main.o
	$(CXX) $(CXXFLAGS) -o ./DeepTerrainRL $(OBJ) $(LDFLAGS) $(RESFLAGS) $(ARCH) $(LIBS)

clean:
	-rm ./DeepTerrainRL $(OBJ)
	find ./ -name "*.gcno" | xargs rm -rf
#$(CXX) $(CXXFLAGS) -o DynamicDecoder $(OBJ) $(LDFLAGS)  -ldl -lpthread

 



