project(game LANGUAGES NONE)

file(GLOB_RECURSE SOURCES
	LIST_DIRECTORIES false
	RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
	*.lua *.txt)

file(GLOB ASSETS
	LIST_DIRECTORIES false
	RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
	*.png *.vgm *.wav)

add_custom_command(OUTPUT game.love
	COMMAND cmake -E tar "cfv" "game.love" --format=zip ${SOURCES} ${ASSETS}
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})

add_custom_target(game DEPENDS game.love)
