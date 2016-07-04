project(game)

file(GLOB GAMEFILES *.lua *.png *.vgm *.wav)
install(FILES ${GAMEFILES} DESTINATION .)
install(DIRECTORY levity sti DESTINATION .
	FILES_MATCHING PATTERN "*.lua")

set(CPACK_PACKAGE_FILE_NAME "game")
set(CPACK_GENERATOR "ZIP")
set(CPACK_INCLUDE_TOPLEVEL_DIRECTORY false)
include(CPack)
