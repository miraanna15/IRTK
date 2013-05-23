# Generate the ITRKConfig.cmake file in the build tree.  Also configure
# one for installation.  The file tells external projects how to use
# ITRK.

SET(IRTK_INCLUDE_DIRS 
	${PROJECT_SOURCE_DIR}/recipes/include
	${PROJECT_SOURCE_DIR}/common++/include
	${PROJECT_SOURCE_DIR}/geometry++/include
	${PROJECT_SOURCE_DIR}/image++/include
	${PROJECT_SOURCE_DIR}/contrib++/include
	${PROJECT_SOURCE_DIR}/packages/transformation/include
	${PROJECT_SOURCE_DIR}/packages/registration/include
	${PROJECT_SOURCE_DIR}/packages/registration2/include
	${PROJECT_SOURCE_DIR}/packages/segmentation/include)

SET(IRTK_LIBRARIES_DIR ${PROJECT_BINARY_DIR}/lib/${CMAKE_CFG_INTDIR})

IF (BUILD_CONDOR_EXE)
	SET(BUILD_CONDOR_EXE_FLAG 1)
ELSE(BUILD_CONDOR_EXE)
	SET(BUILD_CONDOR_EXE_FLAG 0)
ENDIF(BUILD_CONDOR_EXE)

IF (BUILD_WITH_OPENCV)
	SET(BUILD_WITH_OPENCV_FLAG 1)
ELSE(BUILD_WITH_OPENCV)
	SET(BUILD_WITH_OPENCV_FLAG 0)
ENDIF(BUILD_WITH_OPENCV)

IF (BUILD_TBB_EXE)
	SET(BUILD_TBB_EXE_FLAG 1)
ELSE(BUILD_TBB_EXE)
	SET(BUILD_TBB_EXE_FLAG 0)
ENDIF(BUILD_TBB_EXE)

IF (ZLIB_FOUND)
	SET(ZLIB_FOUND_FLAG 1)
ELSE(ZLIB_FOUND)
	SET(ZLIB_FOUND_FLAG 0)
ENDIF(ZLIB_FOUND)

IF (FLTK_INCLUDE_DIR)
	SET(FLTK_INCLUDE_DIR_FLAG 1)
ELSE(FLTK_INCLUDE_DIR)
	SET(FLTK_INCLUDE_DIR_FLAG 0)
ENDIF(FLTK_INCLUDE_DIR)

IF (BUILD_WITH_NIFTI)
	SET(BUILD_WITH_NIFTI_FLAG 1)
ELSE(BUILD_WITH_NIFTI)
	SET(BUILD_WITH_NIFTI_FLAG 0)
ENDIF(BUILD_WITH_NIFTI)

IF (BUILD_CARDIAC)
	SET(BUILD_CARDIAC_FLAG 1)
ELSE(BUILD_CARDIAC)
	SET(BUILD_CARDIAC_FLAG 0)
ENDIF(BUILD_CARDIAC)

IF (WRAP_PYTHON)
	SET(WRAP_PYTHON_FLAG 1)
ELSE(WRAP_PYTHON)
	SET(WRAP_PYTHON_FLAG 0)
ENDIF(WRAP_PYTHON)

IF (WRAP_CYTHON)
	SET(WRAP_CYTHON_FLAG 1)
ELSE(WRAP_CYTHON)
	SET(WRAP_CYTHON_FLAG 0)
ENDIF(WRAP_CYTHON)

IF (BUILD_WITH_PNG)
	SET(BUILD_WITH_PNG_FLAG 1)
ELSE(BUILD_WITH_PNG)
	SET(BUILD_WITH_PNG_FLAG 0)
ENDIF(BUILD_WITH_PNG)

IF (BUILD_WITH_VTK)
	SET(BUILD_WITH_VTK_FLAG 1)
ELSE(BUILD_WITH_VTK)
	SET(BUILD_WITH_VTK_FLAG 0)
ENDIF(BUILD_WITH_VTK)

CONFIGURE_FILE(${CMAKE_CURRENT_LIST_DIR}/IRTKConfig.cmake.in
               ${PROJECT_BINARY_DIR}/IRTKConfig.cmake @ONLY IMMEDIATE)
