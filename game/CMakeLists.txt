project(game LANGUAGES NONE)

file(GLOB_RECURSE SOURCES
	LIST_DIRECTORIES false
	RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
	*.lua *.txt)

file(GLOB_RECURSE ASSETS
	LIST_DIRECTORIES false
	RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
	*.png *.vgm *.wav *.fnt)

add_custom_command(OUTPUT game.love
	COMMAND cmake -E tar "cfv" "${CMAKE_BINARY_DIR}/game.love" --format=zip ${SOURCES} ${ASSETS}
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

add_custom_target(game ALL DEPENDS game.love)
