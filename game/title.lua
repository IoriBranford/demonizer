return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 48,
  height = 64,
  tilewidth = 5,
  tileheight = 5,
  nextobjectid = 13,
  properties = {
    ["music"] = "mus/02 - Burning Heart.vgm",
    ["nextmap"] = "village.lua",
    ["script"] = "TitleMap"
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
      properties = {},
      terrains = {},
      tilecount = 100,
      tiles = {}
    },
    {
      name = "title",
      firstgid = 101,
      filename = "img/title.tsx",
      tilewidth = 128,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/title.png",
      imagewidth = 128,
      imageheight = 128,
      tileoffset = {
        x = -64,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 4,
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
      data = "H4sIAAAAAAAAC+3VVVZCAQBF0fdERQzEwsICu0WxFRMTEwtbnP8YPKNw3cW6H/vv/J8wCIIaRFCLOtQjigbE0IhQtGtCM1oQRysSaEM7OtAp3HUhiW70oBd96EcKAxgU7oYwjBGkkcEoxjCOCUwKd1OYxgxmMYd5LGARS8gKd8tYQQ6rWMM6NrCJLWwLdzvYRR572McBDnGEYxSEuxOc4gznuMAlirjCNW6Eu1vc4R4lPOART3jGC8rC3Sve8I4PfOIL3/hBBb/CnepX/V//1//1f/1f/9f/1e1Uv+r/+r/+r//r//q//q9up/pV/9f/9X/9X//X//V/dTvVr/q//u9/dKpf9X/9X//X//V//V//V7dT/ar/6//6v9X/3z8EBwieADAAAA=="
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
          id = 1,
          name = "copyright",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 300,
          width = 240,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {
            ["text"] = "© 2016 IoriBranford",
            ["textfont"] = "fnt/pressstart2p.fnt"
          }
        },
        {
          id = 2,
          name = "instructions",
          type = "",
          shape = "rectangle",
          x = 70,
          y = 190,
          width = 100,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["text"] = "Z key: FIRE\n\nX key: FOCUS\n\nC key: BOMB",
            ["textalign"] = "left",
            ["textfont"] = "fnt/pressstart2p.fnt"
          }
        },
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
          visible = true,
          properties = {
            ["text"] = "HI SCORE 0",
            ["textfont"] = "fnt/pressstart2p.fnt"
          }
        },
        {
          id = 7,
          name = "dem",
          type = "",
          shape = "rectangle",
          x = 90,
          y = 125,
          width = 128,
          height = 32,
          rotation = 0,
          gid = 101,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "oni",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 125,
          width = 128,
          height = 32,
          rotation = 0,
          gid = 102,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "zer",
          type = "",
          shape = "rectangle",
          x = 150,
          y = 125,
          width = 128,
          height = 32,
          rotation = 0,
          gid = 103,
          visible = true,
          properties = {}
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
          id = 12,
          name = "pressstart",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 260,
          width = 240,
          height = 10,
          rotation = 0,
          visible = true,
          properties = {
            ["text"] = "PRESS Z TO START",
            ["textfont"] = "fnt/pressstart2p.fnt"
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
