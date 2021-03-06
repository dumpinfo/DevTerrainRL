# GNU Make project makefile autogenerated by Premake
ifndef config
  config=debug32
endif

ifndef verbose
  SILENT = @
endif

ifndef CC
  CC = gcc -g -pg  -fprofile-arcs -ftest-coverage
endif

ifndef CXX
  CXX = g++ -g -pg  -fprofile-arcs -ftest-coverage
endif

ifndef AR
  AR = ar
endif

ifeq ($(config),debug32)
  OBJDIR     = obj/x32/Debug
  TARGETDIR  = .
  TARGET     = $(TARGETDIR)/TerrainRL
  DEFINES   += -DDEBUG -D_DEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS -DCPU_ONLY -DGOOGLE_GLOG_DLL_DECL= -DENABLE_TRAINING -DENABLE_DEBUG_PRINT -DENABLE_DEBUG_VISUALIZATION -D_LINUX_
  INCLUDES  += -I. -Iexternal/Bullet/src -Iexternal -Iexternal/jsoncpp/include -Iexternal/caffe/include -Iexternal/caffe/build/src -IC:/Program\ Files\ \(x86\)/boost/boost_1_58_0 -Iexternal/3rdparty/include/hdf5 -Iexternal/3rdparty/include -Iexternal/3rdparty/include/openblas -Iexternal/3rdparty/include/lmdb -I/usr/local/cuda/include -Iexternal/OpenCV/include -Iexternal/caffe/src
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -Wall -g -m32 -std=c++0x -ggdb `pkg-config --cflags gl` `pkg-config --cflags glu`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -m32 -L/usr/lib32 -Wl,-rpath,/disk2/MotionDev/TerrainTest/OKMIMIC/DeepTerrainRL-1.1.1/lib `pkg-config --libs gl` `pkg-config --libs glu` -Lexternal/Bullet/bin -Lexternal/jsoncpp/build/debug/src/lib_json -Lexternal/caffe/build/lib
  LIBS      += -lX11 -ldl -lpthread -lBulletDynamics_gmake_x64_debug -lBulletCollision_gmake_x64_debug -lLinearMath_gmake_x64_debug -ljsoncpp -lboost_system -lcaffe -lglog -lhdf5 -lhdf5_hl -lglut -lGLEW
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR     = obj/x32/Release
  TARGETDIR  = .
  TARGET     = $(TARGETDIR)/TerrainRL
  DEFINES   += -DNDEBUG -D_DEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS -DCPU_ONLY -DGOOGLE_GLOG_DLL_DECL= -DENABLE_TRAINING -DENABLE_DEBUG_PRINT -DENABLE_DEBUG_VISUALIZATION -D_LINUX_
  INCLUDES  += -I. -Iexternal/Bullet/src -Iexternal -Iexternal/jsoncpp/include -Iexternal/caffe/include -Iexternal/caffe/build/src -IC:/Program\ Files\ \(x86\)/boost/boost_1_58_0 -Iexternal/3rdparty/include/hdf5 -Iexternal/3rdparty/include -Iexternal/3rdparty/include/openblas -Iexternal/3rdparty/include/lmdb -I/usr/local/cuda/include -Iexternal/OpenCV/include -Iexternal/caffe/src
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -Wall -g -O2 -m32 -std=c++0x -ggdb `pkg-config --cflags gl` `pkg-config --cflags glu`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -m32 -L/usr/lib32 -Wl,-rpath,/disk2/MotionDev/TerrainTest/OKMIMIC/DeepTerrainRL-1.1.1/lib `pkg-config --libs gl` `pkg-config --libs glu` -Lexternal/Bullet/bin -Lexternal/jsoncpp/build/debug/src/lib_json -Lexternal/caffe/build/lib
  LIBS      += -lX11 -ldl -lpthread -lBulletDynamics_gmake_x64_release -lBulletCollision_gmake_x64_release -lLinearMath_gmake_x64_release -ljsoncpp -lboost_system -lcaffe -lglog -lhdf5 -lhdf5_hl -lglut -lGLEW
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug
  TARGETDIR  = .
  TARGET     = $(TARGETDIR)/TerrainRL
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
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR     = obj/x64/Release
  TARGETDIR  = .
  TARGET     = $(TARGETDIR)/TerrainRL
  DEFINES   += -DNDEBUG -D_DEBUG -D_CRT_SECURE_NO_WARNINGS -D_SCL_SECURE_NO_WARNINGS -DCPU_ONLY -DGOOGLE_GLOG_DLL_DECL= -DENABLE_TRAINING -DENABLE_DEBUG_PRINT -DENABLE_DEBUG_VISUALIZATION -D_LINUX_
  INCLUDES  += -I. -Iexternal/Bullet/src -Iexternal -Iexternal/jsoncpp/include -Iexternal/caffe/include -Iexternal/caffe/build/src -IC:/Program\ Files\ \(x86\)/boost/boost_1_58_0 -Iexternal/3rdparty/include/hdf5 -Iexternal/3rdparty/include -Iexternal/3rdparty/include/openblas -Iexternal/3rdparty/include/lmdb -I/usr/local/cuda/include -Iexternal/OpenCV/include -Iexternal/caffe/src
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -Wall -g -O2 -m64 -std=c++0x -ggdb `pkg-config --cflags gl` `pkg-config --cflags glu`
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -m64 -L/usr/lib64 -Wl,-rpath,/disk2/MotionDev/TerrainTest/OKMIMIC/DeepTerrainRL-1.1.1/lib `pkg-config --libs gl` `pkg-config --libs glu` -Lexternal/Bullet/bin -Lexternal/jsoncpp/build/debug/src/lib_json -Lexternal/caffe/build/lib
  LIBS      += -lX11 -ldl -lpthread -lBulletDynamics_gmake_x64_release -lBulletCollision_gmake_x64_release -lLinearMath_gmake_x64_release -ljsoncpp -lboost_system -lcaffe -lglog -lhdf5 -lhdf5_hl -lglut -lGLEW
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LDDEPS    += 
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(LDFLAGS) $(RESOURCES) $(ARCH) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/ACLearner.o \
	$(OBJDIR)/AsyncCaclaTrainer.o \
	$(OBJDIR)/AsyncQNetTrainer.o \
	$(OBJDIR)/ExpTuple.o \
	$(OBJDIR)/CaclaTrainer.o \
	$(OBJDIR)/NNSolver.o \
	$(OBJDIR)/QNetTrainer.o \
	$(OBJDIR)/MACETrainer.o \
	$(OBJDIR)/NeuralNet.o \
	$(OBJDIR)/NeuralNetTrainer.o \
	$(OBJDIR)/ACTrainer.o \
	$(OBJDIR)/ParamServer.o \
	$(OBJDIR)/AsyncMACETrainer.o \
	$(OBJDIR)/AsyncACTrainer.o \
	$(OBJDIR)/AsyncTrainer.o \
	$(OBJDIR)/NeuralNetLearner.o \
	$(OBJDIR)/TrainerInterface.o \
	$(OBJDIR)/TextureUtil.o \
	$(OBJDIR)/GraphUtil.o \
	$(OBJDIR)/Camera.o \
	$(OBJDIR)/DrawWorld.o \
	$(OBJDIR)/TextureDesc.o \
	$(OBJDIR)/DrawGround.o \
	$(OBJDIR)/DrawSimCharacter.o \
	$(OBJDIR)/DrawKinTree.o \
	$(OBJDIR)/DrawUtil.o \
	$(OBJDIR)/DrawCharacter.o \
	$(OBJDIR)/DrawObj.o \
	$(OBJDIR)/DrawPerturb.o \
	$(OBJDIR)/DrawScenarioSimChar.o \
	$(OBJDIR)/DrawScenarioExpMACE.o \
	$(OBJDIR)/ScenarioTrainMACE.o \
	$(OBJDIR)/ScenarioPoliEval.o \
	$(OBJDIR)/DrawScenarioSimInteractive.o \
	$(OBJDIR)/DrawScenario.o \
	$(OBJDIR)/DrawScenarioExpCacla.o \
	$(OBJDIR)/DrawScenarioTrainCacla.o \
	$(OBJDIR)/DrawScenarioPoliEval.o \
	$(OBJDIR)/ScenarioExpCacla.o \
	$(OBJDIR)/ScenarioTrain.o \
	$(OBJDIR)/DrawScenarioTrain.o \
	$(OBJDIR)/ScenarioExp.o \
	$(OBJDIR)/ScenarioTrainCacla.o \
	$(OBJDIR)/ScenarioSimChar.o \
	$(OBJDIR)/DrawScenarioExp.o \
	$(OBJDIR)/Scenario.o \
	$(OBJDIR)/DrawScenarioTrainMACE.o \
	$(OBJDIR)/ScenarioExpMACE.o \
	$(OBJDIR)/SimPlane.o \
	$(OBJDIR)/Perturb.o \
	$(OBJDIR)/GoatControllerMACE.o \
	$(OBJDIR)/DogController.o \
	$(OBJDIR)/PerturbManager.o \
	$(OBJDIR)/BaseControllerCacla.o \
	$(OBJDIR)/SimCharacter.o \
	$(OBJDIR)/RaptorController.o \
	$(OBJDIR)/BaseControllerQ.o \
	$(OBJDIR)/SimCapsule.o \
	$(OBJDIR)/DogControllerCacla.o \
	$(OBJDIR)/RaptorControllerQ.o \
	$(OBJDIR)/SimObj.o \
	$(OBJDIR)/DogControllerMACE.o \
	$(OBJDIR)/RaptorControllerCacla.o \
	$(OBJDIR)/FSMController.o \
	$(OBJDIR)/Controller.o \
	$(OBJDIR)/TerrainGen2D.o \
	$(OBJDIR)/SimDog.o \
	$(OBJDIR)/ImpPDController.o \
	$(OBJDIR)/SimCharSoftFall.o \
	$(OBJDIR)/DogControllerQ.o \
	$(OBJDIR)/SimBox.o \
	$(OBJDIR)/Ground.o \
	$(OBJDIR)/RBDModel.o \
	$(OBJDIR)/BaseControllerMACE.o \
	$(OBJDIR)/TerrainRLCharController.o \
	$(OBJDIR)/RBDUtil.o \
	$(OBJDIR)/GroundVar2D.o \
	$(OBJDIR)/SimRaptor.o \
	$(OBJDIR)/CharController.o \
	$(OBJDIR)/NNController.o \
	$(OBJDIR)/GroundFlat.o \
	$(OBJDIR)/ContactManager.o \
	$(OBJDIR)/PDController.o \
	$(OBJDIR)/CharTracer.o \
	$(OBJDIR)/RaptorControllerMACE.o \
	$(OBJDIR)/World.o \
	$(OBJDIR)/SpAlg.o \
	$(OBJDIR)/Joint.o \
	$(OBJDIR)/Util.o \
	$(OBJDIR)/IndexManager.o \
	$(OBJDIR)/JsonUtil.o \
	$(OBJDIR)/Rand.o \
	$(OBJDIR)/ArgParser.o \
	$(OBJDIR)/MathUtil.o \
	$(OBJDIR)/Trajectory.o \
	$(OBJDIR)/FileUtil.o \
	$(OBJDIR)/IKSolver.o \
	$(OBJDIR)/Character.o \
	$(OBJDIR)/KinCharacter.o \
	$(OBJDIR)/Motion.o \
	$(OBJDIR)/KinTree.o \
	$(OBJDIR)/lodepng.o \
	$(OBJDIR)/Main.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking TerrainRL
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning TerrainRL
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
	-$(SILENT) cp $< $(OBJDIR)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
endif

$(OBJDIR)/ACLearner.o: learning/ACLearner.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncCaclaTrainer.o: learning/AsyncCaclaTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncQNetTrainer.o: learning/AsyncQNetTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ExpTuple.o: learning/ExpTuple.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/CaclaTrainer.o: learning/CaclaTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/NNSolver.o: learning/NNSolver.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/QNetTrainer.o: learning/QNetTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/MACETrainer.o: learning/MACETrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/NeuralNet.o: learning/NeuralNet.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/NeuralNetTrainer.o: learning/NeuralNetTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ACTrainer.o: learning/ACTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ParamServer.o: learning/ParamServer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncMACETrainer.o: learning/AsyncMACETrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncACTrainer.o: learning/AsyncACTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/AsyncTrainer.o: learning/AsyncTrainer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/NeuralNetLearner.o: learning/NeuralNetLearner.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/TrainerInterface.o: learning/TrainerInterface.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/TextureUtil.o: render/TextureUtil.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/GraphUtil.o: render/GraphUtil.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/Camera.o: render/Camera.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawWorld.o: render/DrawWorld.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/TextureDesc.o: render/TextureDesc.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawGround.o: render/DrawGround.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawSimCharacter.o: render/DrawSimCharacter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawKinTree.o: render/DrawKinTree.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawUtil.o: render/DrawUtil.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawCharacter.o: render/DrawCharacter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawObj.o: render/DrawObj.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawPerturb.o: render/DrawPerturb.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawScenarioSimChar.o: scenarios/DrawScenarioSimChar.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawScenarioExpMACE.o: scenarios/DrawScenarioExpMACE.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ScenarioTrainMACE.o: scenarios/ScenarioTrainMACE.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ScenarioPoliEval.o: scenarios/ScenarioPoliEval.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawScenarioSimInteractive.o: scenarios/DrawScenarioSimInteractive.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawScenario.o: scenarios/DrawScenario.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawScenarioExpCacla.o: scenarios/DrawScenarioExpCacla.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawScenarioTrainCacla.o: scenarios/DrawScenarioTrainCacla.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawScenarioPoliEval.o: scenarios/DrawScenarioPoliEval.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ScenarioExpCacla.o: scenarios/ScenarioExpCacla.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ScenarioTrain.o: scenarios/ScenarioTrain.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawScenarioTrain.o: scenarios/DrawScenarioTrain.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ScenarioExp.o: scenarios/ScenarioExp.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ScenarioTrainCacla.o: scenarios/ScenarioTrainCacla.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ScenarioSimChar.o: scenarios/ScenarioSimChar.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawScenarioExp.o: scenarios/DrawScenarioExp.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/Scenario.o: scenarios/Scenario.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DrawScenarioTrainMACE.o: scenarios/DrawScenarioTrainMACE.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ScenarioExpMACE.o: scenarios/ScenarioExpMACE.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/SimPlane.o: sim/SimPlane.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/Perturb.o: sim/Perturb.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/GoatControllerMACE.o: sim/GoatControllerMACE.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DogController.o: sim/DogController.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/PerturbManager.o: sim/PerturbManager.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/BaseControllerCacla.o: sim/BaseControllerCacla.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/SimCharacter.o: sim/SimCharacter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/RaptorController.o: sim/RaptorController.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/BaseControllerQ.o: sim/BaseControllerQ.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/SimCapsule.o: sim/SimCapsule.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DogControllerCacla.o: sim/DogControllerCacla.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/RaptorControllerQ.o: sim/RaptorControllerQ.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/SimObj.o: sim/SimObj.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DogControllerMACE.o: sim/DogControllerMACE.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/RaptorControllerCacla.o: sim/RaptorControllerCacla.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/FSMController.o: sim/FSMController.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/Controller.o: sim/Controller.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/TerrainGen2D.o: sim/TerrainGen2D.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/SimDog.o: sim/SimDog.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ImpPDController.o: sim/ImpPDController.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/SimCharSoftFall.o: sim/SimCharSoftFall.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/DogControllerQ.o: sim/DogControllerQ.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/SimBox.o: sim/SimBox.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/Ground.o: sim/Ground.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/RBDModel.o: sim/RBDModel.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/BaseControllerMACE.o: sim/BaseControllerMACE.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/TerrainRLCharController.o: sim/TerrainRLCharController.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/RBDUtil.o: sim/RBDUtil.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/GroundVar2D.o: sim/GroundVar2D.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/SimRaptor.o: sim/SimRaptor.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/CharController.o: sim/CharController.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/NNController.o: sim/NNController.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/GroundFlat.o: sim/GroundFlat.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ContactManager.o: sim/ContactManager.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/PDController.o: sim/PDController.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/CharTracer.o: sim/CharTracer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/RaptorControllerMACE.o: sim/RaptorControllerMACE.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/World.o: sim/World.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/SpAlg.o: sim/SpAlg.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/Joint.o: sim/Joint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/Util.o: util/Util.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/IndexManager.o: util/IndexManager.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/JsonUtil.o: util/JsonUtil.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/Rand.o: util/Rand.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/ArgParser.o: util/ArgParser.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/MathUtil.o: util/MathUtil.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/Trajectory.o: util/Trajectory.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/FileUtil.o: util/FileUtil.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/IKSolver.o: anim/IKSolver.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/Character.o: anim/Character.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/KinCharacter.o: anim/KinCharacter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/Motion.o: anim/Motion.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/KinTree.o: anim/KinTree.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/lodepng.o: external/LodePNG/lodepng.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"
$(OBJDIR)/Main.o: Main.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
