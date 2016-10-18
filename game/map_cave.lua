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
      imageheight = 384,
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
          name = "Above Lava",
          tile = 226,
          properties = {}
        }
      },
      tilecount = 384,
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
              duration = "33"
            },
            {
              tileid = "306",
              duration = "33"
            },
            {
              tileid = "308",
              duration = "33"
            },
            {
              tileid = "306",
              duration = "33"
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
        },
        {
          id = 336,
          animation = {
            {
              tileid = "336",
              duration = "33"
            },
            {
              tileid = "338",
              duration = "33"
            },
            {
              tileid = "340",
              duration = "33"
            },
            {
              tileid = "342",
              duration = "33"
            }
          }
        },
        {
          id = 337,
          animation = {
            {
              tileid = "337",
              duration = "33"
            },
            {
              tileid = "339",
              duration = "33"
            },
            {
              tileid = "341",
              duration = "33"
            },
            {
              tileid = "343",
              duration = "33"
            }
          }
        },
        {
          id = 352,
          animation = {
            {
              tileid = "352",
              duration = "33"
            },
            {
              tileid = "354",
              duration = "33"
            },
            {
              tileid = "356",
              duration = "33"
            },
            {
              tileid = "358",
              duration = "33"
            }
          }
        },
        {
          id = 353,
          animation = {
            {
              tileid = "353",
              duration = "33"
            },
            {
              tileid = "355",
              duration = "33"
            },
            {
              tileid = "357",
              duration = "33"
            },
            {
              tileid = "359",
              duration = "33"
            }
          }
        },
        {
          id = 368,
          animation = {
            {
              tileid = "368",
              duration = "33"
            },
            {
              tileid = "370",
              duration = "33"
            },
            {
              tileid = "372",
              duration = "33"
            },
            {
              tileid = "374",
              duration = "33"
            }
          }
        },
        {
          id = 369,
          animation = {
            {
              tileid = "369",
              duration = "33"
            },
            {
              tileid = "371",
              duration = "33"
            },
            {
              tileid = "373",
              duration = "33"
            },
            {
              tileid = "375",
              duration = "33"
            }
          }
        }
      }
    },
    {
      name = "hud_icons",
      firstgid = 392,
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
      firstgid = 396,
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
      firstgid = 412,
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
      firstgid = 413,
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
      firstgid = 425,
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
      firstgid = 426,
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
      firstgid = 516,
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
      firstgid = 591,
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
      firstgid = 597,
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
      firstgid = 629,
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
      firstgid = 632,
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
      name = "lava",
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
      data = "eJztlEEOwyAMBJtfwQ/g/x9qD4k03W7aezUjIVAC9toYj+PxGOfYr7EwT8zjXHPMc+/Anms98W3HeuA8bfA8tVDHiu+7+Jz4P8MXdWSc1HlppJ5dbLcYR7G3jvcc5vcd4zrPnDD2Ff6YU87UlvebNvIs89JqgrmnTcY9j8+YVtht9UXfLQf0zzjzfKsN7qFv5r/F3u6IMfEuuG+UOd9Wzlnf7f3lt118M07mLd9XakhtbbQ63MXPPj7vZ4WNrKXUkTWSPjO3aTe1tvrIt7RiT6uD9v5T4w5/maNWp9lHqCX1/OpXd++B69YLspdmnbEG833dvRnaydy0/kDN2ePu7v9bD2v9ovWp64yIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiI/C9PT5R04A=="
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
      data = "eJztmkGy00YQhic7wgnsnAA4wQsngBuQDWGZbJ6zlOtVQZZWuSqwlMou8FK6QZIb+BIQYEOywMABSDR+/Xl+D9JIfnZVkqq36JItjf7p6Znp/rs1D75y7rtGHpzg+kMjP57oegp9rvX69/XKGpme6PqXu5ZruZb/ivzWyO9HYvxqOOtG/jwC0+O8ayRrZG54inmIvDOMcSO1yKSRZSMLe55ZG/+/aOSikVkjpf331421yQ1jaW0q089jTO06k9+0R4+5Pc/t99T+z+XZ0tqWpktt17npwzhyG8vY3nvSyHO7X5nO9D81Qd/arhfWbmnPN9bHs0YeC2Zp7xZ2pW90y+3dyu6/sHefGNYzwXwudprIu2CP7QrGzxFGjKfjXouuE7PZix6MNkzwSpFDcWI85umqOMi56PbTEThgsZ5OgTU1m58Ca2H2OgWWX6PZCbFOZS8/vs0J9SqOxHrYyC9mK4/1tJFHifbfm7S1OTccr9fUrm26PTSMzOY87hOd5mardYvNwPDtctMd//5UdDy3Z3Nr59tMpE/6iuNB4UJMoL1vVxnWwgX/WclzfG5p7W6b3LN7+NHKBb+qfnlt/bLmxnbvfiN3TW4Z3swF35m7/RhEDMPvg+F1uSNY4Kme7Gl0ZJzEqPstGG2CnuiyNqxxQpcheMS5iwN0aZORzfP6SByw1ma3b47AAcvP4/JEWPCaU2CxFk6BBY84ButGI2curKurYoED//N769tGbl4RB+4E/1wfiBfrw36EW9YH4I1c4MTsY/ycvwf3HoI3coFPs3e8fgsXYu6F3eubC/bz2nTCTpkLfsv3cai/2bjgGzO3zzUPWR/4RXQsRJ9DfVeMefsIjGv5f8nXJm1764Y872qjQl7ZtleJG+SCXfuZPuEqbXGGuEFO2uXzR26f8yyk3xt2ZV+SA2aCpeP3/o78kJybfj3GHekzNxz1DfSzEBtkLvi3NpvofrwjOtNPbVias1On6PMntwTzzO3zH3Ly0sZZJuZL5+3MBZ9Nbg+v1Zz+okc3+MqFvas1Dfw3cacvdsGjFqIL8WAjz3Ruu3QbuVATwFbKZacu+HLs14aFrah1wNvngpO5UE/ZuG7uRvxcurCWWJtgEVvZT13cbST2Jk8iv4EjZ4JNHOvCIqcYuxDPiVMa71mvXbGUtZ7LOxsXYvLG+mINT3rsTjswM7v38fLeygu279pHI7ElnIz15LE+G17zf7V06XyAdTUzncjf5jaWt428v+xnVZpuqTUKdy0ux7JXw3vZyOvL/rZYKV6K//Q4tK/tnU8BZ4tVJ8aH3Seh7VY2huO+Cs+oQaZ0Ym95DK8bNc4PZiv2X0onXaNWO1yx7tHprQvrNpXvML4stF/RPzq9dMEv9ulEXFgH22/XxJtGXpndh3BPbIUvqc1WxLmZ4WjMS2ExPvYr+1rX1xA+DFYpOKxV9TND+OfIBV+QB8xVIXMwc/uxM4VFnkBMXrjdOtvlFRrvU1j4kNjWa7nfN767bj93wMdoPlLY2IdgoRt1l6kLsVHWyeBcUOs9+EPiNLmIj89D+KP61UyuuqbY80PywTifiXOa2vzaULyU1OIf6wPx4Jk3BaswvEP1Y8yMk1hSCGbKv6Z0hN+PxXZDfEfbHH90Ib7xPam6wjx4rM+Cp9/LvG8Zgof9vQ9/K3i12+caec9YNQ4sDIvYjd0WLtQ4urDAmbnAnYkhr+0/39/83PbFXTjz1K7ohH+j5pvSSX02XHwiOs1dqOWR27RhKQcjdsAjX7sQa+HX1MbbsPBj+Gbi6yex94XM4bLDVmpv8JQHUPMmVjEnXTqRl2Bz5RP6nRLu2McLMxe+o34wm7+SZ1pnT80fPh5e/0ZsPhHdxgksnT/488wFns99cpAum6tO1OwmZlvmkdhNzOtbn+QAxEfsTxzCF1LjT3EwONJacPUdOFpfLREszeXivtG1zy9rzkHMj9uT3w7hhgsX8te29gs3rJ6eqhvCu4bw1T6Bd8V9HCtDuOEQDPZGn736cM7cl3H8qjh+Dw3lXikc48Hb/XMIn4tx7PvlCt9FzntI3Idbk2tR1yAPHPqdS79jUBNiHxKnh9S+0Ik6Tm76YC9iB+d8UrqpTn5snDuoDAu/6vtYJ7DA0XwIfuqx2Kv3XOBMbVjgmM/ZYZSSY9E2rlcqBvxq4na50I4r+/hotZJBnF51LgXj70Z8nH3vhq8p1lIlOMRqeBL2GpLzKc8m94+xhq5x9koXVun696Fym0LG5znEH4JlufIqtTZtja+shr3Tyb+vvy12J7k8tqpMeP+z2F+x8DtteJqDFoLVNUZqf11jJTZ6vd4YRpderL8u3ajBYDedR6nF7WqP+J023XScfgzoBg77kVphXy6q46xc4IPqJ8iFyEUnHfOAbsypv8INqWtrblXYPKS4PTbGV+RB350NwfP3ur4roJvm+zrGeF9xFrJrfYDX5gtjLDhfai+ofqLjF1i5C2d/+vYpHBpOHa85jZcpLHRTfq845Nwpnt+y73d5JPXMXHD6YmTsu8nJqE+QS9QDdcJHkrdO3P53Q6s1D9Ypk7EQqzm/Vbph/ASdVAdsxJxuBsyf2nzsQh2Smh91RJ6n1qlyAfYbddLc7X8Dg0e1cUVw4ErUfJk78rTMhXwU3lALJpxiLf0iuQscidrE2IV6J5jkmLkL3844Y0eezv+1CzyYnJDvarw/l34rq7XpnOl3JXCYYzDUhrThN+/V0fvUb+rovULeY85mEU4p79Nebcm7ZfR/6vb1qqL+C/Hd1IVy6asS38n7+BnzX7tntX2fwbbUKAqzMba2msq2z1k0Z8T9JyLPDZtzkzL/u3hTWFz2Or+I3tezo5yttrFsdbA8YKW2GHoO/LHoV5k+/MY2h5zf5qw2GMoRus7D9ummfBeOc5Uz5efR3B1zRprzx+jEeK+KVQhGeSQWa6ISvBTWowQW9iYG1wmshwlboldlulGDS7Xvw1JJjXEIlnK2ogOLs9JdZ8SZR7DI99uwOJft+9bz2rHtFUvXBOe/OQNufnTnA1THWK94TdAX6877ln8ARNo9Fg=="
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
      data = "eJztWmuL2zAQDPqXoZgSQikmHCH4/0NrONG9ycy+fNAvXhB5yePZ1b4k53I55RQu13G5fJDxNGN+92P4OLe/426G+nz7HPM+FvcJ8+4Egw07Z2Kqa5AL48buyfRQelbuhdjsWmUHj4d3jbKlWju1jspmnj08O3u6ZfwiuwZqjrf2yj7RelY4Z+yd9YWsv0X3UnHmxSDjUI2XyN+6caM+Z32Y8ajw8WycsV/WzvbzEnCtcNhlx9sCG3h+v1/7c3ytITvmK2nT7XMuYqAs4yt/fP0VXI+yOnpGXBQ3HFWcKQ/g87uJs8sKtvpOrH14vYQnD+KTXW6I1eV2He++dW/abR3v/t7FegCvIzZ7CE4dm63jPXY6MXkVucViZvS8Eg4qn0V6Ygyq2hXhKZ+KcjjDs5xw/uZww3W4Oveedn4MzXly83Aslpe79/Hh2Gi+t7l0Hdp+UY1HP1rJHBVr+IpYi7hG+Y29H4sVFveZ2s7qjuobPD/0Ym5x7MJ8MKqF0TpkcSK7efZWWKr/qXCyOiq/quRyVou7WJjrjvRWWF+6NeYq9GO4mVwe+YP9Dc8yJp8PxwdUPN4N5jyD8XIh01XxVnbOzFP+rHwzwlH3ZzjR954vVvTz8DxsVn8qa7a/f41/eyDFR6033mPKQuZGucnOf42vPo01IWMbtt/DOPN0yebMBa5RsZ/Nc6wHQRtV9muIZ0dn3zf3zNvI74mV7Llq5pqZd7r7NFaXq3vtyYnFVAcL/cxyq+jJ9gsWq1OPVfxVayjL6VWfj/rze4GXOi/p+AX2VEfjWtWfju0Xop/Fr8akyomdsw7Vi3byBOP1nXFd1c/ioC9E+mF+W8e7H2R9fV4zMbF3rNQKL7dUba76MIudtTnzoW4Ni3qiih9s433Nqus3xa6dyg1RrcCen9k/a3vcY20OL4+bPSuzPYLqDed3bD9j56DgWQYOdQZ0E7wxryK/p/BHJSzGme52RGuj+k32nZJoHZgNPGHntV4N7mAx3AgLzx/QB7K2R5spvbJYjJvXH0Ti+QZ+7wmeA6Ot5ntvf8U4sfpS6QkeQrdqHUCsag23wmzVqQGTk/KlTi/H7H6k18HXI/qhr1f1U+eTHqcr+c1bP8Vp2sTTz+Iom9v6yPRjeYbpZ+va5mAhN+RlcXbd0V5Yh639JxbrQ+Zn5KTsPms2+gvLX+o5GruO+YvlHc1lw/622+w53m3EeKlcaH3Yy+EeL+S0C6tXqo6x36zfvcQcVVeRF/sPhmcvtSYq1hletB5e/kFfRbxMrDNuyoaVnM/2xshL4WCfrfaimdy6z7H/1/TOmCLd7L2fgo/yJcYr8sts76Di2PNtD4v5dNaPrHjPcqtYE0/lwKNnoFl/UoI+arlVz40xT6h8V+XG8nSHm/L5o3Y7ioX/w7N43bN79oziO/7/1Y0BK+wM/4ie6COdNbDc0EeOPD9Bbkf+58Ziq/M/NxYDVf/APhFjofKcQtXsqs3UGfmtoaPqpzP9UsSL9V/ZOqfyWKXH8fCiHieDN59hZs4zTjnllFNOOeV/yh/lbxp5"
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
      objects = {}
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
          gid = 2147484073,
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
          gid = 425,
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
          gid = 425,
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
          gid = 2147484073,
          visible = true,
          properties = {
            ["script"] = "ShmupVehicle"
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
          y = 1328,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 419,
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
          gid = 412,
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
          x = 160,
          y = 1184,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 552,
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
          x = 48,
          y = 1264,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 450,
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
          y = 1264,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 486,
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
          x = 48,
          y = 1264,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 48, y = 48 }
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
          y = 1264,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -48, y = 48 }
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
          y = 1184,
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
          gid = 419,
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
          gid = 412,
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
          gid = 468,
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
          gid = 468,
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
          gid = 419,
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
          gid = 412,
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
          gid = 450,
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
          gid = 486,
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
          gid = 419,
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
          gid = 412,
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
          gid = 537,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 462,
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
          gid = 465,
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
          gid = 465,
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
          gid = 392,
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
          gid = 392,
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
          gid = 392,
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
          gid = 392,
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
          gid = 392,
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
          gid = 392,
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
          gid = 392,
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
          gid = 392,
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
          gid = 392,
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
          gid = 396,
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
          gid = 396,
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
          gid = 396,
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
          gid = 394,
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
          gid = 395,
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
