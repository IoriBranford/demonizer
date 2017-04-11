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
    ["delayinitobjects"] = true,
    ["music"] = "mus/20 - My Kingdom.vgm",
    ["overlaymap"] = "gameui.lua",
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
      name = "demonshots",
      firstgid = 4,
      filename = "img/demonshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/demonshots.png",
      imagewidth = 32,
      imageheight = 64,
      tileoffset = {
        x = -16,
        y = 8
      },
      properties = {
        ["commoncollision"] = 0,
        ["row_bombpackage"] = 2,
        ["row_bombshrapnel"] = 3,
        ["row_player"] = 0,
        ["row_wingman"] = 1
      },
      terrains = {},
      tilecount = 4,
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
                x = -8,
                y = 8,
                width = 16,
                height = 16,
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
      name = "playerhitbox",
      firstgid = 8,
      filename = "img/playerhitbox.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/playerhitbox.png",
      imagewidth = 32,
      imageheight = 32,
      tileoffset = {
        x = -16,
        y = 16
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "map_cave",
      firstgid = 9,
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
      firstgid = 409,
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
      firstgid = 410,
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
      firstgid = 422,
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
      firstgid = 423,
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
      firstgid = 513,
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
      name = "humanshots",
      firstgid = 603,
      filename = "img/humanshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/humanshots.png",
      imagewidth = 128,
      imageheight = 128,
      tileoffset = {
        x = -24,
        y = 8
      },
      properties = {
        ["commoncollision"] = 0,
        ["row_arrow"] = 2,
        ["row_ballista"] = 4,
        ["row_catapult"] = 5,
        ["row_fire"] = 7,
        ["row_magic"] = 3,
        ["row_pike"] = 0,
        ["row_sword"] = 1,
        ["row_water"] = 6
      },
      terrains = {},
      tilecount = 32,
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
                x = -2,
                y = 14,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 20,
          animation = {
            {
              tileid = 20,
              duration = 67
            },
            {
              tileid = 21,
              duration = 67
            }
          }
        },
        {
          id = 28,
          animation = {
            {
              tileid = 28,
              duration = 67
            },
            {
              tileid = 29,
              duration = 67
            },
            {
              tileid = 30,
              duration = 67
            },
            {
              tileid = 31,
              duration = 67
            }
          }
        }
      }
    },
    {
      name = "electricity",
      firstgid = 635,
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
      name = "demonizing",
      firstgid = 667,
      filename = "img/demonizing.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/demonizing.png",
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
          animation = {
            {
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            }
          }
        }
      }
    },
    {
      name = "demonwomen",
      firstgid = 670,
      filename = "img/demonwomen.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/demonwomen.png",
      imagewidth = 192,
      imageheight = 832,
      tileoffset = {
        x = -32,
        y = 32
      },
      properties = {
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_archer"] = 12,
        ["row_civ1"] = 0,
        ["row_civ2"] = 1,
        ["row_civ3"] = 2,
        ["row_civ4"] = 3,
        ["row_civ5"] = 4,
        ["row_civ6"] = 5,
        ["row_civ7"] = 6,
        ["row_civ8"] = 7,
        ["row_mage"] = 11,
        ["row_pikeman"] = 8,
        ["row_priest"] = 10,
        ["row_swordsman"] = 9
      },
      terrains = {},
      tilecount = 39,
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
                x = -8,
                y = 56,
                width = 16,
                height = 16,
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
            }
          }
        }
      }
    },
    {
      name = "lavapit",
      firstgid = 709,
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
      firstgid = 749,
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
      firstgid = 798,
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
      name = "sparks_med",
      firstgid = 810,
      filename = "img/sparks_med.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/sparks_med.png",
      imagewidth = 1024,
      imageheight = 64,
      tileoffset = {
        x = -32,
        y = 32
      },
      properties = {
        ["row_explosion"] = "0"
      },
      terrains = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 64
            },
            {
              tileid = 1,
              duration = 64
            },
            {
              tileid = 2,
              duration = 64
            },
            {
              tileid = 3,
              duration = 64
            },
            {
              tileid = 4,
              duration = 64
            },
            {
              tileid = 5,
              duration = 64
            },
            {
              tileid = 6,
              duration = 64
            },
            {
              tileid = 7,
              duration = 64
            },
            {
              tileid = 8,
              duration = 64
            },
            {
              tileid = 9,
              duration = 64
            }
          }
        }
      }
    },
    {
      name = "demonbomb",
      firstgid = 826,
      filename = "img/demonbomb.tsx",
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      image = "img/demonbomb.png",
      imagewidth = 512,
      imageheight = 256,
      tileoffset = {
        x = -64,
        y = 128
      },
      properties = {},
      terrains = {},
      tilecount = 8,
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
                x = -64,
                y = 128,
                width = 128,
                height = 128,
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
              duration = 50
            },
            {
              tileid = 1,
              duration = 50
            },
            {
              tileid = 2,
              duration = 50
            },
            {
              tileid = 3,
              duration = 50
            },
            {
              tileid = 4,
              duration = 50
            },
            {
              tileid = 5,
              duration = 50
            },
            {
              tileid = 6,
              duration = 50
            },
            {
              tileid = 7,
              duration = 50
            }
          }
        }
      }
    },
    {
      name = "ballista",
      firstgid = 834,
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
      firstgid = 858,
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
      firstgid = 978,
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
    },
    {
      name = "demonshothit",
      firstgid = 984,
      filename = "img/demonshothit.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/demonshothit.png",
      imagewidth = 64,
      imageheight = 32,
      tileoffset = {
        x = -8,
        y = 8
      },
      properties = {},
      terrains = {},
      tilecount = 8,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 16
            },
            {
              tileid = 1,
              duration = 16
            },
            {
              tileid = 2,
              duration = 16
            },
            {
              tileid = 3,
              duration = 16
            },
            {
              tileid = 4,
              duration = 16
            },
            {
              tileid = 5,
              duration = 16
            },
            {
              tileid = 6,
              duration = 16
            },
            {
              tileid = 7,
              duration = 16
            }
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
      data = "eJztlTuOwzAMBQPf/1pUZ58pKdbAy+TJ5VYzgGBDpmiK3zler/NvXZ81n7Vib/C8Yk2sE/sLunL/lltx9l4pf0J2xf6TzXxf5UzaeuukfWlD26fdlEsf5Pc8Mzh3xh7vnf5K3U/yCzqpP+UW5G49U86v49u/+Y25kzFN3/F/c3zfiXK0MeMzWHk32jJxpuUF867lI/Mv97JmWl6ujZ7U1f6RuZi6mAfNd5TJe+/8mbqyNjJnMyat5vlkP2h3yjhmfrV4My70Y8rRvowF7Wi+zDodnGfe8n709y7mzOP0C/OZ+61X7/yb+c3abX6lPcyBObov2YPZU9jTea/mc8b6wvfWk+nj9p02ZR9kDbV+yBrhDBr8+6m+26zguV0/Yo5QV/sfZekn1gRnDe+ecW3+Z6zSv7ST86zNpTb32E9arjL/WK+0l/1o56d8Zz5yFmXdtf5Bv7SZ0e7c5lib9bu62PVFznjaTZuYa6xh5nHLl+v49dFTX2EfaXa23tz6PGu+zVDqSh+2GZ33ZT8REREREREREREREREREREREREREREREZH/5Q11wk4a"
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
      data = "eJztmk+y00YQxpslcAKbEwAnIDlBuATkBM9Z2vWqQpZWuSqwlMsutJVukOQGvgQE2JAsMHAAonmvf57PQhrJfzapsqu6ZFsz3/T0zHR/3ZLZ5XP5XD6Xz+Vz+Rz2+bOWv2r59wT5w3E2tfxzAmbA+VjLtJaF4ynmIfLRMca1VCKTWta1rPz+1NuE33kt17XMa1n673DdepvMMdbepnT9AsbMr3P5Tnv0WPj9zL/P/PdC7q297dJ1qfy6cH2YR+ZzGXu/F7W89v9L15nxZy7oW/n12tut/f7Wx3hVy6+CufS+uV8ZG90y71v6/4X3feFYrwTztdhpIn3BHvsVjN8aGE08nfdGdJ24zYoejDZM8JYih+I08VinY3GQK9HtlxNwwGI/nQNr5jY/B9bK7XUOrLBHp2fEOpe9wvy2Z9QrPxHrWS2/u60C1stafk60f+7S1ubKcYJeM7+26fbMMaa+5s0x0Wnhttq02AyM0C5z3fHvL0XHK7+38HahzUTGZKxmPMgtxgTah3alY60s+s9S7uNzl97ukctP/h9+tLToV9Uvb3xc9tzY/3tay48uDx1vbtF3ZrYfg4hh+H0wgi6PBQs81ZMzjY7Mkxj1tAWjTdATXTaONU7okpKR6JK5jYbq0oY18XXenICjWBu324MjccCCo6zPgEV8zM+AtRX7n4rFHs9OwLpbyxO73U/sq2OwwJlZ5H9Bvx9quX8ETrA53An+uTkQbyQY+JLSIresDsAbWeTEnGP8XPgP7j0Ej72+tnh2gn4rizH32v/rWwv2wcZ1wk5Ti34rjDHkbOJr2J/4xqntc82h+wOf+JNjoAv6HOq7FFPlWJ9zkf+P3HNpO1t35X5XGxXyyrazGs5T2Kvkgl3nmTHhKm1xJmCRB8FNmm1op5xnJePe9StnkxxwKlg6/+A7yQ/JuRk3YDyWMTPHUd/AOCuxwdSif2uziZ7Jx6Iz41SOpTk7dYo+f/JQMIkLxCly8qXPc5lYL123JxZ9Nrk9vFZz+use3eAG195Xaxr4b+JOX+wKWPBvdCEebOWerm2bbsyPmgC2Ui5LjCYWdsUZ+Aq1Dnj7QnCmFuspW+vmbsTPtcW9xN4Ei9jKeeribiOxN3kS+Q0ceSrYxLEuLHKKscV4TpzSeM9+7Yql7PVM+mwtxuStj8UenvSsIe3AJIZ+uf2vCILtu87RSGwJJ2M/Baxvjlf/LtaWzgfgU3PXifxt4XP5UMun23GKpevWdX5GFrlrfjuXvRrem1re3Y53g5XipfjPgEP7yvt8jTg3WFVifth9EtveyNZx7tyJ96hBpnTibAWMoBs1zs9uK85fSifdo147LNj36PTB4r5N5TvMbxrbF4yPTm8s+sU+nYgLm2j7mz3xvpa3bvch3BNb4UsqtxVxbu44GvNSWMyP88q51v01hA+DtRQc9ip+ZmjOiy/FfztmkcsaPLD92JnCIk8gJq9st892Omm87xLiPTxfbX1MPg8ePmZyJI7OFT/YhnNIbtnkKc37IT4P4Y9DhDN/aP7bhVWeCa8S/1gdiAfPvC9YueMdqh9rwToQS3LBTPnXlI7w+7HYbojvaNt7XyzGN54nlUesQ8D6Jnj6vCz4liF42D/48A+CV9k+1+irB2kcWDkWsRu7rSzWOLqwwJlb5M7EkHf+m+dvXedXceDMM7+iE/6Nmm9KJ/XZcPGJ6LSwWMsjt2nDUg5G7IBHvrMYa+HX1MbbsPBhuUX+G+bxVex9LWu47rCV2hs85QHUA4lVrEmXTuQl2Fz5hD6nhDv28cKpxeeon93mb+We1tlT6wfXhde/F5tPRLdxAkvXD/48t8jz+Z8cpMvmqhM1u4nblnUkxyDm9e1PcgDiI/YP4z+y6Aup8ac4GBxpI7jaB47WV0sES3O55tjo2ueXNefIO9aI/HYIN1xZzF/b2q9sWD29WTtUHHjXEL7aJ/CuLp5xrAzhhn3971k8G332SmEQP5px/BAhbyOfPIZ7qT7kH9QTDuFz2IS6jz+/LPBd6NiHqT6a2EOuRV2De/CArthPzYT5UAMiThJ3yWk4t23rSv5BDCNerQWf2MF7Pql4RlzwGknBewelY+FXZxZ9ZRuW5h+lcD/sBffa+Hd8ZMonet5dwHXJseibygGa65gLVw7x0Wslg86O7s2lYNid2zj7yYY/gxrZfl1CYzU8qRwwL7CUZ5P7N7GGnmHOShfW0vrPoZ6bXOYXOMTfguW5cpGyv/ORwmvYO51Cf/3usTvJ5bFV6UL/b2J/xcLvtOGx15mj1lza5kjtr2uuxMag13vH6NKL/ZfyNZXYTddRanG72iN+J3Wm8XPoBg7nkVphXy6q8ywt8kH1E+RC5KKTjnVAN9Y0XOGG1LU1t8p9HVK+EBvjK7Ko786G4IX/up4roJvm+zrH5rniXciu/QFemy9sYhE7UmdB9RMdv8PKLL7703dO4dBw6uae03iZwkI35feKQ6xN8fyWc7/LI986TiY4qx6dmr6bnIz6BLkEsalPJ+Uo1EpnFp8beq15sE7USYnV7FvmPeQ9HHRSHbARawoP6MPC5mOLdUh4CByA+6l9ik48s6Ju03y3l3nOrZ3XgQNXoubL2pGnTS3moxP7nivCATYyLpJZfH+N2sTYIm8Ckxwzs/jsjHfsyNP5vbHIg8kJea5G/4WMW3qtTddMnyuBwxqDoTakDd/pVzX6U7+pGv1y6ceazRs4S+lPe7UlfZeN3zPb16tsjJ+L76YulMlYpfhO+uNn3H/t7lX+fAbbUqPI3cbY2msqN2NSz9HcJVxfiLx2bN6blPXfxZvc43LQuWj013dHebfa53Kjg+cBhdpi6Hvg4BETMvmObYbg6DuwiqEcoet92D7dlO/CcQ7RSXXTtTvlHWneP0Yn5nssVi4YyxOx2BOl4KWwut53vrLIKYnBVQLrWcKW6FW6buSVqfZ9WCqpOQ7BUs6Wd2DxrnTXO+KsI1jk+21YvJcdxtb3tZu2VyzdE7z//dx1cj+68wGqY1Ov5p5gLPZd8C3/ARoiNYI="
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
      data = "eJztzrEJACAQBMHH/tvTTDOtw89s4BNhBo5Lt7eIkesFP3Or6Ct6dOnSpUvX+507RQ8AAAAAAAAAAAAAAADwswsF2FcG"
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
      data = "eJztWmuL2zAQPPTHTTElmFKMCUe4f3snanHbycxqtc6HUjQg4jw8nl1pH5bz9jYxMTExMTExMTExMTHxL+G9/Bk/yjWe5ev829fYzpHhqxx34Lmd436OCK/Vgq8bcCu+5fQLnoNclv834UK/2N8zje34V/F5IrYpXUfHP0xPe4+6DvM7T1/Ext3xd28+mY3sfMVnP2c22u+VrUzjz46NyBnlqVgdfyl+xmP5PD/Z79BHio/pQz4WNz0+FTtRropdcKm1rrA4/o7kGgtca2pe61D5sOUuL45VfL6fvO/AEbFP5RE8z/teXcOLj148efo8X0Tz44hWTzv7vOdrdk2lUfn9cQ6lr33/EZjXhpVowHhiv7kZTSwuvNjcCRfLB5jn6sA4snHYbFe5c4drWm3Yi/RywFqefdriEecnkp+O8jxnbM15dQG1eWszwtPA5qtxRXMv04ZxMMpVcRCeUfsa0M6MfZYLfT5S8yyO8rwusrrQX1kuVkuzXNibtpGdw6trtGIpPHYyXGxdXeVCbaNcmO+u+J3FoMrpUU2Y90btY/GXyX3sHnVL2LcQDjtGuNg9U2ZdLUQH6ovoUn01fhbh6tkWXQ9er8/4vP0Fr0djOZD1KQv5jeoDPVuRhx339LZ7Bpzz+lrrM/aPSqf3GfaY7FrMf0q/Ra+/UXoYl+VT6wSPPxwutFfZ3M6/E38h9vLsL29dK10Vao8EtUXiDHu53jz2YnYlWpjfvB4f/eblpJE6gHnJ8o7WE7VGs3X3aq1ErlvSNsuVyf0I1WNe6e2zNbenKdvLsZyQnT+WV0d9pfavX9X39tZCe7agNGF+UVx2niwOYpunC3skxYXzyPyFc4T2qZrDnjGgDfYaXo3dyvczGnxuYmsa3v+oHM/Ox2sxLao+qxyraryqh6oW1dH6mxobKocq/vb6KN+xtZW/932UzyLrF/f3vONITWz9XM9/I/m+1yNm8g7W/it1o4L1Oa/gulI7Ktj9ez0eeQ6rnnlGalE7F+Nf5R5vHlXPgOv10eGp8Hq/0RrL9mBx/qJc6GMWh9G18AhwjfakKh9k9mXVWsjUfu+ZZ+Y/BypPZ+JwLc9+v5ofWI7O2KnuqbLa2L1yVlsF2z9+VS7cLmhjz2OztrJnO1f0KW2Z2MJahDqj2rz+bjTud6IH4z66j6h6wmhNsppUXRr1PfvvTLbf8f43MBpLK+Gyr5keDGtUhodxRvdsJiYmJiYm/gd8Ah0pDIA="
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
      data = "eJzt2DdLBUEUQOF9P8uAWcGAWcGAWcGAWXtjb/y9nmJvs7CzAS3U88FhimWmG967k2WSJEmSJEmSJOkndHWyrJt6qDex9tNAJ33WON8naJKmEusMzVactcL3VVqj9cS6SVsVZx3y/YiO6SSxntF5xVmSJH2XQX5zhmiYRmiUxlr+Ds2xb54WaJGWaLnlWdvs26Fd2qN9Omh51gX7LumKrumGbluedce+e3qgR3qi55ZnvbDvld7onT7o0/8AkvSvxWzcl8/AxbXOTBxiNp7OZ+DiWmcmDjEbb+QzcHGtMxOHmI1P8xm4uDoT668rewNrcr9D2RtYk/sdyt7AmtzvUPYG5v2WJEmSJOl3+wIusTcz"
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
          gid = 468,
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
          gid = 798,
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
          gid = 798,
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
          gid = 2147484070,
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
          gid = 422,
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
          gid = 978,
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
          gid = 978,
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
          gid = 978,
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
          gid = 978,
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
          gid = 422,
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
          gid = 2147484070,
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
          gid = 483,
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
          gid = 447,
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
          gid = 416,
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
          gid = 409,
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
          gid = 549,
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
          gid = 416,
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
          gid = 409,
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
          gid = 465,
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
          gid = 465,
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
          gid = 837,
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
          gid = 835,
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
          gid = 835,
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
          gid = 837,
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
          gid = 835,
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
          gid = 837,
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
          gid = 837,
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
          gid = 835,
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
          gid = 416,
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
          gid = 409,
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
          gid = 447,
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
          gid = 483,
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
          gid = 416,
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
          gid = 409,
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
          gid = 534,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 459,
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
          gid = 462,
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
          gid = 462,
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
          gid = 836,
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
          gid = 836,
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
          gid = 836,
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
          gid = 836,
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
      name = "player",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
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
      data = "eJztzqsNgDAYhdF/GDYAj+E1APvPQpsgKqCCViDOSa79ciMAAAAAAAAAAAAAAAAAAP7l6NRZ08ZOrSFtifZv+dOZNkf7t+nu5LV8Kz+19J46X3q1TtnbK83c2F46F0ESDPw="
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
