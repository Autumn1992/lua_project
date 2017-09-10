cmake_minimum_required(VERSION 3.0)

PROJECT(lua_project)

SET(LUA_VERSION "lua-5.3.4")
SET(LUA_SRC_DIR "${LUA_VERSION}/src")

SET(HEADERS
	${LUA_SRC_DIR}/lapi.h
	${LUA_SRC_DIR}/lauxlib.h
	${LUA_SRC_DIR}/lcode.h
	${LUA_SRC_DIR}/lctype.h
	${LUA_SRC_DIR}/ldebug.h
	${LUA_SRC_DIR}/ldo.h
	${LUA_SRC_DIR}/lfunc.h
	${LUA_SRC_DIR}/lgc.h
	${LUA_SRC_DIR}/llex.h
	${LUA_SRC_DIR}/llimits.h
	${LUA_SRC_DIR}/lmem.h
	${LUA_SRC_DIR}/lobject.h
	${LUA_SRC_DIR}/lopcodes.h
	${LUA_SRC_DIR}/lparser.h
	${LUA_SRC_DIR}/lprefix.h
	${LUA_SRC_DIR}/lstate.h
	${LUA_SRC_DIR}/lstring.h
	${LUA_SRC_DIR}/ltable.h
	${LUA_SRC_DIR}/ltm.h
	${LUA_SRC_DIR}/lua.h
	${LUA_SRC_DIR}/lua.hpp
	${LUA_SRC_DIR}/luaconf.h
	${LUA_SRC_DIR}/lualib.h
	${LUA_SRC_DIR}/lundump.h
	${LUA_SRC_DIR}/lvm.h
	${LUA_SRC_DIR}/lzio.h
)

SET(LIBLUA_SRC
	${LUA_SRC_DIR}/lapi.c
	${LUA_SRC_DIR}/lauxlib.c
	${LUA_SRC_DIR}/lbaselib.c
	${LUA_SRC_DIR}/lbitlib.c
	${LUA_SRC_DIR}/lcode.c
	${LUA_SRC_DIR}/lcorolib.c
	${LUA_SRC_DIR}/lctype.c
	${LUA_SRC_DIR}/ldblib.c
	${LUA_SRC_DIR}/ldebug.c
	${LUA_SRC_DIR}/ldo.c
	${LUA_SRC_DIR}/ldump.c
	${LUA_SRC_DIR}/lfunc.c
	${LUA_SRC_DIR}/lgc.c
	${LUA_SRC_DIR}/linit.c
	${LUA_SRC_DIR}/liolib.c
	${LUA_SRC_DIR}/llex.c
	${LUA_SRC_DIR}/lmathlib.c
	${LUA_SRC_DIR}/lmem.c
	${LUA_SRC_DIR}/loadlib.c
	${LUA_SRC_DIR}/lobject.c
	${LUA_SRC_DIR}/lopcodes.c
	${LUA_SRC_DIR}/loslib.c
	${LUA_SRC_DIR}/lparser.c
	${LUA_SRC_DIR}/lstate.c
	${LUA_SRC_DIR}/lstring.c
	${LUA_SRC_DIR}/lstrlib.c
	${LUA_SRC_DIR}/ltable.c
	${LUA_SRC_DIR}/ltablib.c
	${LUA_SRC_DIR}/ltm.c
	${LUA_SRC_DIR}/lundump.c
	${LUA_SRC_DIR}/lutf8lib.c
	${LUA_SRC_DIR}/lvm.c
	${LUA_SRC_DIR}/lzio.c
)

ADD_LIBRARY(liblua STATIC
	${LIBLUA_SRC}
	${HEADERS}
)
SET_TARGET_PROPERTIES(liblua PROPERTIES OUTPUT_NAME "lua")

ADD_EXECUTABLE(lua
	${LUA_SRC_DIR}/lua.c
	${HEADERS}
)
TARGET_LINK_LIBRARIES(lua liblua)

ADD_EXECUTABLE(luac
	${LUA_SRC_DIR}/luac.c
	${HEADERS}
)
TARGET_LINK_LIBRARIES(luac liblua)

