return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.1.5",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 48,
  height = 64,
  tilewidth = 5,
  tileheight = 5,
  nextobjectid = 44,
  properties = {
    ["music"] = "mus/08 - Curry and Rice.vgz",
    ["nextmap"] = "demonrealm.lua",
    ["script"] = "DrunkTitleMap"
  },
  tilesets = {
    {
      name = "bg_swirl",
      firstgid = 1,
      filename = "img/bg_swirl.tsx",
      tilewidth = 5,
      tileheight = 5,
      spacing = 0,
      margin = 0,
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
      tilecount = 100,
      tiles = {}
    },
    {
      name = "title_demonization",
      firstgid = 101,
      filename = "img/title_demonization.tsx",
      tilewidth = 32,
      tileheight = 24,
      spacing = 0,
      margin = 0,
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
      firstgid = 117,
      filename = "img/title.tsx",
      tilewidth = 200,
      tileheight = 50,
      spacing = 0,
      margin = 0,
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
      firstgid = 118,
      filename = "img/winetitle.tsx",
      tilewidth = 160,
      tileheight = 24,
      spacing = 0,
      margin = 0,
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
      firstgid = 119,
      filename = "img/emotes.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/emotes.png",
      imagewidth = 128,
      imageheight = 32,
      tileoffset = {
        x = -8,
        y = -16
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 16,
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
              duration = 67
            },
            {
              tileid = 9,
              duration = 67
            },
            {
              tileid = 10,
              duration = 67
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
        }
      }
    },
    {
      name = "winebomb",
      firstgid = 135,
      filename = "img/winebomb.tsx",
      tilewidth = 18,
      tileheight = 12,
      spacing = 0,
      margin = 0,
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
                x = -3,
                y = 6,
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
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 48,
      height = 64,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "gzip",
      data = "H4sIAAAAAAAACu3VVVZCAQBF0fdERQzEwsICu0WxFRMTEwtbnP8YPKNw3cW6H/vv/J8wCIIaRFCLOtQjigbE0IhQtGtCM1oQRysSaEM7OtAp3HUhiW70oBd96EcKAxgU7oYwjBGkkcEoxjCOCUwKd1OYxgxmMYd5LGARS8gKd8tYQQ6rWMM6NrCJLWwLdzvYRR572McBDnGEYxSEuxOc4gznuMAlirjCNW6Eu1vc4R4lPOART3jGC8rC3Sve8I4PfOIL3/hBBb/CnepX/V//1//1f/1f/9f/1e1Uv+r/+r/+r//r//q//q9up/pV/9f/9X/9X//X//V/dTvVr/q//u9/dKpf9X/9X//X//V//V//V7dT/ar/6//6v9X/3z8EBwieADAAAA=="
    },
    {
      type = "objectgroup",
      name = "title",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {},
      objects = {
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 50,
          width = 160,
          height = 24,
          rotation = 0,
          gid = 118,
          visible = true,
          properties = {}
        },
        {
          id = 35,
          name = "",
          type = "",
          shape = "rectangle",
          x = 75,
          y = 60,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 119,
          visible = true,
          properties = {}
        },
        {
          id = 36,
          name = "",
          type = "",
          shape = "rectangle",
          x = 57.5,
          y = 65,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 119,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "rectangle",
          x = 92.5,
          y = 62.5,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 119,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "rectangle",
          x = 127.5,
          y = 60,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 119,
          visible = true,
          properties = {}
        },
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = 110,
          y = 60,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 119,
          visible = true,
          properties = {}
        },
        {
          id = 40,
          name = "",
          type = "",
          shape = "rectangle",
          x = 145,
          y = 62.5,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 119,
          visible = true,
          properties = {}
        },
        {
          id = 41,
          name = "",
          type = "",
          shape = "rectangle",
          x = 162.5,
          y = 60,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 119,
          visible = true,
          properties = {}
        },
        {
          id = 42,
          name = "",
          type = "",
          shape = "rectangle",
          x = 180,
          y = 62.5,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 119,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
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
            ["text"] = "HI SCORE 0",
            ["textfont"] = "fnt/pressstart2p.fnt"
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
          y = 80,
          width = 200,
          height = 136,
          rotation = 0,
          visible = true,
          text = "ARROW keys: MOVE\n\nZ key:   FIRE wine shots\n\nX key:   FOCUS\n         to resist drunk\n\nC key:   VOMIT BOMB\n         with 1 or more\n\n\nESC key: PAUSE game\n\nF2 key:  RESET level\n\nAlt-F4:  QUIT",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["textfont"] = "fnt/pressstart2p.fnt"
          }
        },
        {
          id = 18,
          name = "quit",
          type = "",
          shape = "text",
          x = 0,
          y = 250,
          width = 240,
          height = 10,
          rotation = 0,
          visible = true,
          text = "or ESC back to main title",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {
            ["textfont"] = "fnt/pressstart2p.fnt"
          }
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
          visible = true,
          text = "© 2018 IoriBranford\n\nTwitter: @ioribranford",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {
            ["textfont"] = "fnt/pressstart2p.fnt"
          }
        },
        {
          id = 43,
          name = "",
          type = "",
          shape = "rectangle",
          x = 215,
          y = 150,
          width = 18,
          height = 12,
          rotation = 270,
          gid = 135,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
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
          x = 40,
          y = 220,
          width = 160,
          height = 24,
          rotation = 0,
          visible = true,
          text = "PRESS Z TO START",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["nextmap"] = "winetasting.lua",
            ["script"] = "ButtonPlayStage"
          }
        }
      }
    },
    {
      type = "objectgroup",
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
