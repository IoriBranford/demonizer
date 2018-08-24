return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.1.6",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 48,
  height = 64,
  tilewidth = 5,
  tileheight = 5,
  nextobjectid = 37,
  properties = {
    ["music"] = "mus/02 - Burning Heart.vgz",
    ["nextmap"] = "demonrealm.lua",
    ["script"] = "MenuMap"
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
      data = "H4sIAAAAAAAAA+3VVVZCAQBF0fdERQzEwsICu0WxFRMTEwtbnP8YPKNw3cW6H/vv/J8wCIIaRFCLOtQjigbE0IhQtGtCM1oQRysSaEM7OtAp3HUhiW70oBd96EcKAxgU7oYwjBGkkcEoxjCOCUwKd1OYxgxmMYd5LGARS8gKd8tYQQ6rWMM6NrCJLWwLdzvYRR572McBDnGEYxSEuxOc4gznuMAlirjCNW6Eu1vc4R4lPOART3jGC8rC3Sve8I4PfOIL3/hBBb/CnepX/V//1//1f/1f/9f/1e1Uv+r/+r/+r//r//q//q9up/pV/9f/9X/9X//X//V/dTvVr/q//u9/dKpf9X/9X//X//V//V//V7dT/ar/6//6v9X/3z8EBwieADAAAA=="
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
          x = 70,
          y = 200,
          width = 100,
          height = 40,
          rotation = 0,
          visible = false,
          text = "Z key: FIRE\n\nX key: FOCUS\n\nC key: BOMB",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 18,
          name = "pressstart",
          type = "",
          shape = "text",
          x = 0,
          y = 260,
          width = 240,
          height = 10,
          rotation = 0,
          visible = false,
          text = "PRESS Z TO START",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
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
          y = 304,
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
          properties = {}
        },
        {
          id = 26,
          name = "instructions_joystick",
          type = "",
          shape = "text",
          x = 0,
          y = 288,
          width = 240,
          height = 8,
          rotation = 0,
          visible = true,
          text = "JOY:SELECT   BTN1:START",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "title",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "TitleLayer"
      },
      objects = {
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12.5,
          y = 40,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 101,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192.5,
          y = 40,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 102,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 115,
          y = 65,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 109,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 20,
          y = 65,
          width = 200,
          height = 50,
          rotation = 0,
          gid = 117,
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
        ["script"] = "UIMenu"
      },
      objects = {
        {
          id = 20,
          name = "tutorial",
          type = "UIButton",
          shape = "text",
          x = 60,
          y = 75,
          width = 120,
          height = 15,
          rotation = 0,
          visible = true,
          text = "tutorial",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "startGame",
            ["nextmap"] = "tutorial.lua"
          }
        },
        {
          id = 15,
          name = "stage0",
          type = "UIButton",
          shape = "text",
          x = 60,
          y = 90,
          width = 120,
          height = 15,
          rotation = 0,
          visible = true,
          text = "demonrealm",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "startGame",
            ["nextmap"] = "demonrealm.lua"
          }
        },
        {
          id = 16,
          name = "stage1",
          type = "UIButton",
          shape = "text",
          x = 60,
          y = 105,
          width = 120,
          height = 15,
          rotation = 0,
          visible = true,
          text = "village",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "startGame",
            ["nextmap"] = "village.lua"
          }
        },
        {
          id = 27,
          name = "stage2",
          type = "UIButton",
          shape = "text",
          x = 60,
          y = 120,
          width = 120,
          height = 15,
          rotation = 0,
          visible = true,
          text = "chapel",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "startGame",
            ["nextmap"] = "chapel.lua"
          }
        },
        {
          id = 29,
          name = "stage3",
          type = "UIButton",
          shape = "text",
          x = 60,
          y = 135,
          width = 120,
          height = 15,
          rotation = 0,
          visible = true,
          text = "cave",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "startGame",
            ["nextmap"] = "cave.lua"
          }
        },
        {
          id = 30,
          name = "stage4",
          type = "UIButton",
          shape = "text",
          x = 60,
          y = 150,
          width = 120,
          height = 15,
          rotation = 0,
          visible = true,
          text = "highway",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "startGame",
            ["nextmap"] = "highway.lua"
          }
        },
        {
          id = 32,
          name = "stage5",
          type = "UIButton",
          shape = "text",
          x = 60,
          y = 165,
          width = 120,
          height = 15,
          rotation = 0,
          visible = true,
          text = "capital",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "startGame",
            ["nextmap"] = "capital.lua"
          }
        },
        {
          id = 33,
          name = "stage6",
          type = "UIButton",
          shape = "text",
          x = 60,
          y = 180,
          width = 120,
          height = 15,
          rotation = 0,
          visible = true,
          text = "castle",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "startGame",
            ["nextmap"] = "castle.lua"
          }
        },
        {
          id = 31,
          name = "caravan",
          type = "UIButton",
          shape = "text",
          x = 60,
          y = 220,
          width = 120,
          height = 15,
          rotation = 0,
          visible = true,
          text = "150s challenge",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "startGame",
            ["nextmap"] = "caravan.lua"
          }
        },
        {
          id = 34,
          name = "final",
          type = "UIButton",
          shape = "text",
          x = 60,
          y = 195,
          width = 120,
          height = 15,
          rotation = 0,
          visible = true,
          text = "final",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "startGame",
            ["nextmap"] = "final.lua"
          }
        },
        {
          id = 35,
          name = "caravan",
          type = "UIButton",
          shape = "text",
          x = 60,
          y = 235,
          width = 120,
          height = 15,
          rotation = 0,
          visible = true,
          text = "inebriator",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "startGame",
            ["nextmap"] = "drunktitle.lua"
          }
        },
        {
          id = 36,
          name = "options",
          type = "UIButton",
          shape = "text",
          x = 60,
          y = 260,
          width = 120,
          height = 15,
          rotation = 0,
          visible = true,
          text = "options",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "startGame",
            ["nextmap"] = "options.lua"
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
