return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.17.0",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 19,
  height = 200,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 117,
  properties = {
    ["cameraid"] = 1,
    ["music"] = "20 - My Kingdom.vgm",
    ["playerid"] = 2,
    ["script"] = "ShmupMap"
  },
  tilesets = {
    {
      name = "imp",
      firstgid = 1,
      filename = "imp.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "imp.png",
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
              tileid = "0",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            },
            {
              tileid = "2",
              duration = "125"
            }
          }
        }
      }
    },
    {
      name = "demonshots",
      firstgid = 4,
      filename = "demonshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "demonshots.png",
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
      name = "map_cave",
      firstgid = 8,
      filename = "map_cave.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "map_cave.png",
      imagewidth = 256,
      imageheight = 336,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
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
          name = "abovelava",
          tile = 226,
          properties = {}
        }
      },
      tilecount = 336,
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
        },
        {
          id = 304,
          animation = {
            {
              tileid = "304",
              duration = "100"
            },
            {
              tileid = "306",
              duration = "100"
            },
            {
              tileid = "308",
              duration = "100"
            },
            {
              tileid = "306",
              duration = "100"
            }
          }
        },
        {
          id = 305,
          animation = {
            {
              tileid = "305",
              duration = "100"
            },
            {
              tileid = "307",
              duration = "100"
            },
            {
              tileid = "309",
              duration = "100"
            },
            {
              tileid = "307",
              duration = "100"
            }
          }
        },
        {
          id = 320,
          animation = {
            {
              tileid = "320",
              duration = "100"
            },
            {
              tileid = "322",
              duration = "100"
            },
            {
              tileid = "324",
              duration = "100"
            },
            {
              tileid = "322",
              duration = "100"
            }
          }
        },
        {
          id = 321,
          animation = {
            {
              tileid = "321",
              duration = "100"
            },
            {
              tileid = "323",
              duration = "100"
            },
            {
              tileid = "325",
              duration = "100"
            },
            {
              tileid = "323",
              duration = "100"
            }
          }
        }
      }
    },
    {
      name = "hud_icons",
      firstgid = 344,
      filename = "hud_icons.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "hud_icons.png",
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
      firstgid = 348,
      filename = "bombgauge.tsx",
      tilewidth = 16,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "bombgauge.png",
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
              tileid = "8",
              duration = "100"
            },
            {
              tileid = "9",
              duration = "100"
            },
            {
              tileid = "10",
              duration = "100"
            },
            {
              tileid = "11",
              duration = "100"
            },
            {
              tileid = "12",
              duration = "100"
            },
            {
              tileid = "13",
              duration = "100"
            },
            {
              tileid = "14",
              duration = "100"
            },
            {
              tileid = "15",
              duration = "100"
            }
          }
        }
      }
    },
    {
      name = "cage",
      firstgid = 364,
      filename = "cage.tsx",
      tilewidth = 32,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "cage.png",
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
      firstgid = 365,
      filename = "mermaid.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "mermaid.png",
      imagewidth = 72,
      imageheight = 128,
      tileoffset = {
        x = -12,
        y = 16
      },
      properties = {
        ["commonanimation"] = 0,
        ["commoncollision"] = 0
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
              tileid = "0",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            },
            {
              tileid = "2",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            }
          }
        }
      }
    },
    {
      name = "darkboat",
      firstgid = 377,
      filename = "darkboat.tsx",
      tilewidth = 128,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "darkboat.png",
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
      firstgid = 378,
      filename = "infmen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "infmen.png",
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
              tileid = "0",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            },
            {
              tileid = "2",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            }
          }
        }
      }
    },
    {
      name = "infwomen",
      firstgid = 468,
      filename = "infwomen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "infwomen.png",
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
              tileid = "0",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            },
            {
              tileid = "2",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            }
          }
        }
      }
    },
    {
      name = "humanshots",
      firstgid = 543,
      filename = "humanshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "humanshots.png",
      imagewidth = 32,
      imageheight = 96,
      tileoffset = {
        x = -24,
        y = 8
      },
      properties = {
        ["commoncollision"] = 0,
        ["row_arrow"] = 2,
        ["row_ballista"] = 4,
        ["row_magic"] = 3,
        ["row_pike"] = 0,
        ["row_sword"] = 1,
        ["row_water"] = 5
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
        }
      }
    },
    {
      name = "electricity",
      firstgid = 549,
      filename = "electricity.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "electricity.png",
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
              tileid = "0",
              duration = "67"
            },
            {
              tileid = "1",
              duration = "67"
            }
          }
        }
      }
    },
    {
      name = "demonizing",
      firstgid = 581,
      filename = "demonizing.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "demonizing.png",
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
              tileid = "0",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            },
            {
              tileid = "0",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            },
            {
              tileid = "0",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            },
            {
              tileid = "0",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            },
            {
              tileid = "2",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            },
            {
              tileid = "2",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            },
            {
              tileid = "2",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            },
            {
              tileid = "2",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            }
          }
        }
      }
    },
    {
      name = "demonwomen",
      firstgid = 584,
      filename = "demonwomen.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "demonwomen.png",
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
              tileid = "0",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            },
            {
              tileid = "2",
              duration = "125"
            }
          }
        }
      }
    }
  },
  layers = {
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
      data = "eJztm82OG0UQxyu3wA242NyDgDso8ARBwJ3PhDsf5riWpcDRliXgOCNbsMeZR9mX2M2S+zrJAyRM2/WbLrd6uns2e0HaQ2m84+n//Ku6uz66vPdE5L1O7pnr55180cmXhfe5ftTJx8H1206+6+T7wvtca5HTthOuTXfvx05+6uTnTqrDM9IG92sd06i0AdbyMPYUcfc33b0Tc3/dfd520gTP1fpMbe5Vnh/vO13pc41iO7yN3nPfzQ/Yjns/Fs7uvUv9rjHfO34rw2mteq3UBvBa6NjKjD9RfXaGF+L+nuuYubfrftxn3ecPCuWB0Qf7VPo+h/NhJ58WyvsR3Eb/HoMzhPvgNTBimDeFdSu3ciu3UiJv3iDWJzeEd1cOcc7hvXFNzLs69n4n007O5BD3SjEZD8ZcMeaK42JlYzBTeBM55AXE77WKw1jovTP923F9N8HJcdnqezf6PHxq/VzrM9MBbuDUqsNGfA60VJnrPc1z9s9sI9zQjefdczt999zorLnMHkNzjijWVm2xVAzyGOw3U86N4Rvj5eLpA7XvXDnM9Hl0PdF3rfU+8xmz/0T10vxrj7XTcQvDE9xKsWNYcKv0nWAxF634dXai36Vyn4l591LxyA1Z+zu9NgOcLNZMddIcsF8njdGTNZjD2ga2nyqXueq2NN+nsKzN2IczMx+V+D2Z2kOWW2u4sAcXqtdW9S7JOSeKgV02Zh52ileau6In63umwt5eF+gWwwPD1AzFnIb4VeL3d8pnpfztRPwemGU44WuG3gW3EntPdL5Tvps8P4WDL8UHj5mbGCfW9+4GsPBtdUbPEixqP/bFdbjZuOP0xGddhxvrZi5+D+NbxuDBCT+Oz12pzAt1BWeqNoeP3XOle3eiY/FrxOFGPxMfc1hwIs7gI2fi842qUMeJ8ofPWrwfIZfZSdm6RT/GoCvxhlhfoiPxait+75CHLBRrIWVrFv9xppyw04nyOtN3jPXl5AlT8fGcORmzj+y5A1zgc90zDXtG8rrnIrfy/xDqmpuo1dw+HaozSoUcAT+5vQaerffAwQ8M5eFDOPfFx2DnA4jtnH2WcpuIz9kaHXsi3r9RT+Tw4ISfdVhL8XXkWrzPStkOHHwQeTQ1Ark+MZ4c3eF91cnXKt8ozkafwWc34uts6kXiM7H1RSdv3RF5W+WdTp7Lcf7NZ+pK/Ddxh7zmWSdPA7kSX2tuDBfiwc58x9w6TnInjkVdRj1LTN+Jr9Pw5UOcnLyUg5476XsCR+cA2Hqm7xjiZLltxa8l1iZYxNYmwcliYXvOOYjlzAMxbAjrvJMnxv5T8fHc1mfE+5R+L/U7sBjDfoQfdTyc4DCkI3Yhx9N6eN9raLXf8CzgMIRFTsZ60ryj74W4678JPhbLcWIvmTOOnlOt/Z8YHjq76+WByym+irVKT4f+UKu9nHAurd2r4HnjI456TfRoYusCTtbGZnzfm6L+ppc0tK81D+vta/j1+4hzhllijen89fbdKi5YrFvOdYZw0K8NsFbefvJKDvues52h/XMlvZ876hXSh2vMHIGZsvnS6Iif2fh3ROd9YG2e4oNtz5AzknZAnyEs5ow+ZqufqW9yOHZNIUvDDZ1LsK7MOObPYtT+O7mQ9F5mTTVm/sC1e6ZKzF0YK8I9aPicvtB1kPJTMdu3AVboB84zulpu4Vq1++RC58mtk5QfBA8d3VoL9xt7HvuW4DUBH3Qz89Bj5vBeRWz8Uo58hp3fqP9KrecnER2x6Rgs1kJMxzaj55AM6ViP5PZUjve78yeaFw/6/DG8ONcvyXdiWNb2NtcYazNrI6ejw9qY6xhuVkf6RpzXzEZgnRvbEwvoozi8XK5p/cKl+N+L1OJzRmqbHCf890yfr3XPU7vQH1plsMAhBpHLkReS320zWCZv6vte5Cb0FqhjUrmAE/JC5ofzp0p8TcKZZV3AaWWen+pne6ZFbyGVl5M3kddjF3JOzmKpHXL6tead5PngkXPSA8nptxXfw6F+pF6glqwyWFdmjO1xnKguc2O/RUI/OGEfzlmtTcCnRk5x4vwQX9IE7wZrqe9JYZFrsY7AYU9S3+oeSGJxfrsLcC71b/q3m4StwFrqMzY+2niJr0qtT8akcqJz1fssw8nipXjHcoycz3oSuXcp8dxgLDfNQ4sxcj6xNCdPieNELzqX+5Zwoh5y++s6eQicbD1EL3osHpxsPUQf2u3XMTHacQrrIVMvFXOztaSth4g7+PrS+Bqrh54bvEUBFucAsXrI1qGpWBaugVg9ZPdGaj+BE6uHqN3HzP9QPcRaHbO2Y/WQ9jf3WLk1QP24CGzOfNlz0Nya4mxwabixHojdnJfk6gJqZM5n4IWODk+/6/PVTPw5+t1wWFPYs6FULUXMKNUxVzdeeT2KdEzVZrYGTelo66EcN3gM7cewHkrNQantbb0diwHhOUXK9syRW8dDZwL2XC5ne7jyO6VQX/QssT21KOevsXNRe+YR2t76IVs/Dvn/Kxn2hWA14n+rTx4V87Nwoxfg3klObe1uf6NGbjt0zkpdSN9D8+BTdFqLPxslv45hWW68l1qkVt3AoQbI5ZwL8Xk1NTE1x0x8f6ykf0IPjr4LtR85fq4eCtZtrwuxmvqxlnRvKMSydQY2Yk75rUuuDwPWVI5/w7kS30OpJJ3vkKsS54hB2G0lxz2wMDaFebOta+kt2XqRuq0VXz+BZ/NmcOi9ICvxdQK/e5qK/33fVPEujNg8sBJ/7s/fZ+LzYPYN+2AlvofHezmPtnPGem0MDusMDGtDnuEz49pgPPu0DcZVZhw+chng1GY8z1tbMrYO/p7LMa8meL/NfzhXWMmRT+l9J+NX4n8b05jvHMaZse1UfG+FM3931X51n3PZOZvr9Tcjfys2PRHyYeIXvQn27z/B+L+MPFY81WXPgX6StcVacX4Pxofy2PBrpP+/rD5fcnglOMgv0u/To15CqzHh10Icy83mu+SGYzhZbnbuONsaw8li0T+zcf+6WDae16+JxZpoDF4K64cEFvYmBrcJrIcJW8KrUW7E39TzOSwrKR1LsGzOVg1gOf3+6OTPAZsxj2Dh52NY+uz+3Q7vUYCJ7S2WXRMPdcwj5aR+tPcBlmPIK1wTvIt153zLf1GpTXU="
    },
    {
      type = "tilelayer",
      name = "electricity",
      x = 0,
      y = 0,
      width = 19,
      height = 200,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["script"] = "ElectricLayer"
      },
      encoding = "base64",
      compression = "zlib",
      data = "eJztWtmK20AQNPM3JohgTAjCLMbo//8pEeyQ3nJVX1rIixoGX6NSdU9fM/LlcsopXK7jcvkg42nG/O7H8HFuf8fdDPX59jnmfSzuE+bdCQYbds7EVNcgF8aN3ZPpofSs3Aux2bXKDh4P7xplS7V2ah2VzTx7eHb2dMv4RXYN1Bxv7ZV9ovWscM7YO+sLWX+L7qXizItBxqEaL5G/deNGfc76MONR4ePZOGO/rJ3t5yXgWuGwy463BTbw/H6/9uf4WkN2zFfSptvnXMRAWcZX/vj6K7geZXX0jLgobjiqOFMewOd3E2eXFWz1nVj78HoJTx7EJ7vcEKvL7TrefevetNs63v29i/UAXkds9hCcOjZbx3vsdGLyKnKLxczoeSUcVD6L9MQYVLUrwlM+FeVwhmc54fzN4YbrcHXuPe38GJrz5ObhWCwvd+/jw7HRfG9z6Tq0/aIaj360kjkq1vAVsRZxjfIbez8WKyzuM7Wd1R3VN3h+6MXc4tiF+WBUC6N1yOJEdvPsrbBU/1PhZHVUflXJ5awWd7Ew1x3prbC+dGvMVejHcDO5PPIH+xueZUw+H44PqHi8G8x5BuPlQqar4q3snJmn/Fn5ZoSj7s9wou89X6zo5+F52Kz+VNZsf/8a//ZAio9ab7zHlIXMjXKTnf8aX30aa0LGNmy/h3Hm6ZLNmQtco2I/m+dYD4I2quzXEM+Ozr5v7pm3kd8TK9lz1cw1M+9092msLlf32pMTi6kOFvqZ5VbRk+0XLFanHqv4q9ZQltOrPh/15/cCL3Ve0vEL7KmOxrWqPx3bL0Q/i1+NSZUTO2cdqhft5AnG6zvjuqqfxUFfiPTD/LaOdz/I+vq8ZmJi71ipFV5uqdpc9WEWO2tz5kPdGhb1RBU/2Mb7mlXXb4pdO5UbolqBPT+zf9b2uMfaHF4eN3tWZnsE1RvO79h+xs5BwbMMHOoM6CZ4Y15Ffk/hj0pYjDPd7YjWRvWb7Dsl0TowG3jCzmu9GtzBYrgRFp4/oA9kbY82U3plsRg3rz+IxPMN/N4TPAdGW8333v6KcWL1pdITPIRu1TqAWNUaboXZqlMDJiflS51ejtn9SK+Dr0f0Q1+v6qfOJz1OV/Kbt36K07SJp5/FUTa39ZHpx/IM08/Wtc3BQm7Iy+LsuqO9sA5b+08s1ofMz8hJ2X3WbPQXlr/UczR2HfMXyzuay4b9bbfZc7zbiPFSudD6sJfDPV7IaRdWr1QdY79Zv3uJOaquIi/2HwzPXmpNVKwzvGg9vPyDvop4mVhn3JQNKzmf7Y2Rl8LBPlvtRTO5dZ9j/6/pnTFFutl7PwUf5UuMV+SX2d5BxbHn2x4W8+msH1nxnuVWsSaeyoFHz0Cz/qQEfdRyq54bY55Q+a7KjeXpDjfl80ftdhQL/4dn8bpn9+wZxXf8/6sbA1bYGf4RPdFHOmtguaGPHHl+gtyO/M+NxVbnf24sBqr+gX0ixkLlOYWq2VWbqTPyW0NH1U9n+qWIF+u/snVO5bFKj+PhRT1OBm8+w8ycZ5xyyimnnHLK/5Q/q/Ceqw=="
    },
    {
      type = "objectgroup",
      name = "preboss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 55,
          name = "",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 160,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 377,
          visible = true,
          properties = {
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 56,
          name = "",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 160,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 377,
          visible = true,
          properties = {
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 57,
          name = "",
          type = "",
          shape = "rectangle",
          x = -80,
          y = 224,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 377,
          visible = true,
          properties = {
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 58,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 176,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 2147484025,
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
          x = 352,
          y = 240,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 2147484025,
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
          y = 1328,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 371,
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
          y = 1344,
          width = 32,
          height = 64,
          rotation = 0,
          gid = 364,
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
          y = 1264,
          width = 304,
          height = 80,
          rotation = 0,
          visible = false,
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
          x = 96,
          y = 1280,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["pathid"] = 116,
            ["pathtime"] = 1.5,
            ["script"] = "NPCInquisitor"
          }
        },
        {
          id = 102,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 1328,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 402,
          visible = true,
          properties = {
            ["pathid"] = 114,
            ["pathtime"] = 1.5,
            ["script"] = "NPCInquisitor"
          }
        },
        {
          id = 103,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1328,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {
            ["pathid"] = 115,
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
          y = 1344,
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
          id = 114,
          name = "",
          type = "",
          shape = "polyline",
          x = 32,
          y = 1328,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 48, y = 16 }
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
          x = 272,
          y = 1328,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -48, y = 16 }
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
          x = 96,
          y = 1280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 64, y = 0 }
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
          gid = 371,
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
          gid = 364,
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
          gid = 420,
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
          gid = 420,
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
          gid = 371,
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
          gid = 364,
          visible = true,
          properties = {
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
          height = 80,
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
          x = -32,
          y = 2304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 402,
          visible = true,
          properties = {
            ["pathid"] = 107,
            ["pathtime"] = 2,
            ["script"] = "NPCInquisitor"
          }
        },
        {
          id = 67,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 2304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {
            ["pathid"] = 108,
            ["pathtime"] = 2,
            ["script"] = "NPCInquisitor"
          }
        },
        {
          id = 107,
          name = "",
          type = "",
          shape = "polyline",
          x = -32,
          y = 2304,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 96, y = 48 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 108,
          name = "",
          type = "",
          shape = "polyline",
          x = 320,
          y = 2304,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -96, y = 48 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "mermaid1",
      visible = false,
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
          gid = 371,
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
          gid = 364,
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
          x = -64,
          y = 2672,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 489,
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
          x = -64,
          y = 2672,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 160, y = 48 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikes1",
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          gid = 414,
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
          visible = false,
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
          gid = 417,
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
          gid = 417,
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
            { x = -32, y = -176 },
            { x = -64, y = -256 },
            { x = -48, y = -464 },
            { x = 0, y = -736 },
            { x = 32, y = -880 },
            { x = -32, y = -992 },
            { x = -64, y = -1072 },
            { x = -48, y = -1152 },
            { x = -16, y = -1232 },
            { x = 0, y = -1344 },
            { x = 0, y = -1488 }
          },
          properties = {
            ["script"] = "LinearPath"
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
          y = 3168,
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
      data = "eJztzqsNgDAYhdF/FzYAj+E1APvvQpsgKqCCViDOSa79ciMAAAAAAAAAAAAAAAAAAP7l6NRZ08ZOrSFtifZv+dOZNkf7t+nu5LV8Kz+19J46X3q1TtnbK83c2F46FxnKDMo="
    },
    {
      type = "objectgroup",
      name = "camera",
      visible = false,
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
          gid = 344,
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
          gid = 344,
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
          gid = 344,
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
          gid = 344,
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
          gid = 344,
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
          gid = 344,
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
          gid = 344,
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
          gid = 344,
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
          gid = 344,
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
          gid = 348,
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
          gid = 348,
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
          gid = 348,
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
          gid = 346,
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
          gid = 347,
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
    }
  }
}
