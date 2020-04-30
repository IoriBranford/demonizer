return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 24,
  height = 32,
  tilewidth = 10,
  tileheight = 10,
  nextlayerid = 9,
  nextobjectid = 40,
  properties = {
    ["music"] = "mus/mainmenu.vgm",
    ["nextmap"] = "demonrealm.lua",
    ["prevmap"] = "title.lua",
    ["script"] = "MenuMap"
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
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 7,
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
      data = "H4sIAAAAAAAEA72RSW5CQRQDPzMhzAQI978otW3LuxK05MWz5OpFTdN33oxv5mRBlmRFTMd8eGuuDdmSH7IjpmM+vF+uPTmQIzkR0zEf3pnrQq7kRv6I6ZgP7871IE/yT17EdMyHZ1y27QDnMC7bNvnGZdsm37hs2+Qbl22b/ObIdMlvjkyX/ObIdMlvjkyX/ObIdMk3Lts2+cZl2ybfuGzb5BuXbZt847Jtk98cmS75zZHpkt8cmS75zZHpkt8cmS75xmXbJt+4bNvkG5dtm3zjsm2Tb1y2bfI/db8B39JDKgAMAAA="
    },
    {
      type = "objectgroup",
      id = 2,
      name = "info",
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
          y = 320,
          width = 240,
          height = 40,
          rotation = 0,
          visible = false,
          text = "© 2019 IoriBranford\n\nioribranford.itch.io",
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
          y = 296,
          width = 240,
          height = 40,
          rotation = 0,
          visible = true,
          text = "↑/↓ = SELECT\n\nENTER OR BUTTON = START",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "right",
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 3,
      name = "title",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 37,
          name = "",
          type = "",
          shape = "text",
          x = 10,
          y = 10,
          width = 220,
          height = 25,
          rotation = 0,
          visible = true,
          text = "STAGE SELECT",
          fontfamily = "Lady Radical",
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
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
        ["script"] = "UIMenu"
      },
      objects = {
        {
          id = 20,
          name = "tutorial",
          type = "UIButton",
          shape = "text",
          x = 20,
          y = 40,
          width = 120,
          height = 20,
          rotation = 0,
          visible = true,
          text = "0.Tutorial",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
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
          x = 20,
          y = 60,
          width = 120,
          height = 20,
          rotation = 0,
          visible = true,
          text = "1.Demon Realm",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
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
          x = 20,
          y = 80,
          width = 120,
          height = 20,
          rotation = 0,
          visible = true,
          text = "2.Village",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
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
          x = 20,
          y = 100,
          width = 120,
          height = 20,
          rotation = 0,
          visible = true,
          text = "3.Chapel",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
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
          x = 20,
          y = 120,
          width = 120,
          height = 20,
          rotation = 0,
          visible = true,
          text = "4.Underground",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
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
          x = 20,
          y = 140,
          width = 120,
          height = 20,
          rotation = 0,
          visible = true,
          text = "5.Highway",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
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
          x = 20,
          y = 160,
          width = 120,
          height = 20,
          rotation = 0,
          visible = true,
          text = "6.Capital City",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
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
          x = 20,
          y = 180,
          width = 120,
          height = 20,
          rotation = 0,
          visible = true,
          text = "7.Castle",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
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
          x = 20,
          y = 220,
          width = 120,
          height = 20,
          rotation = 0,
          visible = true,
          text = "150s Challenge",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
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
          x = 20,
          y = 200,
          width = 120,
          height = 20,
          rotation = 0,
          visible = true,
          text = "8.Final",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
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
          x = 20,
          y = 240,
          width = 120,
          height = 20,
          rotation = 0,
          visible = true,
          text = "Inebriator",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
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
          x = 20,
          y = 260,
          width = 120,
          height = 20,
          rotation = 0,
          visible = true,
          text = "Options",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          valign = "center",
          properties = {
            ["action"] = "startGame",
            ["nextmap"] = "options.lua"
          }
        }
      }
    },
    {
      type = "imagelayer",
      id = 6,
      name = "qr",
      visible = false,
      opacity = 1,
      offsetx = 190,
      offsety = 270,
      image = "img/qr-website.png",
      properties = {}
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
