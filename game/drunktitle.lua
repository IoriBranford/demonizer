return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.4",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 24,
  height = 32,
  tilewidth = 10,
  tileheight = 10,
  nextlayerid = 7,
  nextobjectid = 44,
  properties = {
    ["blurupdatespeed"] = 1,
    ["music"] = "mus/tutorial.vgm",
    ["prevmap"] = "mainmenu.lua",
    ["script"] = "DrunkTitleMap"
  },
  tilesets = {
    {
      name = "bg_swirl",
      firstgid = 1,
      filename = "img/bg_swirl.tsx",
      tilewidth = 10,
      tileheight = 10,
      spacing = 0,
      margin = 0,
      columns = 5,
      image = "img/bg_swirl.png",
      imagewidth = 50,
      imageheight = 50,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 5,
        height = 5
      },
      properties = {},
      terrains = {},
      tilecount = 25,
      tiles = {}
    },
    {
      name = "title_demonization",
      firstgid = 26,
      filename = "img/title_demonization.tsx",
      tilewidth = 32,
      tileheight = 24,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "img/title_demonization.png",
      imagewidth = 256,
      imageheight = 48,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 24
      },
      properties = {},
      terrains = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 100
            },
            {
              tileid = 2,
              duration = 150
            },
            {
              tileid = 4,
              duration = 100
            },
            {
              tileid = 6,
              duration = 150
            }
          }
        },
        {
          id = 1,
          animation = {
            {
              tileid = 1,
              duration = 100
            },
            {
              tileid = 3,
              duration = 150
            },
            {
              tileid = 5,
              duration = 100
            },
            {
              tileid = 7,
              duration = 150
            }
          }
        },
        {
          id = 8,
          animation = {
            {
              tileid = 8,
              duration = 100
            },
            {
              tileid = 10,
              duration = 150
            },
            {
              tileid = 12,
              duration = 100
            },
            {
              tileid = 14,
              duration = 150
            }
          }
        }
      }
    },
    {
      name = "title",
      firstgid = 42,
      filename = "img/title.tsx",
      tilewidth = 200,
      tileheight = 50,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "img/title.png",
      imagewidth = 200,
      imageheight = 50,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 200,
        height = 50
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "winetitle",
      firstgid = 43,
      filename = "img/winetitle.tsx",
      tilewidth = 160,
      tileheight = 24,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "img/winetitle.png",
      imagewidth = 160,
      imageheight = 24,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 160,
        height = 24
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "emotes",
      firstgid = 44,
      filename = "img/emotes.tsx",
      tilewidth = 24,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "img/emotes.png",
      imagewidth = 192,
      imageheight = 48,
      tileoffset = {
        x = -12,
        y = -16
      },
      grid = {
        orientation = "orthogonal",
        width = 24,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 24,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "drunk"
          },
          animation = {
            {
              tileid = 0,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            },
            {
              tileid = 2,
              duration = 125
            },
            {
              tileid = 3,
              duration = 125
            }
          }
        },
        {
          id = 4,
          properties = {
            ["name"] = "heart"
          },
          animation = {
            {
              tileid = 4,
              duration = 125
            },
            {
              tileid = 5,
              duration = 125
            },
            {
              tileid = 6,
              duration = 125
            },
            {
              tileid = 7,
              duration = 125
            }
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "sweat"
          },
          animation = {
            {
              tileid = 8,
              duration = 66
            },
            {
              tileid = 9,
              duration = 66
            },
            {
              tileid = 10,
              duration = 66
            }
          }
        },
        {
          id = 11,
          properties = {
            ["name"] = "help"
          },
          animation = {
            {
              tileid = 11,
              duration = 125
            },
            {
              tileid = 12,
              duration = 125
            },
            {
              tileid = 13,
              duration = 125
            },
            {
              tileid = 14,
              duration = 125
            },
            {
              tileid = 15,
              duration = 125
            }
          }
        },
        {
          id = 16,
          properties = {
            ["name"] = "stun"
          },
          animation = {
            {
              tileid = 16,
              duration = 125
            },
            {
              tileid = 17,
              duration = 125
            },
            {
              tileid = 18,
              duration = 125
            },
            {
              tileid = 17,
              duration = 125
            }
          }
        },
        {
          id = 19,
          properties = {
            ["name"] = "hostile"
          }
        },
        {
          id = 20,
          properties = {
            ["name"] = "angry"
          },
          animation = {
            {
              tileid = 20,
              duration = 125
            },
            {
              tileid = 21,
              duration = 125
            },
            {
              tileid = 22,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "winebomb",
      firstgid = 68,
      filename = "img/winebomb.tsx",
      tilewidth = 18,
      tileheight = 12,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "img/winebomb.png",
      imagewidth = 18,
      imageheight = 24,
      tileoffset = {
        x = -9,
        y = 6
      },
      grid = {
        orientation = "orthogonal",
        width = 18,
        height = 12
      },
      properties = {},
      terrains = {},
      tilecount = 2,
      tiles = {
        {
          id = 0,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "ellipse",
                x = 6,
                y = 0,
                width = 12,
                height = 12,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 67
            },
            {
              tileid = 1,
              duration = 67
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 6,
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 24,
      height = 32,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["script"] = "InfiniteScrollLayer",
        ["scrolling"] = true,
        ["scrollvelx"] = 60,
        ["scrollvely"] = 60,
        ["tilewrap"] = true
      },
      encoding = "base64",
      compression = "gzip",
      data = "H4sIAAAAAAAACu3RNxKAQBADwcN7Dm/+/1EmXsItiKSqTpROCP8sQYoMOQrnZ1eiQo0GrfOz69BjwIjo/OwmzFiwYnN+djsOnLhwOz879VVf9VVf9VVf9X1PfdXX0/erPd/SQyoADAAA"
    },
    {
      type = "objectgroup",
      id = 2,
      name = "title",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {
        ["script"] = "DrunkTitleLayer"
      },
      objects = {
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 45,
          width = 160,
          height = 24,
          rotation = 0,
          gid = 43,
          visible = true,
          properties = {}
        },
        {
          id = 35,
          name = "",
          type = "",
          shape = "rectangle",
          x = 75,
          y = 55,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 44,
          visible = true,
          properties = {}
        },
        {
          id = 36,
          name = "",
          type = "",
          shape = "rectangle",
          x = 57.5,
          y = 60,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 44,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "rectangle",
          x = 92.5,
          y = 57.5,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 44,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "rectangle",
          x = 127.5,
          y = 55,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 44,
          visible = true,
          properties = {}
        },
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = 110,
          y = 55,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 44,
          visible = true,
          properties = {}
        },
        {
          id = 40,
          name = "",
          type = "",
          shape = "rectangle",
          x = 145,
          y = 57.5,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 44,
          visible = true,
          properties = {}
        },
        {
          id = 41,
          name = "",
          type = "",
          shape = "rectangle",
          x = 162.5,
          y = 55,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 44,
          visible = true,
          properties = {}
        },
        {
          id = 42,
          name = "",
          type = "",
          shape = "rectangle",
          x = 180,
          y = 57.5,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 44,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 3,
      name = "Object Layer 1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {},
      objects = {
        {
          id = 3,
          name = "hiscore",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 5,
          width = 240,
          height = 10,
          rotation = 0,
          visible = false,
          properties = {
            ["text"] = "HI SCORE 0"
          }
        },
        {
          id = 11,
          name = "camera",
          type = "Camera",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 240,
          height = 320,
          rotation = 0,
          visible = false,
          properties = {}
        },
        {
          id = 17,
          name = "instructions",
          type = "",
          shape = "text",
          x = 20,
          y = 60,
          width = 200,
          height = 190,
          rotation = 0,
          visible = true,
          text = "${joy_x}: MOVE\n\n${joy_fire}:   FIRE wine shots\n${joy_focus}:   FOCUS\n         to resist drunk\n${joy_bomb}:   VOMIT BOMB\n         with 1 or more\n\n${joy_pausemenu}: PAUSE game\nF2 key:  RESET level\nAlt-F4:  QUIT",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 18,
          name = "quit",
          type = "",
          shape = "text",
          x = 20,
          y = 280,
          width = 200,
          height = 30,
          rotation = 0,
          visible = true,
          text = "or ESC back to main title",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {}
        },
        {
          id = 19,
          name = "copyright",
          type = "",
          shape = "text",
          x = 0,
          y = 290,
          width = 240,
          height = 30,
          rotation = 0,
          visible = false,
          text = "© 2018 IoriBranford\n\nTwitter: @ioribranford",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {}
        },
        {
          id = 43,
          name = "",
          type = "",
          shape = "rectangle",
          x = 215,
          y = 165,
          width = 18,
          height = 12,
          rotation = -90,
          gid = 68,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 4,
      name = "stagemenu",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "MenuDrunk"
      },
      objects = {
        {
          id = 31,
          name = "caravan",
          type = "UIButton",
          shape = "text",
          x = 20,
          y = 250,
          width = 200,
          height = 30,
          rotation = 0,
          visible = true,
          text = "PRESS ${joy_fire} TO START",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "startGame",
            ["nextmap"] = "winetasting.lua"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 5,
      name = "curtain",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "Curtain"
      },
      objects = {}
    }
  }
}
