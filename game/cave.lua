return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 19,
  height = 200,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 194,
  properties = {
    ["cameraid"] = 1,
    ["delayinitobjects"] = false,
    ["music"] = "mus/20 - My Kingdom.vgm",
    ["overlaymap"] = "gameplay.lua",
    ["playerid"] = 2,
    ["script"] = "ShmupMap"
  },
  tilesets = {
    {
      name = "imp",
      firstgid = 1,
      filename = "img/imp.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/imp.png",
      imagewidth = 192,
      imageheight = 64,
      tileoffset = {
        x = -32,
        y = 32
      },
      properties = {},
      terrains = {},
      tilecount = 3,
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
                id = 4,
                name = "body",
                type = "",
                shape = "ellipse",
                x = -4,
                y = 60,
                width = 8,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              },
              {
                id = 7,
                name = "wingman1",
                type = "",
                shape = "ellipse",
                x = -24,
                y = 72,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 8,
                name = "wingman2",
                type = "",
                shape = "ellipse",
                x = 24,
                y = 72,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 10,
                name = "wingman3",
                type = "",
                shape = "ellipse",
                x = -16,
                y = 48,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 11,
                name = "wingman4",
                type = "",
                shape = "ellipse",
                x = 16,
                y = 48,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 12,
                name = "focuswingman1",
                type = "",
                shape = "ellipse",
                x = -32,
                y = 40,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 13,
                name = "focuswingman2",
                type = "",
                shape = "ellipse",
                x = 32,
                y = 40,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 14,
                name = "focuswingman3",
                type = "",
                shape = "ellipse",
                x = -16,
                y = 8,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 15,
                name = "focuswingman4",
                type = "",
                shape = "ellipse",
                x = 16,
                y = 8,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
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
            }
          }
        }
      }
    },
    {
      name = "map_cave",
      firstgid = 4,
      filename = "img/map_cave.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/map_cave.png",
      imagewidth = 256,
      imageheight = 400,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {
        ["row_lava"] = 19,
        ["row_lavapitwall"] = 21
      },
      terrains = {
        {
          name = "Ground",
          tile = 17,
          properties = {}
        },
        {
          name = "Dark Water",
          tile = 50,
          properties = {}
        },
        {
          name = "Pit",
          tile = 136,
          properties = {}
        },
        {
          name = "Blue Water",
          tile = 219,
          properties = {}
        },
        {
          name = "Wall",
          tile = 93,
          properties = {}
        },
        {
          name = "pitwallbase",
          tile = 185,
          properties = {}
        },
        {
          name = "Wall Top",
          tile = 54,
          properties = {}
        },
        {
          name = "waterentrance",
          tile = 97,
          properties = {}
        },
        {
          name = "darkwaterwallbase",
          tile = 157,
          properties = {}
        },
        {
          name = "bluewaterwallbase",
          tile = 253,
          properties = {}
        },
        {
          name = "lavawallbase",
          tile = 291,
          properties = {}
        },
        {
          name = "Above Lava",
          tile = 226,
          properties = {}
        }
      },
      tilecount = 400,
      tiles = {
        {
          id = 0,
          terrain = { 1, 1, 1, 0 }
        },
        {
          id = 1,
          terrain = { 1, 1, 0, 0 }
        },
        {
          id = 2,
          terrain = { 1, 1, 0, 1 }
        },
        {
          id = 6,
          terrain = { 6, 6, 6, -1 }
        },
        {
          id = 7,
          terrain = { 6, 6, -1, 6 }
        },
        {
          id = 16,
          terrain = { 1, 0, 1, 0 }
        },
        {
          id = 17,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 18,
          terrain = { 0, 1, 0, 1 }
        },
        {
          id = 26,
          terrain = { 6, -1, 6, -1 }
        },
        {
          id = 27,
          terrain = { -1, 6, -1, 6 }
        },
        {
          id = 28,
          terrain = { 0, 0, 0, 4 }
        },
        {
          id = 29,
          terrain = { 0, 0, 4, 4 }
        },
        {
          id = 30,
          terrain = { 0, 0, 4, 4 }
        },
        {
          id = 31,
          terrain = { 0, 0, 4, 0 }
        },
        {
          id = 32,
          terrain = { 1, 0, 1, 1 }
        },
        {
          id = 33,
          terrain = { 0, 0, 1, 1 }
        },
        {
          id = 34,
          terrain = { 0, 1, 1, 1 }
        },
        {
          id = 42,
          terrain = { 6, -1, 6, -1 }
        },
        {
          id = 43,
          terrain = { -1, 6, -1, 6 }
        },
        {
          id = 44,
          terrain = { 0, 4, 0, 0 }
        },
        {
          id = 45,
          terrain = { 4, 4, 0, 0 }
        },
        {
          id = 46,
          terrain = { 4, 4, 0, 0 }
        },
        {
          id = 47,
          terrain = { 4, 0, 0, 0 }
        },
        {
          id = 48,
          terrain = { 1, 0, 0, 0 }
        },
        {
          id = 49,
          terrain = { 0, 1, 0, 0 }
        },
        {
          id = 50,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 54,
          terrain = { 6, 6, 6, 6 }
        },
        {
          id = 59,
          terrain = { 6, -1, 6, 6 }
        },
        {
          id = 60,
          terrain = { -1, -1, -1, 6 }
        },
        {
          id = 61,
          terrain = { -1, -1, 6, 6 }
        },
        {
          id = 62,
          terrain = { -1, -1, 6, 6 }
        },
        {
          id = 63,
          terrain = { -1, -1, 6, -1 }
        },
        {
          id = 64,
          terrain = { 0, 0, 1, 0 }
        },
        {
          id = 65,
          terrain = { 0, 0, 0, 1 }
        },
        {
          id = 75,
          terrain = { -1, 6, 6, 6 }
        },
        {
          id = 76,
          terrain = { -1, 6, -1, -1 }
        },
        {
          id = 77,
          terrain = { 6, 6, -1, -1 }
        },
        {
          id = 78,
          terrain = { 6, 6, -1, -1 }
        },
        {
          id = 79,
          terrain = { 6, -1, -1, -1 }
        },
        {
          id = 80,
          terrain = { 1, 1, 0, 7 }
        },
        {
          id = 81,
          terrain = { 1, 1, 7, 7 }
        },
        {
          id = 82,
          terrain = { 1, 1, 7, 0 }
        },
        {
          id = 86,
          terrain = { 2, 2, 2, 0 }
        },
        {
          id = 87,
          terrain = { 2, 2, 0, 0 }
        },
        {
          id = 88,
          terrain = { 2, 2, 0, 2 }
        },
        {
          id = 92,
          terrain = { -1, -1, -1, 4 }
        },
        {
          id = 93,
          terrain = { -1, -1, 4, 4 }
        },
        {
          id = 94,
          terrain = { -1, -1, 4, 4 }
        },
        {
          id = 95,
          terrain = { -1, -1, 4, -1 }
        },
        {
          id = 96,
          terrain = { 0, 7, 1, 1 }
        },
        {
          id = 97,
          terrain = { 7, 7, 1, 1 }
        },
        {
          id = 98,
          terrain = { 7, 0, 1, 1 }
        },
        {
          id = 102,
          terrain = { 2, 0, 2, 0 }
        },
        {
          id = 103,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 104,
          terrain = { 0, 2, 0, 2 }
        },
        {
          id = 108,
          terrain = { -1, 4, -1, -1 }
        },
        {
          id = 109,
          terrain = { 4, 4, -1, -1 }
        },
        {
          id = 110,
          terrain = { 4, 4, -1, -1 }
        },
        {
          id = 111,
          terrain = { 4, -1, -1, -1 }
        },
        {
          id = 112,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 113,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 115,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 118,
          terrain = { 2, 0, 2, 2 }
        },
        {
          id = 119,
          terrain = { 0, 0, 2, 2 }
        },
        {
          id = 120,
          terrain = { 0, 2, 2, 2 }
        },
        {
          id = 128,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 129,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 131,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 134,
          terrain = { 2, 0, 0, 0 }
        },
        {
          id = 135,
          terrain = { 0, 2, 0, 0 }
        },
        {
          id = 136,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 140,
          terrain = { 1, 1, 1, 4 }
        },
        {
          id = 141,
          terrain = { 1, 1, 4, 4 }
        },
        {
          id = 142,
          terrain = { 1, 1, 4, 4 }
        },
        {
          id = 143,
          terrain = { 1, 1, 4, 1 }
        },
        {
          id = 144,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 145,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 147,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 148,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 150,
          terrain = { 0, 0, 2, 0 }
        },
        {
          id = 151,
          terrain = { 0, 0, 0, 2 }
        },
        {
          id = 156,
          terrain = { 1, 4, 1, 8 }
        },
        {
          id = 157,
          terrain = { 4, 4, 8, 8 }
        },
        {
          id = 158,
          terrain = { 4, 4, 8, 8 }
        },
        {
          id = 159,
          terrain = { 4, 1, 8, 1 }
        },
        {
          id = 160,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 161,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 168,
          terrain = { 2, 2, 2, 4 }
        },
        {
          id = 169,
          terrain = { 2, 2, 4, 4 }
        },
        {
          id = 170,
          terrain = { 2, 2, 4, 4 }
        },
        {
          id = 171,
          terrain = { 2, 2, 4, 2 }
        },
        {
          id = 172,
          terrain = { 1, 8, 1, 1 }
        },
        {
          id = 173,
          terrain = { 8, 8, 1, 1 }
        },
        {
          id = 174,
          terrain = { 8, 8, 1, 1 }
        },
        {
          id = 175,
          terrain = { 8, 1, 1, 1 }
        },
        {
          id = 176,
          terrain = { 11, 11, 11, 0 }
        },
        {
          id = 177,
          terrain = { 11, 11, 0, 0 }
        },
        {
          id = 178,
          terrain = { 11, 11, 0, 11 }
        },
        {
          id = 184,
          terrain = { 2, 4, 2, 5 }
        },
        {
          id = 185,
          terrain = { 4, 4, 5, 5 }
        },
        {
          id = 186,
          terrain = { 4, 4, 5, 5 }
        },
        {
          id = 187,
          terrain = { 4, 2, 5, 2 }
        },
        {
          id = 188,
          terrain = { 0, 0, 1, 4 }
        },
        {
          id = 189,
          terrain = { 1, 1, 0, 4 }
        },
        {
          id = 190,
          terrain = { 1, 1, 4, 0 }
        },
        {
          id = 191,
          terrain = { 0, 0, 4, 1 }
        },
        {
          id = 192,
          terrain = { 11, 0, 11, 0 }
        },
        {
          id = 193,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 194,
          terrain = { 0, 11, 0, 11 }
        },
        {
          id = 200,
          terrain = { 2, 5, 2, 2 }
        },
        {
          id = 201,
          terrain = { 5, 5, 2, 2 }
        },
        {
          id = 202,
          terrain = { 5, 5, 2, 2 }
        },
        {
          id = 203,
          terrain = { 5, 2, 2, 2 }
        },
        {
          id = 204,
          terrain = { 0, 4, 1, 8 }
        },
        {
          id = 205,
          terrain = { 1, 4, 0, 0 }
        },
        {
          id = 206,
          terrain = { 4, 1, 0, 0 }
        },
        {
          id = 207,
          terrain = { 4, 0, 8, 1 }
        },
        {
          id = 208,
          terrain = { 11, 0, 11, 11 }
        },
        {
          id = 209,
          terrain = { 0, 0, 11, 11 }
        },
        {
          id = 210,
          terrain = { 0, 11, 11, 11 }
        },
        {
          id = 214,
          terrain = { 3, 3, 3, 0 }
        },
        {
          id = 215,
          terrain = { 3, 3, 0, 0 }
        },
        {
          id = 216,
          terrain = { 3, 3, 0, 3 }
        },
        {
          id = 217,
          terrain = { 3, 0, 0, 0 }
        },
        {
          id = 218,
          terrain = { 0, 3, 0, 0 }
        },
        {
          id = 219,
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 224,
          terrain = { 11, 0, 0, 0 }
        },
        {
          id = 225,
          terrain = { 0, 11, 0, 0 }
        },
        {
          id = 226,
          terrain = { 11, 11, 11, 11 }
        },
        {
          id = 230,
          terrain = { 3, 0, 3, 0 }
        },
        {
          id = 231,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 232,
          terrain = { 0, 3, 0, 3 }
        },
        {
          id = 233,
          terrain = { 0, 0, 3, 0 }
        },
        {
          id = 234,
          terrain = { 0, 0, 0, 3 }
        },
        {
          id = 236,
          terrain = { 3, 3, 3, 4 }
        },
        {
          id = 237,
          terrain = { 3, 3, 4, 4 }
        },
        {
          id = 238,
          terrain = { 3, 3, 4, 4 }
        },
        {
          id = 239,
          terrain = { 3, 3, 4, 3 }
        },
        {
          id = 240,
          terrain = { 0, 0, 11, 0 }
        },
        {
          id = 241,
          terrain = { 0, 0, 0, 11 }
        },
        {
          id = 246,
          terrain = { 3, 0, 3, 3 }
        },
        {
          id = 247,
          terrain = { 0, 0, 3, 3 }
        },
        {
          id = 248,
          terrain = { 0, 3, 3, 3 }
        },
        {
          id = 249,
          terrain = { 3, 3, 0, 7 }
        },
        {
          id = 250,
          terrain = { 3, 3, 7, 7 }
        },
        {
          id = 251,
          terrain = { 3, 3, 7, 0 }
        },
        {
          id = 252,
          terrain = { 3, 4, 3, 9 }
        },
        {
          id = 253,
          terrain = { 4, 4, 9, 9 }
        },
        {
          id = 254,
          terrain = { 4, 4, 9, 9 }
        },
        {
          id = 255,
          terrain = { 4, 3, 9, 3 }
        },
        {
          id = 258,
          terrain = { 11, 11, 11, 4 }
        },
        {
          id = 259,
          terrain = { 11, 11, 4, 4 }
        },
        {
          id = 260,
          terrain = { 11, 11, 4, 4 }
        },
        {
          id = 261,
          terrain = { 11, 11, 4, 11 }
        },
        {
          id = 265,
          terrain = { 0, 7, 3, 3 }
        },
        {
          id = 266,
          terrain = { 7, 7, 3, 3 }
        },
        {
          id = 267,
          terrain = { 7, 0, 3, 3 }
        },
        {
          id = 268,
          terrain = { 3, 9, 3, 3 }
        },
        {
          id = 269,
          terrain = { 9, 9, 3, 3 }
        },
        {
          id = 270,
          terrain = { 9, 9, 3, 3 }
        },
        {
          id = 271,
          terrain = { 9, 3, 3, 3 }
        },
        {
          id = 274,
          terrain = { 11, 4, 11, 10 }
        },
        {
          id = 275,
          terrain = { 4, 4, 10, 10 }
        },
        {
          id = 276,
          terrain = { 4, 4, 10, 10 }
        },
        {
          id = 277,
          terrain = { 4, 11, 10, 11 }
        },
        {
          id = 284,
          terrain = { 0, 0, 3, 4 }
        },
        {
          id = 285,
          terrain = { 3, 3, 0, 4 }
        },
        {
          id = 286,
          terrain = { 3, 3, 4, 0 }
        },
        {
          id = 287,
          terrain = { 0, 0, 4, 3 }
        },
        {
          id = 290,
          terrain = { 11, 10, 11, 11 }
        },
        {
          id = 291,
          terrain = { 10, 10, 11, 11 }
        },
        {
          id = 292,
          terrain = { 10, 10, 11, 11 }
        },
        {
          id = 293,
          terrain = { 10, 11, 11, 11 }
        },
        {
          id = 300,
          terrain = { 0, 4, 3, 9 }
        },
        {
          id = 301,
          terrain = { 3, 4, 0, 0 }
        },
        {
          id = 302,
          terrain = { 4, 3, 0, 0 }
        },
        {
          id = 303,
          terrain = { 4, 0, 9, 3 }
        }
      }
    },
    {
      name = "cage",
      firstgid = 404,
      filename = "img/cage.tsx",
      tilewidth = 32,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/cage.png",
      imagewidth = 32,
      imageheight = 64,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 1,
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
                x = 0,
                y = 24,
                width = 32,
                height = 32,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        }
      }
    },
    {
      name = "mermaid",
      firstgid = 405,
      filename = "img/friend/mermaid.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/friend/mermaid.png",
      imagewidth = 72,
      imageheight = 128,
      tileoffset = {
        x = -12,
        y = 16
      },
      properties = {
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_down"] = 2,
        ["row_left"] = 3,
        ["row_right"] = 1,
        ["row_up"] = 0
      },
      terrains = {},
      tilecount = 12,
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
                x = -10,
                y = 24,
                width = 20,
                height = 20,
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
              tileid = 1,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "darkboat",
      firstgid = 417,
      filename = "img/darkboat.tsx",
      tilewidth = 128,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/darkboat.png",
      imagewidth = 128,
      imageheight = 64,
      tileoffset = {
        x = -64,
        y = 64
      },
      properties = {},
      terrains = {},
      tilecount = 1,
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
                id = 6,
                name = "",
                type = "",
                shape = "rectangle",
                x = -64,
                y = 64,
                width = 112,
                height = 48,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              },
              {
                id = 8,
                name = "",
                type = "",
                shape = "ellipse",
                x = 16,
                y = 64,
                width = 48,
                height = 48,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        }
      }
    },
    {
      name = "infmen",
      firstgid = 418,
      filename = "img/infmen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/infmen.png",
      imagewidth = 432,
      imageheight = 160,
      tileoffset = {
        x = -12,
        y = 16
      },
      properties = {
        ["column_archer"] = 12,
        ["column_hero"] = 15,
        ["column_mage"] = 9,
        ["column_pikeman"] = 0,
        ["column_priest"] = 6,
        ["column_swordsman"] = 3,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_down"] = 2,
        ["row_ko"] = 4,
        ["row_left"] = 3,
        ["row_right"] = 1,
        ["row_up"] = 0
      },
      terrains = {},
      tilecount = 90,
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
                x = -10,
                y = 24,
                width = 20,
                height = 20,
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
              tileid = 1,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "infwomen",
      firstgid = 508,
      filename = "img/infwomen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/infwomen.png",
      imagewidth = 432,
      imageheight = 160,
      tileoffset = {
        x = -12,
        y = 16
      },
      properties = {
        ["column_archer"] = 12,
        ["column_mage"] = 9,
        ["column_pikeman"] = 0,
        ["column_priest"] = 6,
        ["column_princess"] = 15,
        ["column_swordsman"] = 3,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_down"] = 2,
        ["row_ko"] = 4,
        ["row_left"] = 3,
        ["row_right"] = 1,
        ["row_up"] = 0
      },
      terrains = {},
      tilecount = 90,
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
                x = -10,
                y = 24,
                width = 20,
                height = 20,
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
              tileid = 1,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "electricity",
      firstgid = 598,
      filename = "img/electricity.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/electricity.png",
      imagewidth = 64,
      imageheight = 128,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {
        ["commonanimation"] = 0
      },
      terrains = {},
      tilecount = 32,
      tiles = {
        {
          id = 0,
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
    },
    {
      name = "lavapit",
      firstgid = 630,
      filename = "img/lavapit.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/lavapit.png",
      imagewidth = 128,
      imageheight = 80,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {
        ["row_lava"] = 0,
        ["row_pitwall"] = 2
      },
      terrains = {},
      tilecount = 40,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 67
            },
            {
              tileid = 2,
              duration = 67
            },
            {
              tileid = 4,
              duration = 67
            }
          }
        },
        {
          id = 1,
          animation = {
            {
              tileid = 1,
              duration = 67
            },
            {
              tileid = 3,
              duration = 67
            },
            {
              tileid = 5,
              duration = 67
            }
          }
        },
        {
          id = 8,
          animation = {
            {
              tileid = 8,
              duration = 67
            },
            {
              tileid = 10,
              duration = 67
            },
            {
              tileid = 12,
              duration = 67
            }
          }
        },
        {
          id = 9,
          animation = {
            {
              tileid = 9,
              duration = 67
            },
            {
              tileid = 11,
              duration = 67
            },
            {
              tileid = 13,
              duration = 67
            }
          }
        },
        {
          id = 16,
          animation = {
            {
              tileid = 16,
              duration = 33
            },
            {
              tileid = 18,
              duration = 33
            },
            {
              tileid = 20,
              duration = 33
            },
            {
              tileid = 22,
              duration = 33
            }
          }
        },
        {
          id = 17,
          animation = {
            {
              tileid = 17,
              duration = 33
            },
            {
              tileid = 19,
              duration = 33
            },
            {
              tileid = 21,
              duration = 33
            },
            {
              tileid = 23,
              duration = 33
            }
          }
        },
        {
          id = 24,
          animation = {
            {
              tileid = 24,
              duration = 33
            },
            {
              tileid = 26,
              duration = 33
            },
            {
              tileid = 28,
              duration = 33
            },
            {
              tileid = 30,
              duration = 33
            }
          }
        },
        {
          id = 25,
          animation = {
            {
              tileid = 25,
              duration = 33
            },
            {
              tileid = 27,
              duration = 33
            },
            {
              tileid = 29,
              duration = 33
            },
            {
              tileid = 31,
              duration = 33
            }
          }
        },
        {
          id = 32,
          animation = {
            {
              tileid = 32,
              duration = 33
            },
            {
              tileid = 34,
              duration = 33
            },
            {
              tileid = 36,
              duration = 33
            },
            {
              tileid = 38,
              duration = 33
            }
          }
        },
        {
          id = 33,
          animation = {
            {
              tileid = 33,
              duration = 33
            },
            {
              tileid = 35,
              duration = 33
            },
            {
              tileid = 37,
              duration = 33
            },
            {
              tileid = 39,
              duration = 33
            }
          }
        }
      }
    },
    {
      name = "cave_objects",
      firstgid = 670,
      filename = "img/cave_objects.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/cave_objects.png",
      imagewidth = 112,
      imageheight = 112,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 49,
      tiles = {}
    },
    {
      name = "flames",
      firstgid = 719,
      filename = "img/flames.tsx",
      tilewidth = 16,
      tileheight = 24,
      spacing = 0,
      margin = 0,
      image = "img/flames.png",
      imagewidth = 64,
      imageheight = 72,
      tileoffset = {
        x = -8,
        y = 12
      },
      properties = {},
      terrains = {},
      tilecount = 12,
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
                x = -6,
                y = 18,
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
              duration = 100
            },
            {
              tileid = 1,
              duration = 100
            },
            {
              tileid = 2,
              duration = 100
            },
            {
              tileid = 3,
              duration = 100
            },
            {
              tileid = 4,
              duration = 100
            },
            {
              tileid = 5,
              duration = 100
            },
            {
              tileid = 6,
              duration = 100
            },
            {
              tileid = 7,
              duration = 100
            },
            {
              tileid = 8,
              duration = 100
            },
            {
              tileid = 9,
              duration = 100
            },
            {
              tileid = 10,
              duration = 100
            },
            {
              tileid = 11,
              duration = 100
            }
          }
        }
      }
    },
    {
      name = "ballista",
      firstgid = 731,
      filename = "img/ballista.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/ballista.png",
      imagewidth = 512,
      imageheight = 192,
      tileoffset = {
        x = -32,
        y = 32
      },
      properties = {
        ["column_angle0"] = 0,
        ["column_angle135"] = 3,
        ["column_angle180"] = 4,
        ["column_angle225"] = 5,
        ["column_angle270"] = 6,
        ["column_angle315"] = 7,
        ["column_angle45"] = 1,
        ["column_angle90"] = 2,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_empty"] = 2,
        ["row_windup"] = 0
      },
      terrains = {},
      tilecount = 24,
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
                x = -24,
                y = 40,
                width = 48,
                height = 48,
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
              tileid = 16,
              duration = 967
            },
            {
              tileid = 0,
              duration = 250
            },
            {
              tileid = 8,
              duration = 500
            },
            {
              tileid = 0,
              duration = 33
            }
          }
        }
      }
    },
    {
      name = "civwomen",
      firstgid = 755,
      filename = "img/civwomen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/civwomen.png",
      imagewidth = 576,
      imageheight = 160,
      tileoffset = {
        x = -12,
        y = 16
      },
      properties = {
        ["column_civ1"] = 0,
        ["column_civ2"] = 3,
        ["column_civ3"] = 6,
        ["column_civ4"] = 9,
        ["column_civ5"] = 12,
        ["column_civ6"] = 15,
        ["column_civ7"] = 18,
        ["column_civ8"] = 21,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_down"] = 2,
        ["row_ko"] = 4,
        ["row_left"] = 3,
        ["row_right"] = 1,
        ["row_up"] = 0
      },
      terrains = {},
      tilecount = 120,
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
                x = -10,
                y = 24,
                width = 20,
                height = 20,
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
              tileid = 1,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "cauldron",
      firstgid = 875,
      filename = "img/cauldron.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/cauldron.png",
      imagewidth = 32,
      imageheight = 192,
      tileoffset = {
        x = -16,
        y = 16
      },
      properties = {
        ["commoncollision"] = 0,
        ["rowname0"] = "lit",
        ["rowname4"] = "unlit",
        ["rowname5"] = "destroyed"
      },
      terrains = {},
      tilecount = 6,
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
                x = -12,
                y = 20,
                width = 24,
                height = 24,
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
            },
            {
              tileid = 2,
              duration = 67
            },
            {
              tileid = 3,
              duration = 67
            }
          }
        },
        {
          id = 5,
          properties = {
            ["name"] = "destroyed"
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "lava",
      x = 0,
      y = 0,
      width = 19,
      height = 200,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = -240,
      properties = {
        ["script"] = "LavaLayer"
      },
      encoding = "base64",
      compression = "zlib",
      data = "eJztlcuugzAMBSs+2tnBr7eLi3Q6PWF5VzNSBAqOcfyc4/U6/9b1WfNZK/YGzyvWxDqxv6Ar92+5FWfvlfInZFfsP9nM91XOpK23TtqXNrR92k259EF+zzODc2fs8d7pr9T9JL+gk/pTbkHu1jPl/Dq+/ZvfmDsZ0/Qd/zfH950oRxszPoOVd6MtE2daXjDvWj4y/3Iva6bl5droSV3tH5mLqYt50HxHmbz3zp+pK2sjczZj0mqeT/aDdqeMY+ZXizfjQj+mHO3LWNCO5sus08F55i3vR3/vYs48Tr8wn7nfevXOv5nfrN3mV9rDHJij+5I9mD2FPZ33aj5nrC98bz2ZPm7faVP2QdZQ64esEc6gwb+f6rvNCp7b9SPmCHW1/1GWfmJNcNbw7hnX5n/GKv1LOznP2lxqc4/9pOUq84/1SnvZj3Z+ynfmI2dR1l3rH/RLmxntzm2OtVm/q4tdX+SMp920ibnGGmYet3y5jl8fPfUV9pFmZ+vNrc+z5tsMpa70YZvReV/2ExERERERERERERERERERERERERERERER+V/eevxpYA=="
    },
    {
      type = "tilelayer",
      name = "ground",
      x = 0,
      y = 0,
      width = 19,
      height = 200,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztmk+y00YQxnsBnOCZEwAnIDkBXILkBM9Z2vWqIEurXBVYymUXbLyQbpDkBr4EBNiQLDBwAJIFmvf65/me0IzkP5tUPVd1ybZG3/T0zHR/3Rqzm8/N5+Zz87n53Hz2+/zRyJ+N/HOE/O44m0b+PgIz4HxoZNLI3PEUcx/54BijRmqRcSOrRpZ+f+Jtwu+ykYtGZo0s/He4br1N4Rgrb1O5fgFj6teZfKc9esz9fuHfp/57LvdW3nbhutR+nbs+jKPwsYz8uWeNvPT/K9eZ/qcu6Fv79cLbrfz+1vt40chTwVz4s6Vf6RvdCn+28v9f+bPPHOuFYL4UO43lWbBHfgXj1xZGG0/HvRFdx26zVz0YXZjgLUT2xWnjMU+H4iDnotsvR+CAxXo6BdbUbX4KrKXb6xRYYY1OToh1KnuF8W1PqFd5JNaTRn5zWwWs5438nGn/k0tXm3PHCXpN/dql2xPHmPict/tEp7nbatNhMzBCu8J1x78/Fx3P/d7c24U2Y+mTvtrxoLQYE2gf2lWOtbToPyu5j89deLv7Lo/8P/xoZdGvql/eeL+suZH/97iRH13uOd7Mou8s7HoMIobh98EIujwQLPBUT/Y0OjJOYtTjDowuQU902TjWKKNLTs5El8JtNFSXLqyxz/PmCBzF2rjd7h6IAxYcZXUCLOJjeQKsrdj/WCzWeHEE1q1GHtrVemJdHYIFztQi/wv6/dDInQNwgs3hTvDPzZ54Z4KBL6kscst6D7wzi5yYfYyfC//BvYfgsdZXFvdO0G9pMeZe+H99c8E62LhO2Gli0W+FPobsTXwN6xPfOLHrXHPo+sAnPnIMdEGffX2XYqoc6nNu5P8jt1269tYtuZ9qo0Je2bVXw34Ka5VcMLWf6ROu0hVnAhZ5ENyk3YZ2ynmW0u8tv7I3yQEngqXjD76T/JCcm34DxgPps3Ac9Q30sxQbTCz6ty6b6J58IDrTT+1YmrNTp+jzJ/cEk7hAnCInX/g4F5n50nl7aNFnk9vDazWnv+jRDW5w4c9qTQP/Tdzpi10BC/6NLsSDrdzTue3SjfFRE8BWymWJ0cTCVJyBr1DrgLfPBWdisZ6ytTR3I36uLK4l1iZYxFb2U4q7nYm9yZPIb+DIE8EmjqWwyClGFuM5cUrjPes1FUtZ64U8s7UYk7feF2t43DOHtAOTGPr56r91EGyf2kdnYks4GespYH11vOb3emX5fAA+NXOdyN/mPpb3jXy86me9cN1S++fMInctr8ZyrYb3upG3V/1dYuV4Kf4z4NC+9me+RJxLrDozPuw+jm0vZes4/8k9apA5ndhbASPoRo3zk9uK/ZfTSdeo1w7XrHt0em9x3ebyHcY3ie3X9I9Ory36xT6diAubaPvLNfGukTdu9yHcE1vhS2q3FXFu5jga83JYjI/9yr7W9TWED4O1EBzWKn5maM6LL8V/O+a6lDm4a9djZw6LPIGYvLTdOtvppPE+JcR7eL7a+pB8Hjx8zPhAHB0rfrALZ5/css1T2vdDfB7CH4cIe37f/DeFVZ0Irxb/WO+JB8+8I1il4+2rH3PBPBBLSsHM+decjvD7kdhuiO/oWnufLcY33idVB8xDwPoqePq+LPiWIXjYP/jw94JX23Wu0VcP0jiwdCxiN3ZbWqxxpLDAmVnkzsSQt/6b92+p/as4cOapX9EJ/0bNN6eT+my4+Fh0mlus5ZHbdGEpByN2wCPfWoy18Gtq411Y+LDSIv8N4/gi9r6QOVwlbKX2Bk95APVAYhVzktKJvASbK5/Q95Rwxz5eOLH4HvWT2/yN3NM6e27+4Lrw+ndi87HoNspg6fzBn2cWeT7/k4OkbK46UbMbu22ZR3IMYl7f+iQHID5i/9D/fYu+kBp/joPBkTaCq8/A0fpqiWBpLtfuG137/LLmHGVijshvh3DDpcX8tav90obV09u1Q8WBdw3hq30C70rxjENlCDfse/62xb3RZ68cBvGjHcf3EfI28slDuJfqQ/5BPWEfPodNqPv4+8s1vgsd+zDVRxN7yLWoa3APHpCK/dRMGA81IOIkcZechn3bNa/kH8Qw4tVK8IkdnPPJxTPigtdI1pw7qBwLvzq16Cu7sDT/qIT7YS+418a/4yNzPtHz7jVclxyLZ3M5QHseS+HKIT56rWTQ3tG1uRCMf+0qzn604e+gzux6XUJjNTypGjAusJRnfxIcxRq6h9krKayF9e9D3TeljC9wiL8Ey3Pldc7+zkfWXsPe6RSe1+8eu7NcHltVLjz/VeyvWPidLjzWOmPUmkvXGKn9pcZKbAx6vXOMlF6sv5yvqcVuOo9Si9vVHvE7uT2Nn0M3cNiP1Ar7clEdZ2WRD6qfIBciFx0n5gHdmNNwhRtS19bcqvR5yPlCbIyvKKK+OxuCF/5LvVdAN833dYztfcVZyNT6AK/LF7axiB25vaD6iY7fYRUWz/707VM4NJy6veY0Xuaw0E35veIQa3M8v2Pf7/JI6pmF4Cx7dGr7bnIy6hPkEsSmPp2Uo1ArnVp8b+i15sE6USclVrNuGfeQczjopDpgI+YUHtCHhc1HFuuQ8BA4APdz6xSdeGdF3aZ9tpdxzqyb14EDV6Lmy9yRp00s5qNj+54rwgE20i9SWDy/Rm1iZJE3gUmOWVh8d8YZO/J0fm8s8mByQt6r8fxc+q281qZzpu+VwGGOwVAb0obvPFe3nqd+U7eeK+U55mzWwlnI87RXW/LsovV7atf1qlr9l+K7qQsV0lclvpPn8TPuv3b3an8/g22pUZRuY2ztNZXLPqnnaO4Srs9EXjo25yZl/nfxpvS4HHR+1Xpez45yttrHcqmD5wFrtcXQc+BPRb/K9eE7ttnn/DZntcFQjpA6D9unm/JdOM4hZ8rPW3N3zBlpzh+jE+M9FKsUjMWRWKyJSvByWKnzzucWOSUxuM5gPcnYEr0q1428Mte+D0slN8YhWMrZygQWZ6VTZ8SZR7DI97uwOJcd+tbz2m3bK5auCc5/cwbc/ejOB6iObb3aa4K+WHfBt3wDBlD8/A=="
    },
    {
      type = "objectgroup",
      name = "friends",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 60,
          name = "path1",
          type = "",
          shape = "polyline",
          x = 160,
          y = 2736,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 16 },
            { x = 0, y = -80 },
            { x = -64, y = -240 },
            { x = -48, y = -384 },
            { x = -48, y = -512 },
            { x = -32, y = -704 },
            { x = 16, y = -880 },
            { x = -64, y = -1040 },
            { x = -64, y = -1120 },
            { x = 0, y = -1296 },
            { x = 0, y = -1440 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "tilelayer",
      name = "lavapitwall",
      x = 0,
      y = 0,
      width = 19,
      height = 200,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = -240,
      properties = {
        ["script"] = "LavaPitWall"
      },
      encoding = "base64",
      compression = "zlib",
      data = "eJztzrEJACAQBMHH4jXTTNv1Mxv4RJiB49LtLWLkesHP3Cr6ih5dunTp0vV+507RAwAAAAAAAAAAAAAAAPzsAoMG29Y="
    },
    {
      type = "tilelayer",
      name = "electricity",
      x = 0,
      y = 0,
      width = 19,
      height = 200,
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["script"] = "ElectricLayer"
      },
      encoding = "base64",
      compression = "zlib",
      data = "eJztWmuL2zAQPPQzTTElmFKMCUe4/8+dqMVtJzOr1TofStGAiPPweHalfVjO29vExMTExMTExMTExMTEv4T38mf8KNd4lq/zb19jO0eGr3Lcged2jvs5IrxWC75uwK34ltMveA5yWf7fhAv9Yn/PNLbjX8XnidimdB0d/zA97T3qOszvPH0RG3fH3735ZDay8xWf/ZzZaL9XtjKNPzs2ImeUp2J1/KX4GY/l8/xkv0MfKT6mD/lY3PT4VOxEuSp2waXWusLi+DuSayxwral5rUPlw5a7vDhW8fl+8r4DR8Q+lUfwPO97dQ0vPnrx5OnzfBHNjyNaPe3s856v2TWVRuX3xzmUvvb9R2BeG1aiAeOJ/eZmNLG48GJzJ1wsH2CeqwPjyMZhs13lzh2uabVhL9LLAWt59mmLR5yfSH46yvOcsTXn1QXU5q3NCE8Dm6/GFc29TBvGwShXxUF4Ru1rQDsz9lku9PlIzbM4yvO6yOpCf2W5WC3NcmFv2kZ2Dq+u0Yql8NjJcLF1dZULtY1yYb674ncWgyqnRzVh3hu1j8VfJvexe9QtYd9COOwY4WL3TJl1tRAdqC+iS/XV+FmEq2dbdD14vT7j8/YXvB6N5UDWpyzkN6oP9GxFHnbc09vuGXDO62utz9g/Kp3eZ9hjsmsx/yn9Fr3+RulhXJZPrRM8/nC40F5lczv/TvyF2Muzv7x1rXRVqD0S1BaJM+zlevPYi9mVaGF+83p89JuXk0bqAOYlyztaT9Qazdbdq7USuW5J2yxXJvcjVI95pbfP1tyepmwvx3JCdv5YXh31ldq/flXf21sL7dmC0oT5RXHZebI4iG2eLuyRFBfOI/MXzhHap2oOe8aANthreDV2K9/PaPC5ia1peP+jcjw7H6/FtKj6rHKsqvGqHqpaVEfrb2psqByq+Nvro3zH1lb+3vdRPousX9zf844jNbH1cz3/jeT7Xo+YyTtY+6/UjQrW57yC60rtqGD37/V45DmseuYZqUXtXIx/lXu8eVQ9A67XR4enwuv9Rmss24PF+YtyoY9ZHEbXwiPANdqTqnyQ2ZdVayFT+71nnpn/HKg8nYnDtTz7/Wp+YDk6Y6e6p8pqY/fKWW0VbP/4Vblwu6CNPY/N2sqe7VzRp7RlYgtrEeqMavP6u9G434kejPvoPqLqCaM1yWpSdWnU9+y/M9l+x/vfwGgsrYTLvmZ6MKxRGR7GGd2zmZiYmJiY+B/wCb30PAc="
    },
    {
      type = "tilelayer",
      name = "overground",
      x = 0,
      y = 0,
      width = 19,
      height = 200,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt2DdLBUEUQOF9/8mAWcGAWcGAWcGAWXtjb/zHnmJvs7CzAS3U88FhimWmG967k2WSJEmSJEmSJOkndHWyrJt6qDex9tNAJ33WON8naJKmEusMzVactcL3VVqj9cS6SVsVZx3y/YiO6SSxntF5xVmSJH2XQX5zhmiYRmiUxlr+Ds2xb54WaJGWaLnlWdvs26Fd2qN9Omh51gX7LumKrumGbluedce+e3qgR3qi55ZnvbDvld7onT7o0/8AkvSvxWzcl8/AxbXOTBxiNp7OZ+DiWmcmDjEbb+QzcHGtMxOHmI1P8xm4uDoT668rewNrcr9D2RtYk/sdyt7AmtzvUPYG5v2WJEmSJOl3+wKkMDQn"
    },
    {
      type = "objectgroup",
      name = "boss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["activatemusic"] = "mus/12 - Typhoone Vol 2.vgm"
      },
      objects = {
        {
          id = 117,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 0,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 304, y = 0 }
          },
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 118,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 48,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 463,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["onDiscard"] = "playerVictory",
            ["script"] = "NPCFireMage"
          }
        },
        {
          id = 121,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 304,
          width = 16,
          height = 24,
          rotation = 0,
          gid = 719,
          visible = true,
          properties = {
            ["operatorid"] = 118,
            ["script"] = "VehicleLavaSpray"
          }
        },
        {
          id = 122,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 304,
          width = 16,
          height = 24,
          rotation = 0,
          gid = 719,
          visible = true,
          properties = {
            ["operatorid"] = 118,
            ["script"] = "VehicleLavaSpray"
          }
        },
        {
          id = 130,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 288,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 }
          },
          properties = {
            ["collidable"] = true,
            ["static"] = true
          }
        },
        {
          id = 131,
          name = "",
          type = "",
          shape = "polyline",
          x = 304,
          y = 288,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 }
          },
          properties = {
            ["collidable"] = true,
            ["static"] = true
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "preboss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["activatesound"] = "snd/alarm4.wav",
        ["fademusic"] = true
      },
      objects = {
        {
          id = 123,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 128,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 304, y = 0 }
          },
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "midbossboats2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 58,
          name = "",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 864,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 2147484065,
          visible = true,
          properties = {
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 55,
          name = "",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 864,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 417,
          visible = true,
          properties = {
            ["script"] = "ShmupVehicle"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "midbosshostages",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 186,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 1024,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 875,
          visible = true,
          properties = {
            ["destroyedtile"] = "destroyed",
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 187,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 1024,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 875,
          visible = true,
          properties = {
            ["destroyedtile"] = "destroyed",
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 189,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 992,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 875,
          visible = true,
          properties = {
            ["destroyedtile"] = "destroyed",
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 190,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 992,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 875,
          visible = true,
          properties = {
            ["destroyedtile"] = "destroyed",
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 192,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 976,
          width = 304,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "midboss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      name = "midbossboats1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 57,
          name = "",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 1072,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 417,
          visible = true,
          properties = {
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 59,
          name = "",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 1072,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 2147484065,
          visible = true,
          properties = {
            ["script"] = "ShmupVehicle"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "mermaid4b",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 103,
          name = "",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 1328,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 478,
          visible = true,
          properties = {
            ["pathid"] = 115,
            ["pathtime"] = 0.5,
            ["script"] = "NPCInquisitor"
          }
        },
        {
          id = 114,
          name = "",
          type = "",
          shape = "polyline",
          x = 16,
          y = 1296,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 32 },
            { x = 96, y = 48 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 115,
          name = "",
          type = "",
          shape = "polyline",
          x = 304,
          y = 1328,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -96, y = 16 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 102,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1328,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 442,
          visible = true,
          properties = {
            ["pathid"] = 114,
            ["pathtime"] = 0.5,
            ["script"] = "NPCInquisitor"
          }
        },
        {
          id = 135,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1264,
          width = 304,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "mermaid4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 47,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 1312,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 411,
          visible = true,
          properties = {
            ["cageid"] = 48,
            ["pathid"] = 60,
            ["pathspeed"] = 28,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 48,
          name = "cage",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1328,
          width = 32,
          height = 64,
          rotation = 0,
          gid = 404,
          visible = true,
          properties = {
            ["pathid"] = 113,
            ["pathtime"] = 1,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 50,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1296,
          width = 304,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 101,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 1280,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 544,
          visible = true,
          properties = {
            ["pathid"] = 116,
            ["pathtime"] = 1.5,
            ["script"] = "NPCInquisitor"
          }
        },
        {
          id = 113,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = 1328,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 48 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 116,
          name = "",
          type = "",
          shape = "polyline",
          x = 160,
          y = 1280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 16 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "mermaid3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 41,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 1696,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 411,
          visible = true,
          properties = {
            ["cageid"] = 42,
            ["pathid"] = 60,
            ["pathspeed"] = 28,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 42,
          name = "cage",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1712,
          width = 32,
          height = 64,
          rotation = 0,
          gid = 404,
          visible = true,
          properties = {
            ["pathid"] = 112,
            ["pathtime"] = 1,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 51,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1696,
          width = 304,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 99,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1680,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 460,
          visible = true,
          properties = {
            ["pathid"] = 109,
            ["pathtime"] = 1,
            ["script"] = "NPCInquisitor"
          }
        },
        {
          id = 109,
          name = "",
          type = "",
          shape = "polyline",
          x = 192,
          y = 1680,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 48 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 110,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1680,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 460,
          visible = true,
          properties = {
            ["pathid"] = 111,
            ["pathtime"] = 1,
            ["script"] = "NPCInquisitor"
          }
        },
        {
          id = 111,
          name = "",
          type = "",
          shape = "polyline",
          x = 224,
          y = 1680,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 48 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 112,
          name = "",
          type = "",
          shape = "polyline",
          x = 192,
          y = 1712,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 96 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "ballistae4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 143,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1888,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 734,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 144,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 1840,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 732,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 174,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1808,
          width = 304,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "ballistae3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 148,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 1920,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 732,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 150,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1952,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 734,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 173,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1888,
          width = 304,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "ballistae2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 155,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1984,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 732,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 157,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 2032,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 734,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 172,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1952,
          width = 304,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "ballistae1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 161,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 2112,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 734,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 162,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 2048,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 732,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 171,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2016,
          width = 304,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "mermaid2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 35,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 2320,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 411,
          visible = true,
          properties = {
            ["cageid"] = 36,
            ["pathid"] = 60,
            ["pathspeed"] = 28,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 36,
          name = "cage",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 2336,
          width = 32,
          height = 64,
          rotation = 0,
          gid = 404,
          visible = true,
          properties = {
            ["pathid"] = 132,
            ["pathtime"] = 0.5,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 52,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 2288,
          width = 304,
          height = 48,
          rotation = 0,
          visible = false,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 66,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 2304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 442,
          visible = true,
          properties = {
            ["pathid"] = 133,
            ["pathtime"] = 0.5,
            ["script"] = "NPCInquisitor"
          }
        },
        {
          id = 67,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 2304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 478,
          visible = true,
          properties = {
            ["pathid"] = 134,
            ["pathtime"] = 0.5,
            ["script"] = "NPCInquisitor"
          }
        },
        {
          id = 132,
          name = "",
          type = "",
          shape = "polyline",
          x = 128,
          y = 2336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 48 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 133,
          name = "",
          type = "",
          shape = "polyline",
          x = 128,
          y = 2304,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 134,
          name = "",
          type = "",
          shape = "polyline",
          x = 160,
          y = 2304,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "guards3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 120,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2448,
          width = 304,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "guards2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 119,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2576,
          width = 304,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "mermaid1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 32,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 2752,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 411,
          visible = true,
          properties = {
            ["cageid"] = 33,
            ["pathid"] = 60,
            ["pathspeed"] = 28,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 33,
          name = "cage",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 2768,
          width = 32,
          height = 64,
          rotation = 0,
          gid = 404,
          visible = true,
          properties = {
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 53,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2704,
          width = 304,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 104,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 2608,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 529,
          visible = true,
          properties = {
            ["pathid"] = 106,
            ["pathtime"] = 2,
            ["script"] = "NPCInquisitor"
          }
        },
        {
          id = 106,
          name = "",
          type = "",
          shape = "polyline",
          x = 64,
          y = 2608,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 32, y = 96 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "guards1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 77,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 2784,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 94,
            ["pathid"] = 90,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 76,
          name = "",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 2752,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 94,
            ["pathid"] = 90,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 75,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 2736,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 94,
            ["pathid"] = 90,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 72,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 2752,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 93,
            ["pathid"] = 89,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 85,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 2800,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 93,
            ["pathid"] = 89,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 74,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 2784,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 93,
            ["pathid"] = 89,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 82,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 2816,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 93,
            ["pathid"] = 89,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 70,
          name = "",
          type = "",
          shape = "rectangle",
          x = -32,
          y = 2784,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 93,
            ["pathid"] = 89,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 86,
          name = "",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 2768,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 93,
            ["pathid"] = 89,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 78,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 2800,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 94,
            ["pathid"] = 90,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 73,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 2800,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 93,
            ["pathid"] = 89,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 79,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 2768,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 94,
            ["pathid"] = 90,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 80,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 2816,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 94,
            ["pathid"] = 90,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 71,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 2768,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 93,
            ["pathid"] = 89,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 83,
          name = "",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 2800,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 94,
            ["pathid"] = 90,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 84,
          name = "",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 2784,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 94,
            ["pathid"] = 90,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 69,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 2736,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 93,
            ["pathid"] = 89,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 81,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 2768,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 454,
          visible = true,
          properties = {
            ["leaderid"] = 94,
            ["pathid"] = 90,
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 88,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2784,
          width = 304,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 89,
          name = "",
          type = "",
          shape = "polyline",
          x = 64,
          y = 2832,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 80, y = 80 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 90,
          name = "",
          type = "",
          shape = "polyline",
          x = 240,
          y = 2832,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -80, y = 80 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 94,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 2832,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 457,
          visible = true,
          properties = {
            ["pathid"] = 90,
            ["pathtime"] = 1,
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 93,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 2832,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 457,
          visible = true,
          properties = {
            ["pathid"] = 89,
            ["pathtime"] = 1,
            ["script"] = "NPCSwordsman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "ballistae0",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 176,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 2944,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 733,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 178,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 2960,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 733,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 179,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 2960,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 733,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 180,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 2944,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 733,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 182,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2896,
          width = 304,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "sparks",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      name = "playerteam",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PlayerTeam"
      },
      objects = {
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 3232,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["script"] = "ShmupPlayer"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "npcshots",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {}
    },
    {
      type = "tilelayer",
      name = "ceiling",
      x = 0,
      y = 0,
      width = 19,
      height = 200,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztzqsNgDAYhdFuwgbgMbwGYP9taBNEBVTwVyDOSa79clMCAAAAAAAAAAAAAAAAAPiXo1NnzRs7tYa8JcW/rXln3pzi36a7Uxb5Vn+K9J46X3qtTt3bG83S2F46F3ybDAI="
    },
    {
      type = "objectgroup",
      name = "camera",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "Camera",
          shape = "rectangle",
          x = 32,
          y = 2880,
          width = 240,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {
            ["pathid"] = 6,
            ["pathspeed"] = 30
          }
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "polyline",
          x = 32,
          y = 2880,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = -2880 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "collision",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["collidable"] = true,
        ["static"] = true
      },
      objects = {}
    }
  }
}
