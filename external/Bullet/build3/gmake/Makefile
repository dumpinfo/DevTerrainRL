# GNU Make solution makefile autogenerated by Premake
# Type "make help" for usage help

ifndef config
  config=release64
endif
export config

PROJECTS := Bullet3Common Bullet3Geometry Bullet3Collision Bullet3Dynamics Bullet3OpenCL_clew Bullet2FileLoader Test_LinearMath BulletSoftBody BulletDynamics BulletCollision LinearMath

.PHONY: all clean help $(PROJECTS)

all: $(PROJECTS)

Bullet3Common: 
	@echo "==== Building Bullet3Common ($(config)) ===="
	@${MAKE} --no-print-directory -C . -f Bullet3Common.make

Bullet3Geometry: 
	@echo "==== Building Bullet3Geometry ($(config)) ===="
	@${MAKE} --no-print-directory -C . -f Bullet3Geometry.make

Bullet3Collision: 
	@echo "==== Building Bullet3Collision ($(config)) ===="
	@${MAKE} --no-print-directory -C . -f Bullet3Collision.make

Bullet3Dynamics: 
	@echo "==== Building Bullet3Dynamics ($(config)) ===="
	@${MAKE} --no-print-directory -C . -f Bullet3Dynamics.make

Bullet3OpenCL_clew: 
	@echo "==== Building Bullet3OpenCL_clew ($(config)) ===="
	@${MAKE} --no-print-directory -C . -f Bullet3OpenCL_clew.make

Bullet2FileLoader: 
	@echo "==== Building Bullet2FileLoader ($(config)) ===="
	@${MAKE} --no-print-directory -C . -f Bullet2FileLoader.make

Test_LinearMath: BulletDynamics BulletCollision LinearMath
	@echo "==== Building Test_LinearMath ($(config)) ===="
	@${MAKE} --no-print-directory -C . -f Test_LinearMath.make

BulletSoftBody: 
	@echo "==== Building BulletSoftBody ($(config)) ===="
	@${MAKE} --no-print-directory -C . -f BulletSoftBody.make

BulletDynamics: 
	@echo "==== Building BulletDynamics ($(config)) ===="
	@${MAKE} --no-print-directory -C . -f BulletDynamics.make

BulletCollision: 
	@echo "==== Building BulletCollision ($(config)) ===="
	@${MAKE} --no-print-directory -C . -f BulletCollision.make

LinearMath: 
	@echo "==== Building LinearMath ($(config)) ===="
	@${MAKE} --no-print-directory -C . -f LinearMath.make

clean:
	@${MAKE} --no-print-directory -C . -f Bullet3Common.make clean
	@${MAKE} --no-print-directory -C . -f Bullet3Geometry.make clean
	@${MAKE} --no-print-directory -C . -f Bullet3Collision.make clean
	@${MAKE} --no-print-directory -C . -f Bullet3Dynamics.make clean
	@${MAKE} --no-print-directory -C . -f Bullet3OpenCL_clew.make clean
	@${MAKE} --no-print-directory -C . -f Bullet2FileLoader.make clean
	@${MAKE} --no-print-directory -C . -f Test_LinearMath.make clean
	@${MAKE} --no-print-directory -C . -f BulletSoftBody.make clean
	@${MAKE} --no-print-directory -C . -f BulletDynamics.make clean
	@${MAKE} --no-print-directory -C . -f BulletCollision.make clean
	@${MAKE} --no-print-directory -C . -f LinearMath.make clean

help:
	@echo "Usage: make [config=name] [target]"
	@echo ""
	@echo "CONFIGURATIONS:"
	@echo "   release64"
	@echo "   debug64"
	@echo ""
	@echo "TARGETS:"
	@echo "   all (default)"
	@echo "   clean"
	@echo "   Bullet3Common"
	@echo "   Bullet3Geometry"
	@echo "   Bullet3Collision"
	@echo "   Bullet3Dynamics"
	@echo "   Bullet3OpenCL_clew"
	@echo "   Bullet2FileLoader"
	@echo "   Test_LinearMath"
	@echo "   BulletSoftBody"
	@echo "   BulletDynamics"
	@echo "   BulletCollision"
	@echo "   LinearMath"
	@echo ""
	@echo "For more information, see http://industriousone.com/premake/quick-start"
