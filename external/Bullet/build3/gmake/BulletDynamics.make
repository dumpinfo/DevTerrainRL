# GNU Make project makefile autogenerated by Premake
ifndef config
  config=release64
endif

ifndef verbose
  SILENT = @
endif

CC = gcc
CXX = g++
AR = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

ifeq ($(config),release64)
  OBJDIR     = obj/x64/Release/BulletDynamics
  TARGETDIR  = ../../bin
  TARGET     = $(TARGETDIR)/libBulletDynamics_gmake_x64_release.a
  DEFINES   +=
  INCLUDES  += -I../../src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -msse2 -ffast-math -m64
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -s -m64 -L/usr/lib64
  LDDEPS    +=
  LIBS      += $(LDDEPS)
  LINKCMD    = $(AR) -rcs $(TARGET) $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug/BulletDynamics
  TARGETDIR  = ../../bin
  TARGET     = $(TARGETDIR)/libBulletDynamics_gmake_x64_debug.a
  DEFINES   += -D_DEBUG=1
  INCLUDES  += -I../../src
  ALL_CPPFLAGS  += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS    += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -ffast-math -m64
  ALL_CXXFLAGS  += $(CXXFLAGS) $(ALL_CFLAGS)
  ALL_RESFLAGS  += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS   += $(LDFLAGS) -m64 -L/usr/lib64
  LDDEPS    +=
  LIBS      += $(LDDEPS)
  LINKCMD    = $(AR) -rcs $(TARGET) $(OBJECTS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/btSimpleDynamicsWorld.o \
	$(OBJDIR)/btDiscreteDynamicsWorld.o \
	$(OBJDIR)/btRigidBody.o \
	$(OBJDIR)/btUniversalConstraint.o \
	$(OBJDIR)/btTypedConstraint.o \
	$(OBJDIR)/btSolve2LinearConstraint.o \
	$(OBJDIR)/btPoint2PointConstraint.o \
	$(OBJDIR)/btGearConstraint.o \
	$(OBJDIR)/btHinge2Constraint.o \
	$(OBJDIR)/btHingeConstraint.o \
	$(OBJDIR)/btSequentialImpulseConstraintSolver.o \
	$(OBJDIR)/btSliderConstraint.o \
	$(OBJDIR)/btGeneric6DofSpring2Constraint.o \
	$(OBJDIR)/btFixedConstraint.o \
	$(OBJDIR)/btNNCGConstraintSolver.o \
	$(OBJDIR)/btGeneric6DofSpringConstraint.o \
	$(OBJDIR)/btGeneric6DofConstraint.o \
	$(OBJDIR)/btConeTwistConstraint.o \
	$(OBJDIR)/btContactConstraint.o \
	$(OBJDIR)/btMultiBodyConstraintSolver.o \
	$(OBJDIR)/btMultiBodyPoint2Point.o \
	$(OBJDIR)/btMultiBodyJointMotor.o \
	$(OBJDIR)/btMultiBody.o \
	$(OBJDIR)/btMultiBodyDynamicsWorld.o \
	$(OBJDIR)/btMultiBodyConstraint.o \
	$(OBJDIR)/btMultiBodyJointLimitConstraint.o \
	$(OBJDIR)/btMLCPSolver.o \
	$(OBJDIR)/btDantzigLCP.o \
	$(OBJDIR)/btLemkeAlgorithm.o \
	$(OBJDIR)/btRaycastVehicle.o \
	$(OBJDIR)/btWheelInfo.o \
	$(OBJDIR)/btKinematicCharacterController.o \

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
	@echo Linking BulletDynamics
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
	@echo Cleaning BulletDynamics
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
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -MMD -MP $(DEFINES) $(INCLUDES) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
endif

$(OBJDIR)/btSimpleDynamicsWorld.o: ../../src/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btDiscreteDynamicsWorld.o: ../../src/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btRigidBody.o: ../../src/BulletDynamics/Dynamics/btRigidBody.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btUniversalConstraint.o: ../../src/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btTypedConstraint.o: ../../src/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btSolve2LinearConstraint.o: ../../src/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btPoint2PointConstraint.o: ../../src/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btGearConstraint.o: ../../src/BulletDynamics/ConstraintSolver/btGearConstraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btHinge2Constraint.o: ../../src/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btHingeConstraint.o: ../../src/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btSequentialImpulseConstraintSolver.o: ../../src/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btSliderConstraint.o: ../../src/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btGeneric6DofSpring2Constraint.o: ../../src/BulletDynamics/ConstraintSolver/btGeneric6DofSpring2Constraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btFixedConstraint.o: ../../src/BulletDynamics/ConstraintSolver/btFixedConstraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btNNCGConstraintSolver.o: ../../src/BulletDynamics/ConstraintSolver/btNNCGConstraintSolver.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btGeneric6DofSpringConstraint.o: ../../src/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btGeneric6DofConstraint.o: ../../src/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btConeTwistConstraint.o: ../../src/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btContactConstraint.o: ../../src/BulletDynamics/ConstraintSolver/btContactConstraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btMultiBodyConstraintSolver.o: ../../src/BulletDynamics/Featherstone/btMultiBodyConstraintSolver.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btMultiBodyPoint2Point.o: ../../src/BulletDynamics/Featherstone/btMultiBodyPoint2Point.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btMultiBodyJointMotor.o: ../../src/BulletDynamics/Featherstone/btMultiBodyJointMotor.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btMultiBody.o: ../../src/BulletDynamics/Featherstone/btMultiBody.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btMultiBodyDynamicsWorld.o: ../../src/BulletDynamics/Featherstone/btMultiBodyDynamicsWorld.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btMultiBodyConstraint.o: ../../src/BulletDynamics/Featherstone/btMultiBodyConstraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btMultiBodyJointLimitConstraint.o: ../../src/BulletDynamics/Featherstone/btMultiBodyJointLimitConstraint.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btMLCPSolver.o: ../../src/BulletDynamics/MLCPSolvers/btMLCPSolver.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btDantzigLCP.o: ../../src/BulletDynamics/MLCPSolvers/btDantzigLCP.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btLemkeAlgorithm.o: ../../src/BulletDynamics/MLCPSolvers/btLemkeAlgorithm.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btRaycastVehicle.o: ../../src/BulletDynamics/Vehicle/btRaycastVehicle.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btWheelInfo.o: ../../src/BulletDynamics/Vehicle/btWheelInfo.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

$(OBJDIR)/btKinematicCharacterController.o: ../../src/BulletDynamics/Character/btKinematicCharacterController.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif
