return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.1",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 19,
  height = 200,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 185,
  properties = {
    ["cameraid"] = 1,
    ["delayinitobjects"] = true,
    ["music"] = "20 - My Kingdom.vgm",
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
                properties = {}
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
                properties = {
                  ["sensor"] = true
                }
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
                properties = {
                  ["sensor"] = true
                }
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
                properties = {
                  ["sensor"] = true
                }
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
                properties = {
                  ["sensor"] = true
                }
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
                properties = {
                  ["sensor"] = true
                }
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
                properties = {
                  ["sensor"] = true
                }
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
                properties = {
                  ["sensor"] = true
                }
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
                properties = {
                  ["sensor"] = true
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
                properties = {}
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
      name = "hud_icons",
      firstgid = 409,
      filename = "img/hud_icons.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/hud_icons.png",
      imagewidth = 32,
      imageheight = 32,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 4,
      tiles = {}
    },
    {
      name = "bombgauge",
      firstgid = 413,
      filename = "img/bombgauge.tsx",
      tilewidth = 16,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/bombgauge.png",
      imagewidth = 128,
      imageheight = 64,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {
        ["row_full"] = 1,
        ["row_notfull"] = 0
      },
      terrains = {},
      tilecount = 16,
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
                name = "fill",
                type = "",
                shape = "rectangle",
                x = 6,
                y = 4,
                width = 4,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["color"] = "#ffaadfff",
                  ["direction"] = "up"
                }
              }
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
            },
            {
              tileid = 12,
              duration = 100
            },
            {
              tileid = 13,
              duration = 100
            },
            {
              tileid = 14,
              duration = 100
            },
            {
              tileid = 15,
              duration = 100
            }
          }
        }
      }
    },
    {
      name = "cage",
      firstgid = 429,
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
                properties = {}
              }
            }
          }
        }
      }
    },
    {
      name = "mermaid",
      firstgid = 430,
      filename = "img/mermaid.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/mermaid.png",
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
      firstgid = 442,
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
                properties = {}
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
                properties = {}
              }
            }
          }
        }
      }
    },
    {
      name = "infmen",
      firstgid = 443,
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
      firstgid = 533,
      filename = "img/infwomen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/infwomen.png",
      imagewidth = 360,
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
      tilecount = 75,
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
      firstgid = 608,
      filename = "img/humanshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/humanshots.png",
      imagewidth = 128,
      imageheight = 112,
      tileoffset = {
        x = -24,
        y = 8
      },
      properties = {
        ["commoncollision"] = 0,
        ["row_arrow"] = 2,
        ["row_ballista"] = 4,
        ["row_fire"] = 6,
        ["row_magic"] = 3,
        ["row_pike"] = 0,
        ["row_sword"] = 1,
        ["row_water"] = 5
      },
      terrains = {},
      tilecount = 28,
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
                properties = {}
              }
            }
          }
        },
        {
          id = 24,
          animation = {
            {
              tileid = 24,
              duration = 67
            },
            {
              tileid = 25,
              duration = 67
            },
            {
              tileid = 26,
              duration = 67
            },
            {
              tileid = 27,
              duration = 67
            }
          }
        }
      }
    },
    {
      name = "electricity",
      firstgid = 636,
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
      firstgid = 668,
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
      firstgid = 671,
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
      name = "lavapit",
      firstgid = 710,
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
      firstgid = 750,
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
      firstgid = 799,
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
                properties = {}
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
      firstgid = 811,
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
      firstgid = 827,
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
                properties = {}
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
      firstgid = 835,
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
                properties = {}
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
      firstgid = 859,
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
      name = "touchmarkers",
      firstgid = 979,
      filename = "img/touchmarkers.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/touchmarkers.png",
      imagewidth = 128,
      imageheight = 64,
      tileoffset = {
        x = -32,
        y = 32
      },
      properties = {},
      terrains = {},
      tilecount = 2,
      tiles = {}
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
      data = "eJztlTuOwzAMBQPf/1xUZ18pKdbAy+TJ5VYzgGBDpmiK3zler/NvXZ81n7Vib/C8Yk2sE/sLunL/lltx9l4pf0J2xf6TzXxf5UzaeuukfWlD26fdlEsf5Pc8Mzh3xh7vnf5K3U/yCzqpP+UW5G49U86v49u/+Y25kzFN3/F/c3zfiXK0MeMzWHk32jJxpuUF867lI/Mv97JmWl6ujZ7U1f6RuZi6mAfNd5TJe+/8mbqyNjJnMyat5vlkP2h3yjhmfrV4My70Y8rRvowF7Wi+zDodnGfe8n709y7mzOP0C/OZ+61X7/yb+c3abX6lPcyBObov2YPZU9jTea/mc8b6wvfWk+nj9p02ZR9kDbV+yBrhDBr8+6m+26zguV0/Yo5QV/sfZekn1gRnDe+ecW3+Z6zSv7ST86zNpTb32E9arjL/WK+0l/1o56d8Zz5yFmXdtf5Bv7SZ0e7c5lib9bu62PVFznjaTZuYa6xh5nHLl+v49dFTX2EfaXa23tz6PGu+zVDqSh+2GZ33ZT8REREREREREREREREREREREREREREREZH/5Q2fz1D/"
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
      data = "eJztmkGy00YQhpslcAKbE8A7AckJwiUeOcFzlna9qpClXa4KLOWyC22lGyS5gS8BATYkCwwcgGje68/zW0gjyfYmVc9VXbKtmX96ema6/27J7O5z97n73H3uPnefYZ8/K/mrkn9PkD8cZ1vJPydgBpyPlUwrWTqeYg6Rj44xrqQUmVSyqWTt96feJvzOKrmuZF7Jyn+H687bLBxj420K1y9gzPw6l++0R4+l31/495n/Xsq9jbdduS6lX5euD/NY+FzG3u9FJa/9/8J1ZvyZC/qWfr32dhu/v/MxXlXyq2CuvG/mV8ZGt4X3Lfz/3Pu+cKxXgvla7DSRvmCP/QrGbzWMOp7Oeyu6TtxmeQdGEyZ4K5GhOHU81ulYHORKdPvlBByw2E/nwJq5zc+BtXZ7nQMr7NHpGbHOZa8wv90Z9cpOxLqs5He3VcB6WcnPifbPXZraXDlO0Gvm1ybdLh1j6mteHxOdlm6rbYPNwAjtFq47/v2l6Hjl95beLrSZyJiMVY8HmcWYQPvQrnCstUX/Wch9fO7K2z1x+cn/w48WFv2q+uWtj8ueG/t/zyr50eWx480t+s6FHcYgYhh+H4ygy4Vggad6cqbRkXkSo541YDQJeqLL1rHGCV364BHnrgfo0iQjX+ftiThgbd1uj07AASus4+ZMWPCac2CxF86BBY84Bet+JU8t7qtjscCB/4Wz9UMlD4/EgTvBP7cD8er6cB7hluUAvJFFTsw5xs+F/+DeffBGFvk0Zyfot7YYc6/9v6614DxvXSfsNLXot8IYQ/3NzqJvnNoh1xyyP/CL6JiJPkN9Vx3zyQkYd/L/kgcuTWfrvtxva6NCXtl0Vokb5IJt55kx4SpNcYa4QU7a5vNHdsh51jLufb9yLskBp4Kl8w/+jvyQnJtxA8aFjLlwHPUNjLMWG0wt+rcmm+h5vBCdGad0LM3ZqVN0+ZPHgvnUDvkPOfnK57lKrJeu21OLPpvcHl6rOf11h27wlWvvqzUN/Ddxpyt2waPWogvxYCf3dG2bdNPYORZbKZedWfTl2K9tX+4s1jrg7UvBmVqsp+ysnbsRPzcW9xJ7EyxiK+epjbuNxN7kSeQ3cOSpYBPH2rDIKcYW4zlxSuM9+7UtlrLXF9JnZzEm73ws9vCkYw1pB+bU//ty+18eBNu3naOR2BJOxn4KWN8cr/qdbyydD4wsnuPSYv629Ll8qOTT7Tj5ynVrOz/KXbPbuRzU8N5U8u52vBusFC/FfwYc2pfe52vEucEqE/PD7pPY9kZ2jnPvXrxHDTKlE2crYATdqHF+dltx/lI66R712mHOvkenDxb3bSrfYX7T2D5nfHR6Y9EvdulEXNhG29/sifeVvHW79+Ge2ApfUrqtiHNzx9GYl8JifpxXzrXurz58GKyV4LBX8TN9eTW+FP/tmHkma/DIDmNnCos8gZi8tv0+2+uk8b5NiPfwfLX1Mfm85g+Zz/fU+gJ+sAlnSG5Z5yn1+yE+9+GPfYQzf0z+24RVnAmvFP9YDsSDZz4UrMzxhurHWrAOxJJMMFP+NaUj/H4stuvjO5r23heL8Y3nScUR6xCwvgmePi8LvqUPHvYPPvyD4JV2yDW66kEaB9aORezGbmuLNY42LHDmFrkzMeSd/+b5W9v5VRw488yv6IR/o+ab0kl9Nlx8IjotLdbyyG2asJSDETvgke8sxlr4NbXxJix8WGaR/4Z5fBV7X8sablpspfYGT3kANW9iFWvSphN5CTZXPqHPKeGOXbxwavE56me3+Vu5p3X21PrBdeH178XmE9FtnMDS9YM/zy3yfP4nB2mzuepEzW7itmUdyTGIeV37kxyA+Ij9w/hPLPpCavwpDgZH2gqu9oGjddUSwdJcrj42unb5Zc05spY1Ir/tww3XFvPXpvZr61dPT9UN4V1DaqWpcS4axjhV+nDDrv4PLJ6NLnulMIgf9Tg+RMjbyCeP4V6qD/kH9YQhfA6bUPfx55c5vgsduzDVRxN7yLWoa3APHtAW+6mZMB9qQMRJ4i45Dee2aV3JP4hhxKuN4BM7eM8nFc+IC14jyXnvoHAs/OrMoq9swtL8oxDuh73gXlv/jo9M+UTPu3O4LjkWfVM5QH0dM+HKIT56raTX2dG9uRIMu3cbZz9Z/2dQIzusS2ishicVPeYFlvJscv86Vt8zzFlpw1pZ9znUc5PJ/AKH+FuwPFfOU/Z3PpJ7DXuvU+iv3z12J7k8tipc6P9N7K9Y+J0mPPY6c9SaS9Mcqf21zZXYGPR67xhterH/Ur6mFLvpOkotbl97xO+kzjR+Dt3A4TxSK+zKRXWehUU+qH6CXIhcdNKyDujGmoYr3JC6tuZWma9DyhdiY3zFIuq7tyF44b+25wropvm+zrF+rngXsm1/gNfkC+tYxI7UWVD9RMfvsBYW3/3pOqdwaDh1fc9pvExhoZvye8Uh1qZ4fsO53+eRbx1nITjrDp3qvpucjPoEuQSxqUsn5SjUSmcWnxt6rbm3TtRJidXsW+bd5z0cdFIdsBFrCg/owsLmY4t1SHgIHID7qX2KTjyzom5Tf7eXec6tmdeBA1ei5svakadNLeajE/ueK8IBtjIusrD4/hq1ibFF3gQmOebC4rMz3rEjT+f31iIPJifkuRr9lzJu4bU2XTN9rgQOawyG2pA2fKdfWetP/aas9cukH2s2r+GspD/t1Zb0XdV+z+xQr6I2fia+m7rQQsYqxHfSHz/j/mt/r/TnM9iWGkXmNsbWXlO5GZN6juYu4fpC5LVj896krP8+3mQel4POea2/vjvKu9U+lxsdPA/I1RZ93wMHj5iwkO/Ypg+OvgOrGMoR2t6H7dJN+S4cZ4hOqpuu3SnvSPP+MTox32OxMsFYnYjFnigEL4XV9r7zlUVOSQwuE1iXCVuiV+G6kVem2ndhqaTm2AdLOVvWgsW70m3viLOOYJHvN2HxXnYYW9/XrttesXRP8P73c9fJ/ejeB6iOdb3qe4Kx2HfBt/wHYoExSw=="
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
            ["script"] = "LinearPath"
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
      data = "eJztzrEJACAQBMHH/uvTTDNtw89s4BNhBo5Lt7eIkesFP3Or6Ct6dOnSpUvX+507RQ8AAAAAAAAAAAAAAADwswu87ViV"
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
      data = "eJztWotq3DAQDP5yU45iTCmHKea4r01MT3SZzKx2Vym0oAGTy8UajfaltZy3t4mJiYmJiYmJiYmJiYl/Cb+W39e3ZYxn/Ri/m6vCd3Gcr/Gb4dqWnM4Vxm7AF9G5vubbgEd93gQf07I74+31Y/F58NqXz7Zrv1uuQ9hY2Qh5FZcajxrtT8t174zx1nxdPwkXswvjQC6mS61RcbTvvjv2Uutk3Jbnwq1jD6UTeSxfxGdKD+NjMebZOsIX9VsPh9Bj54jWm6g/e3yH0KHqxkk4bR1lY7xY3V9jW72N1K5ITnkavDrU41P1zqtrPTv0ct2ruapOZe3Sm1+txVub0v38uB5Cy27+/hTz2c82V/EeW5/bPYrrAfceoInlud0/Gg/Oaef18vJu7nm8LlXvMGftnNm+yNqtjTkX3hdFah3uXSpOe7WcaWO+i/A0WLthPmTqeNOmcpnFQFQbrjGzPsuFNqtosrpG13cB+62v1LUVfHhhBT2ZWEdgPWhXxYd3oqliK9srjNpd5U+Vi9WGrN1XsFO2xjBNo7HA+rOqrQ7CVVmf9zyX0YQ8I/67Ey2VuMIcZroiXNFn3ggXex5kvVjPXitZF+Nt33nnC95Y9X3vfKFnq2ifwvrAnk77zIDjrv35IeKCzeX9vYH1mB4X+96C9RAshnEO1MX4PFvaPpPpQj42N2o+zX0KrOb3bJjh8nR6Ocv6c8+nvfxX5xDoT6/Ht2C9gOXO7AN3oWdP8mBfYblG993KvmS5mN1He7ARTaoHq/b2GEejmqwPq33vV3KxOM/aivX12f6kQdUtj6ud5ytNGAvKh3YMalJ7F9OFfTLjYns404X1SM2BNQt1oT3sGllM4c+2/5/LZ/80LtYbepxqb7Jnk2xtvb3W2ztVbVfz2P271X9WqyLXc/mTW/ui34f1bIa+fRCOiJ3Unnh7aVW+RH3R8yXbAzE7Z+vOjfD0+g8P6NcRrr9xLoS+yLyHbe8NVI5E6qs9q/Tiy/MjO8dluffs8FxgPXNmXRb4PoTlY5RL5aLVGY0FzBm2N2bPZSsxwIC9fHS/7vGxuKj8zwE7zxnRNhJfCPY+vLpOpi0Trz2+Sr2xwPc7I9pYja5qw/jYB/i884CKX5m2bB1qUM+hWb+yZ6vqHseePdBukXUqTWi7SI1U+2wlbtn5Pa41Wrc9rmw8sNwe7cFYr1h53rac7Z30CM/ExMTExMT/hHdgxhmc"
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
      properties = {},
      objects = {
        {
          id = 117,
          name = "trigger",
          type = "",
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
            ["collidable"] = true,
            ["sensor"] = true,
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
          gid = 488,
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
          gid = 799,
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
          gid = 799,
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
        ["activatemusic"] = "12 - Typhoone Vol 2.vgm",
        ["activatesound"] = "alarm4.wav"
      },
      objects = {
        {
          id = 123,
          name = "trigger",
          type = "",
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
            ["collidable"] = true,
            ["sensor"] = true,
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
          gid = 2147484090,
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
          gid = 442,
          visible = true,
          properties = {
            ["script"] = "ShmupVehicle"
          }
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
          gid = 442,
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
          gid = 2147484090,
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
          gid = 503,
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
            ["script"] = "LinearPath"
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
            ["script"] = "LinearPath"
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
          gid = 467,
          visible = true,
          properties = {
            ["pathid"] = 114,
            ["pathtime"] = 0.5,
            ["script"] = "NPCInquisitor"
          }
        },
        {
          id = 135,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1264,
          width = 304,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          gid = 436,
          visible = true,
          properties = {
            ["cageid"] = 48,
            ["pathid"] = 60,
            ["pathtime"] = 60,
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
          gid = 429,
          visible = true,
          properties = {
            ["pathid"] = 113,
            ["pathtime"] = 1,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 50,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1296,
          width = 304,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          gid = 569,
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
            ["script"] = "LinearPath"
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
            ["script"] = "LinearPath"
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
          gid = 436,
          visible = true,
          properties = {
            ["cageid"] = 42,
            ["pathid"] = 60,
            ["pathtime"] = 60,
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
          gid = 429,
          visible = true,
          properties = {
            ["pathid"] = 112,
            ["pathtime"] = 1,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 51,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1696,
          width = 304,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          gid = 485,
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
            ["script"] = "LinearPath"
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
          gid = 485,
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
            ["script"] = "LinearPath"
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
            ["script"] = "LinearPath"
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
          gid = 838,
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
          gid = 836,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 174,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1808,
          width = 304,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          gid = 836,
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
          gid = 838,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 173,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1888,
          width = 304,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          gid = 836,
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
          gid = 838,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 172,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1952,
          width = 304,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          gid = 838,
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
          gid = 836,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 171,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 2016,
          width = 304,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          gid = 436,
          visible = true,
          properties = {
            ["cageid"] = 36,
            ["pathid"] = 60,
            ["pathtime"] = 60,
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
          gid = 429,
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
          gid = 467,
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
          gid = 503,
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
            ["script"] = "LinearPath"
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
            ["script"] = "LinearPath"
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
            ["script"] = "LinearPath"
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
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 2448,
          width = 304,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 2576,
          width = 304,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          gid = 436,
          visible = true,
          properties = {
            ["cageid"] = 33,
            ["pathid"] = 60,
            ["pathtime"] = 60,
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
          gid = 429,
          visible = true,
          properties = {
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 53,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 2704,
          width = 304,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          gid = 554,
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
            ["script"] = "LinearPath"
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          gid = 479,
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
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 2784,
          width = 304,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
            ["script"] = "LinearPath"
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
            ["script"] = "LinearPath"
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
          gid = 482,
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
          gid = 482,
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
          gid = 837,
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
          gid = 837,
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
          gid = 837,
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
          gid = 837,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 182,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 2896,
          width = 304,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          type = "",
          shape = "rectangle",
          x = 32,
          y = 2880,
          width = 240,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["pathid"] = 6,
            ["pathtime"] = 90,
            ["script"] = "ShmupCam",
            ["sensor"] = true
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
            ["script"] = "LinearPath"
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
    },
    {
      type = "objectgroup",
      name = "hud",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {
        ["scoreid"] = 7,
        ["script"] = "ShmupStatus"
      },
      objects = {
        {
          id = 7,
          name = "score",
          type = "",
          shape = "rectangle",
          x = 4,
          y = 4,
          width = 232,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ShmupScore",
            ["text"] = "SC00000000 EX01000000",
            ["textalign"] = "left",
            ["textfont"] = "pressstart2p.fnt",
            ["textformat"] = "SC%8d EX%8d"
          }
        },
        {
          id = 8,
          name = "life1",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 409,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "life2",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 409,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "life3",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 409,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "life4",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 409,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "life5",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 409,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "life6",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 409,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "life7",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 409,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "life8",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 409,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "life9",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 409,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "bomb1",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 320,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 413,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 18,
          name = "bomb2",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 320,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 413,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 19,
          name = "bomb3",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 320,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 413,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 20,
          name = "wingleft",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 411,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "wingright",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 412,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "reserves",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 36,
          width = 16,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["text"] = "0",
            ["textalign"] = "center",
            ["textfont"] = "pressstart2p.fnt"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pausemenu",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PauseMenu"
      },
      objects = {
        {
          id = 23,
          name = "pause",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 32,
          width = 208,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["text"] = "Paused",
            ["textalign"] = "center",
            ["textfont"] = "pressstart2p.fnt"
          }
        },
        {
          id = 24,
          name = "resume",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 112,
          width = 144,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ButtonResume",
            ["text"] = "RESUME",
            ["textalign"] = "center",
            ["textfont"] = "pressstart2p.fnt"
          }
        },
        {
          id = 25,
          name = "restart",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 160,
          width = 144,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ButtonRestart",
            ["text"] = "RESTART",
            ["textalign"] = "center",
            ["textfont"] = "pressstart2p.fnt"
          }
        },
        {
          id = 26,
          name = "title",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 208,
          width = 144,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ButtonTitle",
            ["text"] = "TITLE",
            ["textalign"] = "center",
            ["textfont"] = "pressstart2p.fnt"
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
    },
    {
      type = "objectgroup",
      name = "touchcontrols",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "ShmupTouchControls"
      },
      objects = {
        {
          id = 183,
          name = "move",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 979,
          visible = true,
          properties = {}
        },
        {
          id = 184,
          name = "focus",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 980,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
