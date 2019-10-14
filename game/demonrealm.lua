return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.4",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 18,
  height = 170,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 768,
  nextobjectid = 570,
  properties = {
    ["cameraid"] = 1,
    ["music"] = "mus/demonrealm.vgm",
    ["nextmap"] = "village.lua",
    ["overlaymap"] = "gameplay.lua",
    ["playerid"] = 3
  },
  tilesets = {
    {
      name = "basic_terrain",
      firstgid = 1,
      filename = "img/basic_terrain.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 12,
      image = "img/basic_terrain.png",
      imagewidth = 192,
      imageheight = 512,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {
        {
          name = "Grass Light",
          tile = 49,
          properties = {}
        },
        {
          name = "Grass Dark",
          tile = 55,
          properties = {}
        },
        {
          name = "Pit",
          tile = 130,
          properties = {}
        },
        {
          name = "Dirt Light",
          tile = 157,
          properties = {}
        },
        {
          name = "Dirt Dark",
          tile = 160,
          properties = {}
        },
        {
          name = "Sand",
          tile = 163,
          properties = {}
        },
        {
          name = "Snow",
          tile = 58,
          properties = {}
        },
        {
          name = "Wheat",
          tile = 262,
          properties = {}
        },
        {
          name = "Medium Grass",
          tile = 254,
          properties = {}
        },
        {
          name = "Tall Grass",
          tile = 258,
          properties = {}
        },
        {
          name = "Weeds",
          tile = 326,
          properties = {}
        },
        {
          name = "Soil Horizontal",
          tile = 329,
          properties = {}
        },
        {
          name = "Soil Vertical",
          tile = 332,
          properties = {}
        }
      },
      tilecount = 384,
      tiles = {
        {
          id = 0,
          terrain = { 0, 0, 0, -1 }
        },
        {
          id = 1,
          terrain = { 0, 0, -1, -1 }
        },
        {
          id = 2,
          terrain = { 0, 0, -1, 0 }
        },
        {
          id = 3,
          terrain = { 0, 0, 0, -1 }
        },
        {
          id = 4,
          terrain = { 0, 0, -1, -1 }
        },
        {
          id = 5,
          terrain = { 0, 0, -1, 0 }
        },
        {
          id = 6,
          terrain = { 1, 1, 1, -1 }
        },
        {
          id = 7,
          terrain = { 1, 1, -1, -1 }
        },
        {
          id = 8,
          terrain = { 1, 1, -1, 1 }
        },
        {
          id = 9,
          terrain = { 6, 6, 6, -1 }
        },
        {
          id = 10,
          terrain = { 6, 6, -1, -1 }
        },
        {
          id = 11,
          terrain = { 6, 6, -1, 6 }
        },
        {
          id = 12,
          terrain = { 0, -1, 0, -1 }
        },
        {
          id = 14,
          terrain = { -1, 0, -1, 0 }
        },
        {
          id = 15,
          terrain = { 0, -1, 0, -1 }
        },
        {
          id = 17,
          terrain = { -1, 0, -1, 0 }
        },
        {
          id = 18,
          terrain = { 1, -1, 1, -1 }
        },
        {
          id = 20,
          terrain = { -1, 1, -1, 1 }
        },
        {
          id = 21,
          terrain = { 6, -1, 6, -1 }
        },
        {
          id = 23,
          terrain = { -1, 6, -1, 6 }
        },
        {
          id = 24,
          terrain = { 0, -1, 0, 0 }
        },
        {
          id = 25,
          terrain = { -1, -1, 0, 0 }
        },
        {
          id = 26,
          terrain = { -1, 0, 0, 0 }
        },
        {
          id = 27,
          terrain = { 0, -1, 0, 0 }
        },
        {
          id = 28,
          terrain = { -1, -1, 0, 0 }
        },
        {
          id = 29,
          terrain = { -1, 0, 0, 0 }
        },
        {
          id = 30,
          terrain = { 1, -1, 1, 1 }
        },
        {
          id = 31,
          terrain = { -1, -1, 1, 1 }
        },
        {
          id = 32,
          terrain = { -1, 1, 1, 1 }
        },
        {
          id = 33,
          terrain = { 6, -1, 6, 6 }
        },
        {
          id = 34,
          terrain = { -1, -1, 6, 6 }
        },
        {
          id = 35,
          terrain = { -1, 6, 6, 6 }
        },
        {
          id = 36,
          terrain = { -1, -1, -1, 0 }
        },
        {
          id = 37,
          terrain = { -1, -1, 0, 0 }
        },
        {
          id = 38,
          terrain = { -1, -1, 0, -1 }
        },
        {
          id = 39,
          terrain = { -1, -1, -1, 0 }
        },
        {
          id = 40,
          terrain = { -1, -1, 0, 0 }
        },
        {
          id = 41,
          terrain = { -1, -1, 0, -1 }
        },
        {
          id = 42,
          terrain = { -1, -1, -1, 1 }
        },
        {
          id = 43,
          terrain = { -1, -1, 1, 1 }
        },
        {
          id = 44,
          terrain = { -1, -1, 1, -1 }
        },
        {
          id = 45,
          terrain = { -1, -1, -1, 6 }
        },
        {
          id = 46,
          terrain = { -1, -1, 6, 6 }
        },
        {
          id = 47,
          terrain = { -1, -1, 6, -1 }
        },
        {
          id = 48,
          terrain = { -1, 0, -1, 0 }
        },
        {
          id = 49,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 50,
          terrain = { 0, -1, 0, -1 }
        },
        {
          id = 51,
          terrain = { -1, 0, -1, 0 }
        },
        {
          id = 52,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 53,
          terrain = { 0, -1, 0, -1 }
        },
        {
          id = 54,
          terrain = { -1, 1, -1, 1 }
        },
        {
          id = 55,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 56,
          terrain = { 1, -1, 1, -1 }
        },
        {
          id = 57,
          terrain = { -1, 6, -1, 6 }
        },
        {
          id = 58,
          terrain = { 6, 6, 6, 6 }
        },
        {
          id = 59,
          terrain = { 6, -1, 6, -1 }
        },
        {
          id = 60,
          terrain = { -1, 0, -1, -1 }
        },
        {
          id = 61,
          terrain = { 0, 0, -1, -1 }
        },
        {
          id = 62,
          terrain = { 0, -1, -1, -1 }
        },
        {
          id = 63,
          terrain = { -1, 0, -1, -1 }
        },
        {
          id = 64,
          terrain = { 0, 0, -1, -1 }
        },
        {
          id = 65,
          terrain = { 0, -1, -1, -1 }
        },
        {
          id = 66,
          terrain = { -1, 1, -1, -1 }
        },
        {
          id = 67,
          terrain = { 1, 1, -1, -1 }
        },
        {
          id = 68,
          terrain = { 1, -1, -1, -1 }
        },
        {
          id = 69,
          terrain = { -1, 6, -1, -1 }
        },
        {
          id = 70,
          terrain = { 6, 6, -1, -1 }
        },
        {
          id = 71,
          terrain = { 6, -1, -1, -1 }
        },
        {
          id = 72,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 73,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 74,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 75,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 77,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 78,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 79,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 80,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 81,
          terrain = { 6, 6, 6, 6 }
        },
        {
          id = 82,
          terrain = { 6, 6, 6, 6 }
        },
        {
          id = 83,
          terrain = { 6, 6, 6, 6 }
        },
        {
          id = 84,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 85,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 86,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 87,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 89,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 90,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 91,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 92,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 93,
          terrain = { 6, 6, 6, 6 }
        },
        {
          id = 94,
          terrain = { 6, 6, 6, 6 }
        },
        {
          id = 95,
          terrain = { 6, 6, 6, 6 }
        },
        {
          id = 108,
          terrain = { 3, 3, 3, -1 }
        },
        {
          id = 109,
          terrain = { 3, 3, -1, -1 }
        },
        {
          id = 110,
          terrain = { 3, 3, -1, 3 }
        },
        {
          id = 111,
          terrain = { 4, 4, 4, -1 }
        },
        {
          id = 112,
          terrain = { 4, 4, -1, -1 }
        },
        {
          id = 113,
          terrain = { 4, 4, -1, 4 }
        },
        {
          id = 114,
          terrain = { 5, 5, 5, -1 }
        },
        {
          id = 115,
          terrain = { 5, 5, -1, -1 }
        },
        {
          id = 116,
          terrain = { 5, 5, -1, 5 }
        },
        {
          id = 117,
          terrain = { 0, 0, 0, 2 }
        },
        {
          id = 118,
          terrain = { 0, 0, 2, 2 }
        },
        {
          id = 119,
          terrain = { 0, 0, 2, 0 }
        },
        {
          id = 120,
          terrain = { 3, -1, 3, -1 }
        },
        {
          id = 122,
          terrain = { -1, 3, -1, 3 }
        },
        {
          id = 123,
          terrain = { 4, -1, 4, -1 }
        },
        {
          id = 125,
          terrain = { -1, 4, -1, 4 }
        },
        {
          id = 126,
          terrain = { 5, -1, 5, -1 }
        },
        {
          id = 128,
          terrain = { -1, 5, -1, 5 }
        },
        {
          id = 129,
          terrain = { 0, 2, 0, 2 }
        },
        {
          id = 130,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 131,
          terrain = { 2, 0, 2, 0 }
        },
        {
          id = 132,
          terrain = { 3, -1, 3, 3 }
        },
        {
          id = 133,
          terrain = { -1, -1, 3, 3 }
        },
        {
          id = 134,
          terrain = { -1, 3, 3, 3 }
        },
        {
          id = 135,
          terrain = { 4, -1, 4, 4 }
        },
        {
          id = 136,
          terrain = { -1, -1, 4, 4 }
        },
        {
          id = 137,
          terrain = { -1, 4, 4, 4 }
        },
        {
          id = 138,
          terrain = { 5, -1, 5, 5 }
        },
        {
          id = 139,
          terrain = { -1, -1, 5, 5 }
        },
        {
          id = 140,
          terrain = { -1, 5, 5, 5 }
        },
        {
          id = 141,
          terrain = { 0, 2, 0, 0 }
        },
        {
          id = 142,
          terrain = { 2, 2, 0, 0 }
        },
        {
          id = 143,
          terrain = { 2, 0, 0, 0 }
        },
        {
          id = 144,
          terrain = { -1, -1, -1, 3 }
        },
        {
          id = 145,
          terrain = { -1, -1, 3, 3 }
        },
        {
          id = 146,
          terrain = { -1, -1, 3, -1 }
        },
        {
          id = 147,
          terrain = { -1, -1, -1, 4 }
        },
        {
          id = 148,
          terrain = { -1, -1, 4, 4 }
        },
        {
          id = 149,
          terrain = { -1, -1, 4, -1 }
        },
        {
          id = 150,
          terrain = { -1, -1, -1, 5 }
        },
        {
          id = 151,
          terrain = { -1, -1, 5, 5 }
        },
        {
          id = 152,
          terrain = { -1, -1, 5, -1 }
        },
        {
          id = 153,
          terrain = { 2, 2, 2, 0 }
        },
        {
          id = 154,
          terrain = { 2, 2, 0, 0 }
        },
        {
          id = 155,
          terrain = { 2, 2, 0, 2 }
        },
        {
          id = 156,
          terrain = { -1, 3, -1, 3 }
        },
        {
          id = 157,
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 158,
          terrain = { 3, -1, 3, -1 }
        },
        {
          id = 159,
          terrain = { -1, 4, -1, 4 }
        },
        {
          id = 160,
          terrain = { 4, 4, 4, 4 }
        },
        {
          id = 161,
          terrain = { 4, -1, 4, -1 }
        },
        {
          id = 162,
          terrain = { -1, 5, -1, 5 }
        },
        {
          id = 163,
          terrain = { 5, 5, 5, 5 }
        },
        {
          id = 164,
          terrain = { 5, -1, 5, -1 }
        },
        {
          id = 165,
          terrain = { 2, 0, 2, 0 }
        },
        {
          id = 166,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 167,
          terrain = { 0, 2, 0, 2 }
        },
        {
          id = 168,
          terrain = { -1, 3, -1, -1 }
        },
        {
          id = 169,
          terrain = { 3, 3, -1, -1 }
        },
        {
          id = 170,
          terrain = { 3, -1, -1, -1 }
        },
        {
          id = 171,
          terrain = { -1, 4, -1, -1 }
        },
        {
          id = 172,
          terrain = { 4, 4, -1, -1 }
        },
        {
          id = 173,
          terrain = { 4, -1, -1, -1 }
        },
        {
          id = 174,
          terrain = { -1, 5, -1, -1 }
        },
        {
          id = 175,
          terrain = { 5, 5, -1, -1 }
        },
        {
          id = 176,
          terrain = { 5, -1, -1, -1 }
        },
        {
          id = 177,
          terrain = { 2, 0, 2, 2 }
        },
        {
          id = 178,
          terrain = { 0, 0, 2, 2 }
        },
        {
          id = 179,
          terrain = { 0, 2, 2, 2 }
        },
        {
          id = 180,
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 181,
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 182,
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 183,
          terrain = { 4, 4, 4, 4 }
        },
        {
          id = 184,
          terrain = { 4, 4, 4, 4 }
        },
        {
          id = 185,
          terrain = { 4, 4, 4, 4 }
        },
        {
          id = 186,
          terrain = { 5, 5, 5, 5 }
        },
        {
          id = 187,
          terrain = { 5, 5, 5, 5 }
        },
        {
          id = 188,
          terrain = { 5, 5, 5, 5 }
        },
        {
          id = 192,
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 193,
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 194,
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 195,
          terrain = { 4, 4, 4, 4 }
        },
        {
          id = 196,
          terrain = { 4, 4, 4, 4 }
        },
        {
          id = 197,
          terrain = { 4, 4, 4, 4 }
        },
        {
          id = 198,
          terrain = { 5, 5, 5, 5 }
        },
        {
          id = 199,
          terrain = { 5, 5, 5, 5 }
        },
        {
          id = 200,
          terrain = { 5, 5, 5, 5 }
        },
        {
          id = 216,
          terrain = { 8, 8, -1, 8 }
        },
        {
          id = 217,
          terrain = { 8, 8, 8, -1 }
        },
        {
          id = 220,
          terrain = { 9, 9, -1, 9 }
        },
        {
          id = 221,
          terrain = { 9, 9, 9, -1 }
        },
        {
          id = 224,
          terrain = { 7, 7, -1, 7 }
        },
        {
          id = 225,
          terrain = { 7, 7, 7, -1 }
        },
        {
          id = 228,
          terrain = { -1, 8, 8, 8 }
        },
        {
          id = 229,
          terrain = { 8, -1, 8, 8 }
        },
        {
          id = 232,
          terrain = { -1, 9, 9, 9 }
        },
        {
          id = 233,
          terrain = { 9, -1, 9, 9 }
        },
        {
          id = 236,
          terrain = { -1, 7, 7, 7 }
        },
        {
          id = 237,
          terrain = { 7, -1, 7, 7 }
        },
        {
          id = 241,
          terrain = { -1, -1, -1, 8 }
        },
        {
          id = 242,
          terrain = { -1, -1, 8, 8 }
        },
        {
          id = 243,
          terrain = { -1, -1, 8, -1 }
        },
        {
          id = 245,
          terrain = { -1, -1, -1, 9 }
        },
        {
          id = 246,
          terrain = { -1, -1, 9, 9 }
        },
        {
          id = 247,
          terrain = { -1, -1, 9, -1 }
        },
        {
          id = 249,
          terrain = { -1, -1, -1, 7 }
        },
        {
          id = 250,
          terrain = { -1, -1, 7, 7 }
        },
        {
          id = 251,
          terrain = { -1, -1, 7, -1 }
        },
        {
          id = 253,
          terrain = { -1, 8, -1, 8 }
        },
        {
          id = 254,
          terrain = { 8, 8, 8, 8 }
        },
        {
          id = 255,
          terrain = { 8, -1, 8, -1 }
        },
        {
          id = 257,
          terrain = { -1, 9, -1, 9 }
        },
        {
          id = 258,
          terrain = { 9, 9, 9, 9 }
        },
        {
          id = 259,
          terrain = { 9, -1, 9, -1 }
        },
        {
          id = 261,
          terrain = { -1, 7, -1, 7 }
        },
        {
          id = 262,
          terrain = { 7, 7, 7, 7 }
        },
        {
          id = 263,
          terrain = { 7, -1, 7, -1 }
        },
        {
          id = 265,
          terrain = { -1, 8, -1, -1 }
        },
        {
          id = 266,
          terrain = { 8, 8, -1, -1 }
        },
        {
          id = 267,
          terrain = { 8, -1, -1, -1 }
        },
        {
          id = 269,
          terrain = { -1, 9, -1, -1 }
        },
        {
          id = 270,
          terrain = { 9, 9, -1, -1 }
        },
        {
          id = 271,
          terrain = { 9, -1, -1, -1 }
        },
        {
          id = 273,
          terrain = { -1, 7, -1, -1 }
        },
        {
          id = 274,
          terrain = { 7, 7, -1, -1 }
        },
        {
          id = 275,
          terrain = { 7, -1, -1, -1 }
        },
        {
          id = 276,
          terrain = { 8, 8, 8, 8 }
        },
        {
          id = 277,
          terrain = { 8, 8, 8, 8 }
        },
        {
          id = 280,
          terrain = { 9, 9, 9, 9 }
        },
        {
          id = 281,
          terrain = { 9, 9, 9, 9 }
        },
        {
          id = 284,
          terrain = { 7, 7, 7, 7 }
        },
        {
          id = 285,
          terrain = { 7, 7, 7, 7 }
        },
        {
          id = 288,
          terrain = { 10, -1, 10, 10 }
        },
        {
          id = 289,
          terrain = { -1, 10, 10, 10 }
        },
        {
          id = 293,
          terrain = { 11, 11, 11, 0 }
        },
        {
          id = 294,
          terrain = { 11, 11, 0, 11 }
        },
        {
          id = 296,
          terrain = { 12, 12, 12, 0 }
        },
        {
          id = 297,
          terrain = { 12, 12, 0, 12 }
        },
        {
          id = 300,
          terrain = { 10, 10, 10, -1 }
        },
        {
          id = 301,
          terrain = { 10, 10, -1, 10 }
        },
        {
          id = 305,
          terrain = { 11, 0, 11, 11 }
        },
        {
          id = 306,
          terrain = { 0, 11, 11, 11 }
        },
        {
          id = 308,
          terrain = { 12, 0, 12, 12 }
        },
        {
          id = 309,
          terrain = { 0, 12, 12, 12 }
        },
        {
          id = 313,
          terrain = { -1, -1, -1, 10 }
        },
        {
          id = 314,
          terrain = { -1, -1, 10, 10 }
        },
        {
          id = 315,
          terrain = { -1, -1, 10, -1 }
        },
        {
          id = 316,
          terrain = { 0, 0, 0, 11 }
        },
        {
          id = 317,
          terrain = { 0, 0, 11, 11 }
        },
        {
          id = 318,
          terrain = { 0, 0, 11, 0 }
        },
        {
          id = 319,
          terrain = { 0, 0, 0, 12 }
        },
        {
          id = 320,
          terrain = { 0, 0, 12, 12 }
        },
        {
          id = 321,
          terrain = { 0, 0, 12, 0 }
        },
        {
          id = 325,
          terrain = { -1, 10, -1, 10 }
        },
        {
          id = 326,
          terrain = { 10, 10, 10, 10 }
        },
        {
          id = 327,
          terrain = { 10, -1, 10, -1 }
        },
        {
          id = 328,
          terrain = { 0, 11, 0, 11 }
        },
        {
          id = 329,
          terrain = { 11, 11, 11, 11 }
        },
        {
          id = 330,
          terrain = { 11, 0, 11, 0 }
        },
        {
          id = 331,
          terrain = { 0, 12, 0, 12 }
        },
        {
          id = 332,
          terrain = { 12, 12, 12, 12 }
        },
        {
          id = 333,
          terrain = { 12, 0, 12, 0 }
        },
        {
          id = 337,
          terrain = { -1, 10, -1, -1 }
        },
        {
          id = 338,
          terrain = { 10, 10, -1, -1 }
        },
        {
          id = 339,
          terrain = { 10, -1, -1, -1 }
        },
        {
          id = 340,
          terrain = { 0, 11, 0, 0 }
        },
        {
          id = 341,
          terrain = { 11, 11, 0, 0 }
        },
        {
          id = 342,
          terrain = { 11, 0, 0, 0 }
        },
        {
          id = 343,
          terrain = { 0, 12, 0, 0 }
        },
        {
          id = 344,
          terrain = { 12, 12, 0, 0 }
        },
        {
          id = 345,
          terrain = { 12, 0, 0, 0 }
        },
        {
          id = 372,
          terrain = { 10, 10, 10, 10 }
        },
        {
          id = 373,
          terrain = { 10, 10, 10, 10 }
        }
      }
    },
    {
      name = "forest",
      firstgid = 385,
      filename = "img/forest.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "img/forest.png",
      imagewidth = 128,
      imageheight = 128,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 64,
      tiles = {
        {
          id = 37,
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
                id = 3,
                name = "",
                type = "EnemyCover",
                shape = "rectangle",
                x = 8,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 38,
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
                id = 3,
                name = "",
                type = "EnemyCover",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 8,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 41,
          type = "EnemyCover"
        },
        {
          id = 42,
          type = "EnemyCover"
        },
        {
          id = 45,
          type = "EnemyCover"
        },
        {
          id = 46,
          type = "EnemyCover"
        }
      }
    },
    {
      name = "bushes",
      firstgid = 449,
      filename = "img/bushes.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/bushes.png",
      imagewidth = 96,
      imageheight = 160,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      terrains = {},
      tilecount = 15,
      tiles = {}
    },
    {
      name = "trees",
      firstgid = 464,
      filename = "img/trees.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/trees.png",
      imagewidth = 192,
      imageheight = 64,
      tileoffset = {
        x = -32,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {
        ["commoncollision"] = 0
      },
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
                id = 1,
                name = "",
                type = "EnemyCover",
                shape = "ellipse",
                x = 12,
                y = 8,
                width = 40,
                height = 40,
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
      name = "trees_tall",
      firstgid = 467,
      filename = "img/trees_tall.tsx",
      tilewidth = 48,
      tileheight = 80,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/trees_tall.png",
      imagewidth = 144,
      imageheight = 80,
      tileoffset = {
        x = -24,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 48,
        height = 80
      },
      properties = {
        ["commoncollision"] = 1
      },
      terrains = {},
      tilecount = 3,
      tiles = {
        {
          id = 1,
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
                id = 2,
                name = "",
                type = "EnemyCover",
                shape = "ellipse",
                x = 8,
                y = 24,
                width = 32,
                height = 32,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 3,
                name = "",
                type = "EnemyCover",
                shape = "ellipse",
                x = 14,
                y = 12,
                width = 20,
                height = 20,
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
      name = "fire",
      firstgid = 470,
      filename = "img/fire.tsx",
      tilewidth = 96,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      columns = 5,
      image = "img/fire.png",
      imagewidth = 480,
      imageheight = 256,
      tileoffset = {
        x = -48,
        y = 24
      },
      grid = {
        orientation = "orthogonal",
        width = 96,
        height = 128
      },
      properties = {},
      terrains = {},
      tilecount = 10,
      tiles = {
        {
          id = 0,
          type = "Fire",
          properties = {
            ["name"] = "ground"
          },
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
                type = "CollisionEnemy",
                shape = "ellipse",
                x = 24,
                y = 36,
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
              tileid = 0,
              duration = 66
            },
            {
              tileid = 1,
              duration = 66
            },
            {
              tileid = 2,
              duration = 66
            },
            {
              tileid = 3,
              duration = 66
            },
            {
              tileid = 4,
              duration = 66
            }
          }
        },
        {
          id = 1,
          type = "Fire"
        },
        {
          id = 2,
          type = "Fire"
        },
        {
          id = 3,
          type = "Fire"
        },
        {
          id = 4,
          type = "Fire"
        },
        {
          id = 5,
          type = "Fire",
          properties = {
            ["name"] = "tree"
          },
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
                type = "CollisionEnemy",
                shape = "ellipse",
                x = 24,
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
              tileid = 5,
              duration = 66
            },
            {
              tileid = 6,
              duration = 66
            },
            {
              tileid = 7,
              duration = 66
            },
            {
              tileid = 8,
              duration = 66
            },
            {
              tileid = 9,
              duration = 66
            }
          }
        },
        {
          id = 6,
          type = "Fire"
        },
        {
          id = 7,
          type = "Fire"
        },
        {
          id = 8,
          type = "Fire"
        },
        {
          id = 9,
          type = "Fire"
        }
      }
    },
    {
      name = "catapult",
      firstgid = 480,
      filename = "img/catapult.tsx",
      tilewidth = 72,
      tileheight = 72,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "img/catapult.png",
      imagewidth = 576,
      imageheight = 216,
      tileoffset = {
        x = -36,
        y = 36
      },
      grid = {
        orientation = "orthogonal",
        width = 72,
        height = 72
      },
      properties = {
        ["colstype"] = "direction",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 8,
        ["row_attack"] = 1,
        ["row_fire"] = 2,
        ["row_move"] = 0,
        ["rowstype"] = "state"
      },
      terrains = {},
      tilecount = 24,
      tiles = {
        {
          id = 0,
          type = "Catapult",
          properties = {
            ["faceangle"] = 0,
            ["name"] = "e"
          },
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
                x = 16,
                y = 16,
                width = 40,
                height = 40,
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
              duration = 250
            }
          }
        },
        {
          id = 1,
          type = "Catapult",
          properties = {
            ["faceangle"] = 45,
            ["name"] = "se"
          }
        },
        {
          id = 2,
          type = "Catapult",
          properties = {
            ["faceangle"] = 90,
            ["name"] = "s"
          }
        },
        {
          id = 3,
          type = "Catapult",
          properties = {
            ["faceangle"] = 135,
            ["name"] = "sw"
          }
        },
        {
          id = 4,
          type = "Catapult",
          properties = {
            ["faceangle"] = 180,
            ["name"] = "w"
          }
        },
        {
          id = 5,
          type = "Catapult",
          properties = {
            ["faceangle"] = 225,
            ["name"] = "nw"
          }
        },
        {
          id = 6,
          type = "Catapult",
          properties = {
            ["faceangle"] = 270,
            ["name"] = "n"
          }
        },
        {
          id = 7,
          type = "Catapult",
          properties = {
            ["faceangle"] = 315,
            ["name"] = "ne"
          }
        },
        {
          id = 8,
          type = "Catapult",
          properties = {
            ["faceangle"] = 0,
            ["nextanim"] = "fire_e"
          }
        },
        {
          id = 9,
          type = "Catapult",
          properties = {
            ["faceangle"] = 45,
            ["nextanim"] = "fire_se"
          }
        },
        {
          id = 10,
          type = "Catapult",
          properties = {
            ["faceangle"] = 90,
            ["nextanim"] = "fire_s"
          }
        },
        {
          id = 11,
          type = "Catapult",
          properties = {
            ["faceangle"] = 135,
            ["nextanim"] = "fire_sw"
          }
        },
        {
          id = 12,
          type = "Catapult",
          properties = {
            ["faceangle"] = 180,
            ["nextanim"] = "fire_w"
          }
        },
        {
          id = 13,
          type = "Catapult",
          properties = {
            ["faceangle"] = 225,
            ["nextanim"] = "fire_nw"
          }
        },
        {
          id = 14,
          type = "Catapult",
          properties = {
            ["faceangle"] = 270,
            ["nextanim"] = "fire_n"
          }
        },
        {
          id = 15,
          type = "Catapult",
          properties = {
            ["faceangle"] = 315,
            ["nextanim"] = "fire_ne"
          }
        },
        {
          id = 16,
          type = "Catapult",
          properties = {
            ["faceangle"] = 0,
            ["name"] = "fire_e",
            ["nextanim"] = "e"
          }
        },
        {
          id = 17,
          type = "Catapult",
          properties = {
            ["faceangle"] = 45,
            ["name"] = "fire_se",
            ["nextanim"] = "se"
          }
        },
        {
          id = 18,
          type = "Catapult",
          properties = {
            ["faceangle"] = 90,
            ["name"] = "fire_s",
            ["nextanim"] = "s"
          }
        },
        {
          id = 19,
          type = "Catapult",
          properties = {
            ["faceangle"] = 135,
            ["name"] = "fire_sw",
            ["nextanim"] = "sw"
          }
        },
        {
          id = 20,
          type = "Catapult",
          properties = {
            ["faceangle"] = 180,
            ["name"] = "fire_w",
            ["nextanim"] = "w"
          }
        },
        {
          id = 21,
          type = "Catapult",
          properties = {
            ["faceangle"] = 225,
            ["name"] = "fire_nw",
            ["nextanim"] = "nw"
          }
        },
        {
          id = 22,
          type = "Catapult",
          properties = {
            ["faceangle"] = 270,
            ["name"] = "fire_n",
            ["nextanim"] = "n"
          }
        },
        {
          id = 23,
          type = "Catapult",
          properties = {
            ["faceangle"] = 315,
            ["name"] = "fire_ne",
            ["nextanim"] = "ne"
          }
        }
      }
    },
    {
      name = "black_harpy",
      firstgid = 504,
      filename = "img/friend/black_harpy.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/black_harpy.png",
      imagewidth = 192,
      imageheight = 256,
      tileoffset = {
        x = -32,
        y = 32
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "Friend",
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
                x = 16,
                y = 16,
                width = 32,
                height = 32,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Friend"
        },
        {
          id = 2,
          type = "Friend"
        },
        {
          id = 3,
          type = "Friend"
        },
        {
          id = 4,
          type = "Friend"
        },
        {
          id = 5,
          type = "Friend"
        },
        {
          id = 6,
          type = "Friend"
        },
        {
          id = 7,
          type = "Friend"
        },
        {
          id = 8,
          type = "Friend"
        },
        {
          id = 9,
          type = "Friend"
        },
        {
          id = 10,
          type = "Friend"
        },
        {
          id = 11,
          type = "Friend"
        }
      }
    },
    {
      name = "devil_bug",
      firstgid = 516,
      filename = "img/friend/devil_bug.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/devil_bug.png",
      imagewidth = 96,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "Friend",
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
                x = 4,
                y = 4,
                width = 24,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Friend"
        },
        {
          id = 2,
          type = "Friend"
        },
        {
          id = 3,
          type = "Friend"
        },
        {
          id = 4,
          type = "Friend"
        },
        {
          id = 5,
          type = "Friend"
        },
        {
          id = 6,
          type = "Friend"
        },
        {
          id = 7,
          type = "Friend"
        },
        {
          id = 8,
          type = "Friend"
        },
        {
          id = 9,
          type = "Friend"
        },
        {
          id = 10,
          type = "Friend"
        },
        {
          id = 11,
          type = "Friend"
        }
      }
    },
    {
      name = "ghost",
      firstgid = 528,
      filename = "img/friend/ghost.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/ghost.png",
      imagewidth = 96,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "Friend",
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
                x = 4,
                y = 4,
                width = 24,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Friend"
        },
        {
          id = 2,
          type = "Friend"
        },
        {
          id = 3,
          type = "Friend"
        },
        {
          id = 4,
          type = "Friend"
        },
        {
          id = 5,
          type = "Friend"
        },
        {
          id = 6,
          type = "Friend"
        },
        {
          id = 7,
          type = "Friend"
        },
        {
          id = 8,
          type = "Friend"
        },
        {
          id = 9,
          type = "Friend"
        },
        {
          id = 10,
          type = "Friend"
        },
        {
          id = 11,
          type = "Friend"
        }
      }
    },
    {
      name = "goblin",
      firstgid = 540,
      filename = "img/friend/goblin.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/goblin.png",
      imagewidth = 96,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "Friend",
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
                x = 4,
                y = 4,
                width = 24,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Friend"
        },
        {
          id = 2,
          type = "Friend"
        },
        {
          id = 3,
          type = "Friend"
        },
        {
          id = 4,
          type = "Friend"
        },
        {
          id = 5,
          type = "Friend"
        },
        {
          id = 6,
          type = "Friend"
        },
        {
          id = 7,
          type = "Friend"
        },
        {
          id = 8,
          type = "Friend"
        },
        {
          id = 9,
          type = "Friend"
        },
        {
          id = 10,
          type = "Friend"
        },
        {
          id = 11,
          type = "Friend"
        }
      }
    },
    {
      name = "harpy",
      firstgid = 552,
      filename = "img/friend/harpy.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/harpy.png",
      imagewidth = 192,
      imageheight = 256,
      tileoffset = {
        x = -32,
        y = 32
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "Friend",
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
                x = 16,
                y = 16,
                width = 32,
                height = 32,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Friend"
        },
        {
          id = 2,
          type = "Friend"
        },
        {
          id = 3,
          type = "Friend"
        },
        {
          id = 4,
          type = "Friend"
        },
        {
          id = 5,
          type = "Friend"
        },
        {
          id = 6,
          type = "Friend"
        },
        {
          id = 7,
          type = "Friend"
        },
        {
          id = 8,
          type = "Friend"
        },
        {
          id = 9,
          type = "Friend"
        },
        {
          id = 10,
          type = "Friend"
        },
        {
          id = 11,
          type = "Friend"
        }
      }
    },
    {
      name = "holstaurus",
      firstgid = 564,
      filename = "img/friend/holstaurus.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/holstaurus.png",
      imagewidth = 96,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "Friend",
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
                x = 4,
                y = 4,
                width = 24,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Friend"
        },
        {
          id = 2,
          type = "Friend"
        },
        {
          id = 3,
          type = "Friend"
        },
        {
          id = 4,
          type = "Friend"
        },
        {
          id = 5,
          type = "Friend"
        },
        {
          id = 6,
          type = "Friend"
        },
        {
          id = 7,
          type = "Friend"
        },
        {
          id = 8,
          type = "Friend"
        },
        {
          id = 9,
          type = "Friend"
        },
        {
          id = 10,
          type = "Friend"
        },
        {
          id = 11,
          type = "Friend"
        }
      }
    },
    {
      name = "honey_bee",
      firstgid = 576,
      filename = "img/friend/honey_bee.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/honey_bee.png",
      imagewidth = 192,
      imageheight = 256,
      tileoffset = {
        x = -32,
        y = 32
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "Friend",
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
                x = 16,
                y = 16,
                width = 32,
                height = 32,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Friend"
        },
        {
          id = 2,
          type = "Friend"
        },
        {
          id = 3,
          type = "Friend"
        },
        {
          id = 4,
          type = "Friend"
        },
        {
          id = 5,
          type = "Friend"
        },
        {
          id = 6,
          type = "Friend"
        },
        {
          id = 7,
          type = "Friend"
        },
        {
          id = 8,
          type = "Friend"
        },
        {
          id = 9,
          type = "Friend"
        },
        {
          id = 10,
          type = "Friend"
        },
        {
          id = 11,
          type = "Friend"
        }
      }
    },
    {
      name = "siren",
      firstgid = 588,
      filename = "img/friend/siren.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/siren.png",
      imagewidth = 192,
      imageheight = 256,
      tileoffset = {
        x = -32,
        y = 32
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "Friend",
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
                x = 16,
                y = 16,
                width = 32,
                height = 32,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Friend"
        },
        {
          id = 2,
          type = "Friend"
        },
        {
          id = 3,
          type = "Friend"
        },
        {
          id = 4,
          type = "Friend"
        },
        {
          id = 5,
          type = "Friend"
        },
        {
          id = 6,
          type = "Friend"
        },
        {
          id = 7,
          type = "Friend"
        },
        {
          id = 8,
          type = "Friend"
        },
        {
          id = 9,
          type = "Friend"
        },
        {
          id = 10,
          type = "Friend"
        },
        {
          id = 11,
          type = "Friend"
        }
      }
    },
    {
      name = "werebat",
      firstgid = 600,
      filename = "img/friend/werebat.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/werebat.png",
      imagewidth = 192,
      imageheight = 256,
      tileoffset = {
        x = -32,
        y = 32
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "Friend",
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
                x = 16,
                y = 16,
                width = 32,
                height = 32,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Friend"
        },
        {
          id = 2,
          type = "Friend"
        },
        {
          id = 3,
          type = "Friend"
        },
        {
          id = 4,
          type = "Friend"
        },
        {
          id = 5,
          type = "Friend"
        },
        {
          id = 6,
          type = "Friend"
        },
        {
          id = 7,
          type = "Friend"
        },
        {
          id = 8,
          type = "Friend"
        },
        {
          id = 9,
          type = "Friend"
        },
        {
          id = 10,
          type = "Friend"
        },
        {
          id = 11,
          type = "Friend"
        }
      }
    },
    {
      name = "weresheep",
      firstgid = 612,
      filename = "img/friend/weresheep.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/weresheep.png",
      imagewidth = 96,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "Friend",
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
                x = 4,
                y = 4,
                width = 24,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Friend"
        },
        {
          id = 2,
          type = "Friend"
        },
        {
          id = 3,
          type = "Friend"
        },
        {
          id = 4,
          type = "Friend"
        },
        {
          id = 5,
          type = "Friend"
        },
        {
          id = 6,
          type = "Friend"
        },
        {
          id = 7,
          type = "Friend"
        },
        {
          id = 8,
          type = "Friend"
        },
        {
          id = 9,
          type = "Friend"
        },
        {
          id = 10,
          type = "Friend"
        },
        {
          id = 11,
          type = "Friend"
        }
      }
    },
    {
      name = "youko",
      firstgid = 624,
      filename = "img/friend/youko.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/youko.png",
      imagewidth = 96,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "Friend",
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
                x = 4,
                y = 4,
                width = 24,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Friend"
        },
        {
          id = 2,
          type = "Friend"
        },
        {
          id = 3,
          type = "Friend"
        },
        {
          id = 4,
          type = "Friend"
        },
        {
          id = 5,
          type = "Friend"
        },
        {
          id = 6,
          type = "Friend"
        },
        {
          id = 7,
          type = "Friend"
        },
        {
          id = 8,
          type = "Friend"
        },
        {
          id = 9,
          type = "Friend"
        },
        {
          id = 10,
          type = "Friend"
        },
        {
          id = 11,
          type = "Friend"
        }
      }
    },
    {
      name = "Archer",
      firstgid = 636,
      filename = "img/human/enemy/Archer.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "img/human/enemy/Archer.png",
      imagewidth = 192,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["column_move"] = 0,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 24,
      tiles = {
        {
          id = 0,
          type = "Archer",
          properties = {
            ["name"] = "east"
          },
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
                y = 8,
                width = 20,
                height = 20,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Archer"
        },
        {
          id = 2,
          type = "Archer"
        },
        {
          id = 3,
          type = "Archer",
          properties = {
            ["nextanim"] = "fire_east"
          },
          animation = {
            {
              tileid = 3,
              duration = 125
            },
            {
              tileid = 4,
              duration = 125
            }
          }
        },
        {
          id = 4,
          type = "Archer"
        },
        {
          id = 5,
          type = "Archer",
          properties = {
            ["name"] = "fire_east",
            ["nextanim"] = "east"
          },
          animation = {
            {
              tileid = 5,
              duration = 125
            }
          }
        },
        {
          id = 6,
          type = "Archer",
          properties = {
            ["name"] = "south"
          }
        },
        {
          id = 7,
          type = "Archer"
        },
        {
          id = 8,
          type = "Archer"
        },
        {
          id = 9,
          type = "Archer",
          properties = {
            ["nextanim"] = "fire_south"
          },
          animation = {
            {
              tileid = 9,
              duration = 125
            },
            {
              tileid = 10,
              duration = 125
            }
          }
        },
        {
          id = 10,
          type = "Archer"
        },
        {
          id = 11,
          type = "Archer",
          properties = {
            ["name"] = "fire_south",
            ["nextanim"] = "south"
          },
          animation = {
            {
              tileid = 11,
              duration = 125
            }
          }
        },
        {
          id = 12,
          type = "Archer",
          properties = {
            ["name"] = "west"
          }
        },
        {
          id = 13,
          type = "Archer"
        },
        {
          id = 14,
          type = "Archer"
        },
        {
          id = 15,
          type = "Archer",
          properties = {
            ["nextanim"] = "fire_west"
          },
          animation = {
            {
              tileid = 15,
              duration = 125
            },
            {
              tileid = 16,
              duration = 125
            }
          }
        },
        {
          id = 16,
          type = "Archer"
        },
        {
          id = 17,
          type = "Archer",
          properties = {
            ["name"] = "fire_west",
            ["nextanim"] = "west"
          },
          animation = {
            {
              tileid = 17,
              duration = 125
            }
          }
        },
        {
          id = 18,
          type = "Archer",
          properties = {
            ["name"] = "north"
          }
        },
        {
          id = 19,
          type = "Archer"
        },
        {
          id = 20,
          type = "Archer"
        },
        {
          id = 21,
          type = "Archer",
          properties = {
            ["nextanim"] = "fire_north"
          },
          animation = {
            {
              tileid = 21,
              duration = 125
            },
            {
              tileid = 22,
              duration = 125
            }
          }
        },
        {
          id = 22,
          type = "Archer"
        },
        {
          id = 23,
          type = "Archer",
          properties = {
            ["name"] = "fire_north",
            ["nextanim"] = "north"
          },
          animation = {
            {
              tileid = 23,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "CatapultOperator",
      firstgid = 660,
      filename = "img/human/enemy/CatapultOperator.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/human/enemy/CatapultOperator.png",
      imagewidth = 72,
      imageheight = 128,
      tileoffset = {
        x = -12,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 24,
        height = 32
      },
      properties = {
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "CatapultOperator",
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
                x = 2,
                y = 8,
                width = 20,
                height = 20,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "CatapultOperator"
        },
        {
          id = 2,
          type = "CatapultOperator"
        },
        {
          id = 3,
          type = "CatapultOperator"
        },
        {
          id = 4,
          type = "CatapultOperator"
        },
        {
          id = 5,
          type = "CatapultOperator"
        },
        {
          id = 6,
          type = "CatapultOperator"
        },
        {
          id = 7,
          type = "CatapultOperator"
        },
        {
          id = 8,
          type = "CatapultOperator"
        },
        {
          id = 9,
          type = "CatapultOperator"
        },
        {
          id = 10,
          type = "CatapultOperator"
        },
        {
          id = 11,
          type = "CatapultOperator"
        }
      }
    },
    {
      name = "PikemanF",
      firstgid = 672,
      filename = "img/human/enemy/PikemanF.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "img/human/enemy/PikemanF.png",
      imagewidth = 192,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["column_attack"] = 3,
        ["column_fire"] = 5,
        ["column_move"] = 0,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 24,
      tiles = {
        {
          id = 0,
          type = "Pikeman",
          properties = {
            ["name"] = "east"
          },
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
                y = 8,
                width = 20,
                height = 20,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Pikeman"
        },
        {
          id = 2,
          type = "Pikeman"
        },
        {
          id = 3,
          type = "Pikeman",
          properties = {
            ["nextanim"] = "fire_east"
          },
          animation = {
            {
              tileid = 3,
              duration = 125
            },
            {
              tileid = 4,
              duration = 125
            }
          }
        },
        {
          id = 4,
          type = "Pikeman"
        },
        {
          id = 5,
          type = "Pikeman",
          properties = {
            ["name"] = "fire_east",
            ["nextanim"] = "east"
          },
          animation = {
            {
              tileid = 5,
              duration = 125
            }
          }
        },
        {
          id = 6,
          type = "Pikeman",
          properties = {
            ["name"] = "south"
          }
        },
        {
          id = 7,
          type = "Pikeman"
        },
        {
          id = 8,
          type = "Pikeman"
        },
        {
          id = 9,
          type = "Pikeman",
          properties = {
            ["nextanim"] = "fire_south"
          },
          animation = {
            {
              tileid = 9,
              duration = 125
            },
            {
              tileid = 10,
              duration = 125
            }
          }
        },
        {
          id = 10,
          type = "Pikeman"
        },
        {
          id = 11,
          type = "Pikeman",
          properties = {
            ["name"] = "fire_south",
            ["nextanim"] = "south"
          },
          animation = {
            {
              tileid = 11,
              duration = 125
            }
          }
        },
        {
          id = 12,
          type = "Pikeman",
          properties = {
            ["name"] = "west"
          }
        },
        {
          id = 13,
          type = "Pikeman"
        },
        {
          id = 14,
          type = "Pikeman"
        },
        {
          id = 15,
          type = "Pikeman",
          properties = {
            ["nextanim"] = "fire_west"
          },
          animation = {
            {
              tileid = 15,
              duration = 125
            },
            {
              tileid = 16,
              duration = 125
            }
          }
        },
        {
          id = 16,
          type = "Pikeman"
        },
        {
          id = 17,
          type = "Pikeman",
          properties = {
            ["name"] = "fire_west",
            ["nextanim"] = "west"
          },
          animation = {
            {
              tileid = 17,
              duration = 125
            }
          }
        },
        {
          id = 18,
          type = "Pikeman",
          properties = {
            ["name"] = "north"
          }
        },
        {
          id = 19,
          type = "Pikeman"
        },
        {
          id = 20,
          type = "Pikeman"
        },
        {
          id = 21,
          type = "Pikeman",
          properties = {
            ["nextanim"] = "fire_north"
          },
          animation = {
            {
              tileid = 21,
              duration = 125
            },
            {
              tileid = 22,
              duration = 125
            }
          }
        },
        {
          id = 22,
          type = "Pikeman"
        },
        {
          id = 23,
          type = "Pikeman",
          properties = {
            ["name"] = "fire_north",
            ["nextanim"] = "north"
          },
          animation = {
            {
              tileid = 23,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "Pikeman",
      firstgid = 696,
      filename = "img/human/enemy/Pikeman.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "img/human/enemy/Pikeman.png",
      imagewidth = 192,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["column_attack"] = 3,
        ["column_fire"] = 5,
        ["column_move"] = 0,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 24,
      tiles = {
        {
          id = 0,
          type = "Pikeman",
          properties = {
            ["name"] = "east"
          },
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
                y = 8,
                width = 20,
                height = 20,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Pikeman"
        },
        {
          id = 2,
          type = "Pikeman"
        },
        {
          id = 3,
          type = "Pikeman",
          properties = {
            ["nextanim"] = "fire_east"
          },
          animation = {
            {
              tileid = 3,
              duration = 125
            },
            {
              tileid = 4,
              duration = 125
            }
          }
        },
        {
          id = 4,
          type = "Pikeman"
        },
        {
          id = 5,
          type = "Pikeman",
          properties = {
            ["name"] = "fire_east",
            ["nextanim"] = "east"
          },
          animation = {
            {
              tileid = 5,
              duration = 125
            }
          }
        },
        {
          id = 6,
          type = "Pikeman",
          properties = {
            ["name"] = "south"
          }
        },
        {
          id = 7,
          type = "Pikeman"
        },
        {
          id = 8,
          type = "Pikeman"
        },
        {
          id = 9,
          type = "Pikeman",
          properties = {
            ["nextanim"] = "fire_south"
          },
          animation = {
            {
              tileid = 9,
              duration = 125
            },
            {
              tileid = 10,
              duration = 125
            }
          }
        },
        {
          id = 10,
          type = "Pikeman"
        },
        {
          id = 11,
          type = "Pikeman",
          properties = {
            ["name"] = "fire_south",
            ["nextanim"] = "south"
          },
          animation = {
            {
              tileid = 11,
              duration = 125
            }
          }
        },
        {
          id = 12,
          type = "Pikeman",
          properties = {
            ["name"] = "west"
          }
        },
        {
          id = 13,
          type = "Pikeman"
        },
        {
          id = 14,
          type = "Pikeman"
        },
        {
          id = 15,
          type = "Pikeman",
          properties = {
            ["nextanim"] = "fire_west"
          },
          animation = {
            {
              tileid = 15,
              duration = 125
            },
            {
              tileid = 16,
              duration = 125
            }
          }
        },
        {
          id = 16,
          type = "Pikeman"
        },
        {
          id = 17,
          type = "Pikeman",
          properties = {
            ["name"] = "fire_west",
            ["nextanim"] = "west"
          },
          animation = {
            {
              tileid = 17,
              duration = 125
            }
          }
        },
        {
          id = 18,
          type = "Pikeman",
          properties = {
            ["name"] = "north"
          }
        },
        {
          id = 19,
          type = "Pikeman"
        },
        {
          id = 20,
          type = "Pikeman"
        },
        {
          id = 21,
          type = "Pikeman",
          properties = {
            ["nextanim"] = "fire_north"
          },
          animation = {
            {
              tileid = 21,
              duration = 125
            },
            {
              tileid = 22,
              duration = 125
            }
          }
        },
        {
          id = 22,
          type = "Pikeman"
        },
        {
          id = 23,
          type = "Pikeman",
          properties = {
            ["name"] = "fire_north",
            ["nextanim"] = "north"
          },
          animation = {
            {
              tileid = 23,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "Princess",
      firstgid = 720,
      filename = "img/human/enemy/Princess.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/human/enemy/Princess.png",
      imagewidth = 72,
      imageheight = 128,
      tileoffset = {
        x = -12,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 24,
        height = 32
      },
      properties = {
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
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
                x = 2,
                y = 8,
                width = 20,
                height = 20,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
      name = "SwordsmanF",
      firstgid = 732,
      filename = "img/human/enemy/SwordsmanF.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "img/human/enemy/SwordsmanF.png",
      imagewidth = 192,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["column_attack"] = 3,
        ["column_fire"] = 5,
        ["column_move"] = 0,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 24,
      tiles = {
        {
          id = 0,
          type = "Swordsman",
          properties = {
            ["name"] = "east"
          },
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
                y = 8,
                width = 20,
                height = 20,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Swordsman"
        },
        {
          id = 2,
          type = "Swordsman"
        },
        {
          id = 3,
          type = "Swordsman",
          properties = {
            ["nextanim"] = "fire_east"
          },
          animation = {
            {
              tileid = 3,
              duration = 125
            },
            {
              tileid = 4,
              duration = 125
            }
          }
        },
        {
          id = 4,
          type = "Swordsman"
        },
        {
          id = 5,
          type = "Swordsman",
          properties = {
            ["name"] = "fire_east",
            ["nextanim"] = "east"
          },
          animation = {
            {
              tileid = 5,
              duration = 125
            }
          }
        },
        {
          id = 6,
          type = "Swordsman",
          properties = {
            ["name"] = "south"
          }
        },
        {
          id = 7,
          type = "Swordsman"
        },
        {
          id = 8,
          type = "Swordsman"
        },
        {
          id = 9,
          type = "Swordsman",
          properties = {
            ["nextanim"] = "fire_south"
          },
          animation = {
            {
              tileid = 9,
              duration = 125
            },
            {
              tileid = 10,
              duration = 125
            }
          }
        },
        {
          id = 10,
          type = "Swordsman"
        },
        {
          id = 11,
          type = "Swordsman",
          properties = {
            ["name"] = "fire_south",
            ["nextanim"] = "south"
          },
          animation = {
            {
              tileid = 11,
              duration = 125
            }
          }
        },
        {
          id = 12,
          type = "Swordsman",
          properties = {
            ["name"] = "west"
          }
        },
        {
          id = 13,
          type = "Swordsman"
        },
        {
          id = 14,
          type = "Swordsman"
        },
        {
          id = 15,
          type = "Swordsman",
          properties = {
            ["nextanim"] = "fire_west"
          },
          animation = {
            {
              tileid = 15,
              duration = 125
            },
            {
              tileid = 16,
              duration = 125
            }
          }
        },
        {
          id = 16,
          type = "Swordsman"
        },
        {
          id = 17,
          type = "Swordsman",
          properties = {
            ["name"] = "fire_west",
            ["nextanim"] = "west"
          },
          animation = {
            {
              tileid = 17,
              duration = 125
            }
          }
        },
        {
          id = 18,
          type = "Swordsman",
          properties = {
            ["name"] = "north"
          }
        },
        {
          id = 19,
          type = "Swordsman"
        },
        {
          id = 20,
          type = "Swordsman"
        },
        {
          id = 21,
          type = "Swordsman",
          properties = {
            ["nextanim"] = "fire_north"
          },
          animation = {
            {
              tileid = 21,
              duration = 125
            },
            {
              tileid = 22,
              duration = 125
            }
          }
        },
        {
          id = 22,
          type = "Swordsman"
        },
        {
          id = 23,
          type = "Swordsman",
          properties = {
            ["name"] = "fire_north",
            ["nextanim"] = "north"
          },
          animation = {
            {
              tileid = 23,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "Swordsman",
      firstgid = 756,
      filename = "img/human/enemy/Swordsman.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "img/human/enemy/Swordsman.png",
      imagewidth = 192,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["column_attack"] = 3,
        ["column_fire"] = 5,
        ["column_move"] = 0,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 24,
      tiles = {
        {
          id = 0,
          type = "Swordsman",
          properties = {
            ["name"] = "east"
          },
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
                y = 8,
                width = 20,
                height = 20,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
                  ["sensor"] = false
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
        },
        {
          id = 1,
          type = "Swordsman"
        },
        {
          id = 2,
          type = "Swordsman"
        },
        {
          id = 3,
          type = "Swordsman",
          properties = {
            ["nextanim"] = "fire_east"
          },
          animation = {
            {
              tileid = 3,
              duration = 125
            },
            {
              tileid = 4,
              duration = 125
            }
          }
        },
        {
          id = 4,
          type = "Swordsman"
        },
        {
          id = 5,
          type = "Swordsman",
          properties = {
            ["name"] = "fire_east",
            ["nextanim"] = "east"
          },
          animation = {
            {
              tileid = 5,
              duration = 125
            }
          }
        },
        {
          id = 6,
          type = "Swordsman",
          properties = {
            ["name"] = "south"
          }
        },
        {
          id = 7,
          type = "Swordsman"
        },
        {
          id = 8,
          type = "Swordsman"
        },
        {
          id = 9,
          type = "Swordsman",
          properties = {
            ["nextanim"] = "fire_south"
          },
          animation = {
            {
              tileid = 9,
              duration = 125
            },
            {
              tileid = 10,
              duration = 125
            }
          }
        },
        {
          id = 10,
          type = "Swordsman"
        },
        {
          id = 11,
          type = "Swordsman",
          properties = {
            ["name"] = "fire_south",
            ["nextanim"] = "south"
          },
          animation = {
            {
              tileid = 11,
              duration = 125
            }
          }
        },
        {
          id = 12,
          type = "Swordsman",
          properties = {
            ["name"] = "west"
          }
        },
        {
          id = 13,
          type = "Swordsman"
        },
        {
          id = 14,
          type = "Swordsman"
        },
        {
          id = 15,
          type = "Swordsman",
          properties = {
            ["nextanim"] = "fire_west"
          },
          animation = {
            {
              tileid = 15,
              duration = 125
            },
            {
              tileid = 16,
              duration = 125
            }
          }
        },
        {
          id = 16,
          type = "Swordsman"
        },
        {
          id = 17,
          type = "Swordsman",
          properties = {
            ["name"] = "fire_west",
            ["nextanim"] = "west"
          },
          animation = {
            {
              tileid = 17,
              duration = 125
            }
          }
        },
        {
          id = 18,
          type = "Swordsman",
          properties = {
            ["name"] = "north"
          }
        },
        {
          id = 19,
          type = "Swordsman"
        },
        {
          id = 20,
          type = "Swordsman"
        },
        {
          id = 21,
          type = "Swordsman",
          properties = {
            ["nextanim"] = "fire_north"
          },
          animation = {
            {
              tileid = 21,
              duration = 125
            },
            {
              tileid = 22,
              duration = 125
            }
          }
        },
        {
          id = 22,
          type = "Swordsman"
        },
        {
          id = 23,
          type = "Swordsman",
          properties = {
            ["name"] = "fire_north",
            ["nextanim"] = "north"
          },
          animation = {
            {
              tileid = 23,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "ArcherF",
      firstgid = 780,
      filename = "img/human/enemy/ArcherF.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "img/human/enemy/ArcherF.png",
      imagewidth = 192,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["column_attack"] = 3,
        ["column_fire"] = 5,
        ["column_move"] = 0,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 24,
      tiles = {
        {
          id = 0,
          type = "Archer",
          properties = {
            ["name"] = "east"
          },
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
                y = 8,
                width = 20,
                height = 20,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Archer"
        },
        {
          id = 2,
          type = "Archer"
        },
        {
          id = 3,
          type = "Archer",
          properties = {
            ["nextanim"] = "fire_east"
          },
          animation = {
            {
              tileid = 3,
              duration = 125
            },
            {
              tileid = 4,
              duration = 125
            }
          }
        },
        {
          id = 4,
          type = "Archer"
        },
        {
          id = 5,
          type = "Archer",
          properties = {
            ["name"] = "fire_east",
            ["nextanim"] = "east"
          },
          animation = {
            {
              tileid = 5,
              duration = 125
            }
          }
        },
        {
          id = 6,
          type = "Archer",
          properties = {
            ["name"] = "south"
          }
        },
        {
          id = 7,
          type = "Archer"
        },
        {
          id = 8,
          type = "Archer"
        },
        {
          id = 9,
          type = "Archer",
          properties = {
            ["nextanim"] = "fire_south"
          },
          animation = {
            {
              tileid = 9,
              duration = 125
            },
            {
              tileid = 10,
              duration = 125
            }
          }
        },
        {
          id = 10,
          type = "Archer"
        },
        {
          id = 11,
          type = "Archer",
          properties = {
            ["name"] = "fire_south",
            ["nextanim"] = "south"
          },
          animation = {
            {
              tileid = 11,
              duration = 125
            }
          }
        },
        {
          id = 12,
          type = "Archer",
          properties = {
            ["name"] = "west"
          }
        },
        {
          id = 13,
          type = "Archer"
        },
        {
          id = 14,
          type = "Archer"
        },
        {
          id = 15,
          type = "Archer",
          properties = {
            ["nextanim"] = "fire_west"
          },
          animation = {
            {
              tileid = 15,
              duration = 125
            },
            {
              tileid = 16,
              duration = 125
            }
          }
        },
        {
          id = 16,
          type = "Archer"
        },
        {
          id = 17,
          type = "Archer",
          properties = {
            ["name"] = "fire_west",
            ["nextanim"] = "west"
          },
          animation = {
            {
              tileid = 17,
              duration = 125
            }
          }
        },
        {
          id = 18,
          type = "Archer",
          properties = {
            ["name"] = "north"
          }
        },
        {
          id = 19,
          type = "Archer"
        },
        {
          id = 20,
          type = "Archer"
        },
        {
          id = 21,
          type = "Archer",
          properties = {
            ["nextanim"] = "fire_north"
          },
          animation = {
            {
              tileid = 21,
              duration = 125
            },
            {
              tileid = 22,
              duration = 125
            }
          }
        },
        {
          id = 22,
          type = "Archer"
        },
        {
          id = 23,
          type = "Archer",
          properties = {
            ["name"] = "fire_north",
            ["nextanim"] = "north"
          },
          animation = {
            {
              tileid = 23,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "rocks_wide",
      firstgid = 804,
      filename = "img/rocks_wide.tsx",
      tilewidth = 64,
      tileheight = 48,
      spacing = 0,
      margin = 0,
      columns = 2,
      image = "img/rocks_wide.png",
      imagewidth = 128,
      imageheight = 192,
      tileoffset = {
        x = -32,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 48
      },
      properties = {
        ["commoncollision"] = 0
      },
      terrains = {},
      tilecount = 8,
      tiles = {
        {
          id = 0,
          type = "BombTrigger",
          properties = {
            ["defeatdroptileid"] = 2
          },
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
                type = "EnemyCover",
                shape = "rectangle",
                x = 12,
                y = 8,
                width = 40,
                height = 20,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 1,
          type = "BombTrigger",
          properties = {
            ["defeatdroptileid"] = 3
          }
        },
        {
          id = 2,
          type = "EnemyDefeated"
        },
        {
          id = 3,
          type = "EnemyDefeated"
        },
        {
          id = 4,
          type = "BombTrigger",
          properties = {
            ["defeatdroptileid"] = 6
          }
        },
        {
          id = 5,
          type = "BombTrigger",
          properties = {
            ["defeatdroptileid"] = 7
          }
        },
        {
          id = 6,
          type = "EnemyDefeated"
        },
        {
          id = 7,
          type = "EnemyDefeated"
        }
      }
    },
    {
      name = "player",
      firstgid = 812,
      filename = "img/player.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "img/player.png",
      imagewidth = 256,
      imageheight = 448,
      tileoffset = {
        x = -32,
        y = 32
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {
        ["commoncollision"] = 0
      },
      terrains = {},
      tilecount = 28,
      tiles = {
        {
          id = 0,
          type = "Player",
          properties = {
            ["name"] = "forward"
          },
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
                x = 28,
                y = 28,
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
                x = 8,
                y = 40,
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
                x = 56,
                y = 40,
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
                x = 16,
                y = 16,
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
                x = 48,
                y = 16,
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
                x = 0,
                y = 8,
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
                x = 64,
                y = 8,
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
                x = 16,
                y = -24,
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
                x = 48,
                y = -24,
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
              duration = 100
            },
            {
              tileid = 1,
              duration = 150
            },
            {
              tileid = 2,
              duration = 100
            },
            {
              tileid = 3,
              duration = 150
            }
          }
        },
        {
          id = 1,
          type = "Player"
        },
        {
          id = 2,
          type = "Player"
        },
        {
          id = 3,
          type = "Player"
        },
        {
          id = 4,
          type = "Player",
          properties = {
            ["name"] = "lefttilt",
            ["nextanim"] = "left"
          },
          animation = {
            {
              tileid = 4,
              duration = 67
            },
            {
              tileid = 5,
              duration = 67
            },
            {
              tileid = 6,
              duration = 67
            },
            {
              tileid = 7,
              duration = 67
            }
          }
        },
        {
          id = 5,
          type = "Player"
        },
        {
          id = 6,
          type = "Player"
        },
        {
          id = 7,
          type = "Player",
          properties = {
            ["name"] = "leftuntilt",
            ["nextanim"] = "forward"
          },
          animation = {
            {
              tileid = 7,
              duration = 100
            },
            {
              tileid = 6,
              duration = 100
            },
            {
              tileid = 5,
              duration = 100
            },
            {
              tileid = 4,
              duration = 100
            }
          }
        },
        {
          id = 8,
          type = "Player",
          properties = {
            ["name"] = "left"
          },
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
            }
          }
        },
        {
          id = 9,
          type = "Player"
        },
        {
          id = 10,
          type = "Player"
        },
        {
          id = 11,
          type = "Player"
        },
        {
          id = 12,
          type = "Player",
          properties = {
            ["name"] = "righttilt",
            ["nextanim"] = "right"
          },
          animation = {
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
        },
        {
          id = 13,
          type = "Player"
        },
        {
          id = 14,
          type = "Player"
        },
        {
          id = 15,
          type = "Player",
          properties = {
            ["name"] = "rightuntilt",
            ["nextanim"] = "forward"
          },
          animation = {
            {
              tileid = 15,
              duration = 100
            },
            {
              tileid = 14,
              duration = 100
            },
            {
              tileid = 13,
              duration = 100
            },
            {
              tileid = 12,
              duration = 100
            }
          }
        },
        {
          id = 16,
          type = "Player",
          properties = {
            ["name"] = "right"
          },
          animation = {
            {
              tileid = 16,
              duration = 100
            },
            {
              tileid = 17,
              duration = 100
            },
            {
              tileid = 18,
              duration = 100
            },
            {
              tileid = 19,
              duration = 100
            }
          }
        },
        {
          id = 17,
          type = "Player"
        },
        {
          id = 18,
          type = "Player"
        },
        {
          id = 19,
          type = "Player"
        },
        {
          id = 20,
          type = "Player",
          properties = {
            ["name"] = "bombready",
            ["nextanim"] = "bomblaunch"
          },
          animation = {
            {
              tileid = 20,
              duration = 66
            },
            {
              tileid = 21,
              duration = 99
            },
            {
              tileid = 22,
              duration = 66
            },
            {
              tileid = 23,
              duration = 99
            },
            {
              tileid = 24,
              duration = 66
            },
            {
              tileid = 25,
              duration = 99
            }
          }
        },
        {
          id = 21,
          type = "Player"
        },
        {
          id = 22,
          type = "Player"
        },
        {
          id = 23,
          type = "Player"
        },
        {
          id = 24,
          type = "Player"
        },
        {
          id = 25,
          type = "Player"
        },
        {
          id = 26,
          type = "Player",
          properties = {
            ["name"] = "bomblaunch",
            ["nextanim"] = "forward"
          },
          animation = {
            {
              tileid = 26,
              duration = 66
            },
            {
              tileid = 27,
              duration = 99
            }
          }
        },
        {
          id = 27,
          type = "Player"
        }
      }
    },
    {
      name = "arachne",
      firstgid = 840,
      filename = "img/friend/arachne.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/arachne.png",
      imagewidth = 192,
      imageheight = 256,
      tileoffset = {
        x = -32,
        y = 32
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "Friend",
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
                x = 16,
                y = 16,
                width = 32,
                height = 32,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Friend"
        },
        {
          id = 2,
          type = "Friend"
        },
        {
          id = 3,
          type = "Friend"
        },
        {
          id = 4,
          type = "Friend"
        },
        {
          id = 5,
          type = "Friend"
        },
        {
          id = 6,
          type = "Friend"
        },
        {
          id = 7,
          type = "Friend"
        },
        {
          id = 8,
          type = "Friend"
        },
        {
          id = 9,
          type = "Friend"
        },
        {
          id = 10,
          type = "Friend"
        },
        {
          id = 11,
          type = "Friend"
        }
      }
    },
    {
      name = "blue_slime",
      firstgid = 852,
      filename = "img/friend/blue_slime.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/blue_slime.png",
      imagewidth = 96,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "Friend",
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
                x = 4,
                y = 4,
                width = 24,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Friend"
        },
        {
          id = 2,
          type = "Friend"
        },
        {
          id = 3,
          type = "Friend"
        },
        {
          id = 4,
          type = "Friend"
        },
        {
          id = 5,
          type = "Friend"
        },
        {
          id = 6,
          type = "Friend"
        },
        {
          id = 7,
          type = "Friend"
        },
        {
          id = 8,
          type = "Friend"
        },
        {
          id = 9,
          type = "Friend"
        },
        {
          id = 10,
          type = "Friend"
        },
        {
          id = 11,
          type = "Friend"
        }
      }
    },
    {
      name = "giant_ant",
      firstgid = 864,
      filename = "img/friend/giant_ant.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/giant_ant.png",
      imagewidth = 192,
      imageheight = 256,
      tileoffset = {
        x = -32,
        y = 32
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {
        ["colstype"] = "state",
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "Friend",
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
                x = 16,
                y = 16,
                width = 32,
                height = 32,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "Friend"
        },
        {
          id = 2,
          type = "Friend"
        },
        {
          id = 3,
          type = "Friend"
        },
        {
          id = 4,
          type = "Friend"
        },
        {
          id = 5,
          type = "Friend"
        },
        {
          id = 6,
          type = "Friend"
        },
        {
          id = 7,
          type = "Friend"
        },
        {
          id = 8,
          type = "Friend"
        },
        {
          id = 9,
          type = "Friend"
        },
        {
          id = 10,
          type = "Friend"
        },
        {
          id = 11,
          type = "Friend"
        }
      }
    },
    {
      name = "CatapultOperatorF",
      firstgid = 876,
      filename = "img/human/enemy/CatapultOperatorF.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/human/enemy/CatapultOperatorF.png",
      imagewidth = 72,
      imageheight = 128,
      tileoffset = {
        x = -12,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 24,
        height = 32
      },
      properties = {
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          type = "CatapultOperator",
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
                x = 2,
                y = 8,
                width = 20,
                height = 20,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "CatapultOperator"
        },
        {
          id = 2,
          type = "CatapultOperator"
        },
        {
          id = 3,
          type = "CatapultOperator"
        },
        {
          id = 4,
          type = "CatapultOperator"
        },
        {
          id = 5,
          type = "CatapultOperator"
        },
        {
          id = 6,
          type = "CatapultOperator"
        },
        {
          id = 7,
          type = "CatapultOperator"
        },
        {
          id = 8,
          type = "CatapultOperator"
        },
        {
          id = 9,
          type = "CatapultOperator"
        },
        {
          id = 10,
          type = "CatapultOperator"
        },
        {
          id = 11,
          type = "CatapultOperator"
        }
      }
    },
    {
      name = "HeavyMilitia",
      firstgid = 888,
      filename = "img/human/enemy/HeavyMilitia.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "img/human/enemy/HeavyMilitia.png",
      imagewidth = 192,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["colstype"] = "state",
        ["column_attack"] = 3,
        ["column_fire"] = 5,
        ["column_move"] = 0,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 24,
      tiles = {
        {
          id = 0,
          type = "HeavyMilitia",
          properties = {
            ["name"] = "east"
          },
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
                y = 8,
                width = 20,
                height = 20,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
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
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        },
        {
          id = 1,
          type = "HeavyMilitia"
        },
        {
          id = 2,
          type = "HeavyMilitia"
        },
        {
          id = 3,
          type = "HeavyMilitia",
          properties = {
            ["nextanim"] = "fire_east"
          },
          animation = {
            {
              tileid = 3,
              duration = 125
            },
            {
              tileid = 4,
              duration = 125
            }
          }
        },
        {
          id = 4,
          type = "HeavyMilitia"
        },
        {
          id = 5,
          type = "HeavyMilitia",
          properties = {
            ["name"] = "fire_east",
            ["nextanim"] = "east"
          },
          animation = {
            {
              tileid = 5,
              duration = 125
            }
          }
        },
        {
          id = 6,
          type = "HeavyMilitia",
          properties = {
            ["name"] = "south"
          }
        },
        {
          id = 7,
          type = "HeavyMilitia"
        },
        {
          id = 8,
          type = "HeavyMilitia"
        },
        {
          id = 9,
          type = "HeavyMilitia",
          properties = {
            ["nextanim"] = "fire_south"
          },
          animation = {
            {
              tileid = 9,
              duration = 125
            },
            {
              tileid = 10,
              duration = 125
            }
          }
        },
        {
          id = 10,
          type = "HeavyMilitia"
        },
        {
          id = 11,
          type = "HeavyMilitia",
          properties = {
            ["name"] = "fire_south",
            ["nextanim"] = "south"
          },
          animation = {
            {
              tileid = 11,
              duration = 125
            }
          }
        },
        {
          id = 12,
          type = "HeavyMilitia",
          properties = {
            ["name"] = "west"
          }
        },
        {
          id = 13,
          type = "HeavyMilitia"
        },
        {
          id = 14,
          type = "HeavyMilitia"
        },
        {
          id = 15,
          type = "HeavyMilitia",
          properties = {
            ["nextanim"] = "fire_west"
          },
          animation = {
            {
              tileid = 15,
              duration = 125
            },
            {
              tileid = 16,
              duration = 125
            }
          }
        },
        {
          id = 16,
          type = "HeavyMilitia"
        },
        {
          id = 17,
          type = "HeavyMilitia",
          properties = {
            ["name"] = "fire_west",
            ["nextanim"] = "west"
          },
          animation = {
            {
              tileid = 17,
              duration = 125
            }
          }
        },
        {
          id = 18,
          type = "HeavyMilitia",
          properties = {
            ["name"] = "north"
          }
        },
        {
          id = 19,
          type = "HeavyMilitia"
        },
        {
          id = 20,
          type = "HeavyMilitia"
        },
        {
          id = 21,
          type = "HeavyMilitia",
          properties = {
            ["nextanim"] = "fire_north"
          },
          animation = {
            {
              tileid = 21,
              duration = 125
            },
            {
              tileid = 22,
              duration = 125
            }
          }
        },
        {
          id = 22,
          type = "HeavyMilitia"
        },
        {
          id = 23,
          type = "HeavyMilitia",
          properties = {
            ["name"] = "fire_north",
            ["nextanim"] = "north"
          },
          animation = {
            {
              tileid = 23,
              duration = 125
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 40,
      name = "dirt",
      x = 0,
      y = 0,
      width = 18,
      height = 170,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJydmFuOKyEMRNn/LtgF/CNW0Au6c6VYOjld9CTzEU0eYIxdrqqeq7U2fl7957Ve7///na+//fW+1tTv+/X3ev1+4eVY47V+Yt8M+7Y+8zUQZyDOCmtTnIH1Hffiq/LiPeo999a6jnxYn629tebCGsap/VO/D/x+4fwLZ/CuzIf3mIjtGvEM1rTjc2/vuQ3FrngTsSoOz2Y8xjCGWB/iqO7M3jlG6j37ttWzhJ8V4nB/V5x5ONv5GUdcz7lwTj3E+ctrKabjsr++i2ejcmZPRrvjmxgglnZ7z6Pw41jsN//ybNbOM7hxdr221pDX+H6E2Hw/W8ZU16tyMEfMcDb5qLBV8Zd+Z784I8yBtV9Yy+9Yd88GczdHsI7uT9c+3ok9sd5wT91jt/v9OIuMlXiDcVhL9o3fLb03L3bF8Z2MKcbxjJkvWQPyytJ3E/HSPVhP1933dR7WEPdp6HzyGc9hLy/FIk7ZP/aK+ZHDT9p+wnXiHsc5eZ+h81OtrL/s/9DnqTism7mWNWAc34V8sEIc62/iEM59nZV4PvWcdba3Sbo+FHMpzokv6KFYH+OcM8j3PLv0eWlf8rK8j3Xqau/18yzaTxI39fJ5nC3WhL4i+ZHkgz07XEdu5JmfzBd9qOvt/dZv8jPvZP+Q/It12jn3dr9Xek5wj5LvoZYwVvKcxI/nmXPnM1wD88Ju9xoZf5e+o5bYy5ibko54jhNvUIOYL+tPH2GN8F1YG3ODucqekD7nCVPsHXNjLslH8Hf3PnEM75C8BePYN3ouiC3Wkh6aM8Y6ckY9L577NO/G+wovc5zjcF7NSye/UWsuxD/xJefNc8dnHnNq4kv7rnQn4zSt4Yz1EIu4NbendfSWvptnIfFc8jSJc8yt1i73wTxBPHDm3QPOfdJMexJyh/2O8XzyxOw9Mcf45jj6Lnt0P4N47pMGJd22v0i58I5D57H/5HTXn55jaA9zIl8xJ3IC8bHDWT6H/Jd4nNrO/rL25n3X2txln8qZG4p/eiagJzhhgmuWzvQcEiP2CvZHSf/NY0k3rZXJD3PWOcez3TFoPjg9F7m+rutudxwQlwmH5AN6Ctam6swc2SvHsudh7tYmc5A50vexfpkTzSHGop8Ziqd9BnMkn7kGG/utx9RV63Dyi4W95HlZC2uS55ra7r5O7ecZjLOwn7W2D0gxmJPzudo7PpbWOg/yetJuY9s9sj+2D+Aa58W9vnPFM+8wX35vjWQ8YnA9rDNHGFfkRXKVNZkcxP3Uwx5ip/n384Fz8My51+bYpHH0Zca9vQH74NqTP6x1zMm45gwlPiTvnzSe9bV+JYzyM+9H3SZnWgc9E5xfew3PfOJk8zo5Mn1H78xZmzrT9U88z5qxnp655ENrtrifuDZHE9+sQ/I+Jw+TYpx0y77M9yL+ps71fBH3xqtnmfmQg+gr7EV5nrnKfLrCOmso9YK45DNp4ib7i+TJXCfy4NYezgrP5NyYU42j9Fxufib+E47t5+xvyY1JF4xh12YpnnFpDrbnJN+RB/3/BPfb3mEoVpodPhNbFxLPWi89K9Zt3tHab3x4nkeIz1p5ZtlvctKJL3gGZylpEbGRuJO9WjqPMe3N7F8dt/Ly/zf8OznE+PTM0BvU7/YCrE/iMvqoVCPmlPBuTuN66ys53DzD+TnNG/MnnslVxpJrZgzZR9izrXbPi/1bOv/0jEnflbxgP8R1fZmvfXPSCeLTc8w8zA321ayVa+D99mQpJ2tdzbjx5p4nb8wa+jnHPsteb2r9QIykFdYS5pk8BzmUz6TWt8St1kr213unvucZjrPb+yyYu5lH0jXPFOtvvWGdzEPJA3gt63Z6xnIc6os5lPhxvimOvZR1NT1fpTjmJu7hvFg3Euebd5wLY5/iPPHc1u+nGPad1hHqg++VvFXyv9YZc3GKk7SY8fj3dC8/o3ieyAUnDJonqUuuzVMudU97At6tfku6mfBDHdz6TC4+4ZkYMqcaN/RwTzjyHZ/m8qlv1tz9hzjmbvbt2zjEyyez+YQlPledPM6nNaJ/fKrBJ3F+y+W3ulVtGPMJe09xrNHfxiGO3btv+j+1z17c+H/Khxxk3iCWTvmZj4ntre9TTT1LrInrYz76B6Po57E="
    },
    {
      type = "tilelayer",
      id = 41,
      name = "dirtdeco",
      x = 0,
      y = 0,
      width = 18,
      height = 170,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzFWFty7TAIy/43lyyp049MPVwJhCBz+WmPY4PNQzyu67ru64+eC9NtfH/AWofu8P8D1qt7KGemdAO5aA/6//2d6a2rP/Wtp1xVxvlWRgov9F72u2s7RX7UuUvs7mhd8Q1HJvIntrf6PtHLHf5OaMJDOZvpzH1HFRsMIyZ+cV//ys3s9wh8kQ8w/1V4Vf7G5DPMVPWl2nGKA137RV2i8+qaIi9+c3LUk3zL7oByTBYHnZiL9p3iaMe/FT/OfJjJYbbp+KiDW68MxTczyvardmK+2q0rKt7KuiIP5XzmHy7WbLwdkfLubg2t5iIHrzMcUmKN2eiMVccXujl9UmM4+7t13rSGe/WZYapT53dzOdIzupuTjxVS36T0Q6pNGC81F228/32T6mOT3Huude7p1LPo3DRnT+ckXVL06viaKlOJu26+dHooZZbBcPqrfFzxq+JJnX2cPKOM6gz6rZyp5GQ1k4L7av+g+hbT54nHG3Okr85n+lDt7ux33qP0gm7N4tR2bDY6sVVVC3XroW7+YviB3reJb0pttZWTkJ3ZjKmSx9amPTHDNYRLqCePZ6dzV5bb1HnmpJ7v3OukrRpVzWvTtzDq5MH4zfXx7owtylRwqbqPOkNk9pnGZEZf8GbzQWXfuxf5QVXLMYxh8hF1sDKe685hGI+s9r3D3upO599sT6SNnOjof6OeemWfetzCtGpecf51cqd632mcnv5TxZfjR45fdWpeRb8d/4z7XyxBOnL8GtHJ060nVAxAstWag+W3qkdXecU9HX5fkTMD+CXUU3TnO/+DNnviSK6PIlln/KH4RXHkzG9cWykzJYa7094mowovt3yzim+1z+rIUnhms4eLrFXnzrUODm7ZV8GVaPcT9yf3yeKlE++buL+RW7Zye8Zf8f+vYlXpPzZIweGsb0Z2yOr8Sn61XmHvV3ph3yb9ajV7qGo/tH8iN8NchEeqPTewA80NIi4iuzj3UXHX7RudmaBD23kM8Vb4/wCPceGL"
    },
    {
      type = "tilelayer",
      id = 42,
      name = "grass",
      x = 0,
      y = 0,
      width = 18,
      height = 170,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztmrty4zoMhtEpqTOuLdebU9upc9L60trx+7/GEWfxjX7TJEWKZ2ebYIbjRBcIBHH5AfJkZttpjNP4x+ro1zTep7GbxmUaH9M4+7g5v3cfOZ6//P2rvxN+35xfGAcfJ7mXoo08y/ff/O+rv3+fxjCNl2l8Zfh8TuPfabz6948+r6PzGvx+7v2Y9v7eweV5dXk+ZP5BP6M96ii+/unvhjlshS/62Pscz8Kb6+HbN7m+cT43v38RPsw/1hHXmTvr9m2/dbPx72+tzX52Lgdrv3eeB6uzR7Wfb/8dZI5nv67zT9HGn2OtTv78zv/HFgab9cIaqX2zThf/Jn5xcNmwT+am/nNNXD+5XMiDHZ7k3tmv3+Ua+jz6L/fwy6M/N7i8J7mPj7z4PfzqHj2vPL7s0UZS9vMS3UNXZ2vzqRTB/4d+6Id+U4hPo9XH4xyF2Ehs6uUT4kuIGe+2jA1ypLkwxKCL8yzF95JMxEli35o4xNwuHTzgc7bHnLyGyPuKNdbyIbf2yEN+JY+tJXKMYh8lzck1tgUuiynMO9jX1eZ8neKFj31nnlE8qTgwJtadvJ37XpCLXJ/SI7jnaDNWyD139mdVHsX0N78PlonlBnuFNY1tXvE4WD6HvTd+PyUr8w18wJol3bBm8TPgg1fhA7aPifii9Uhq3uAqMHlOpjC3lN0rRqUuOCa+p3xS9oNvHe0Zp6fmBraL7+u7f4O05kn5bq5Wion1ox7QtcG2weFLsUhx66vwKuWMJTmRL/C6uyypnLF3/jk7VV5g8dgOSz4ay6t1VOzv1HeHgiyaA08222tcj179XspntCY82lxr5OILfYOYF76FHDt71qPWsNR8cVxFXmJlypeRBV9OxV1dJ+1F6Jy0hidXpuKu1u+pulbrKuq61NqDfcLI9US0ns1hAI0pJcKGevCRfq+Hxw/9P0Ts6OWBz/cQ8TLY/Wjr6x6NuyUstkTkZeIUvaAWQjfhXfX5NX02fE97O0t9MaW9pfufxIja+uDTnntoqXstRAzuIcV1PQQO7bVD5jRYvm6olYf6uKeOI+982HPd0CoPuLrU06/hQy4uYfBaPlub+6drewn0N3p7End/X/urraQ4oDdfoqNe+hN92uC3vT0u8O8aWySGBRnYI+pZr2CHa20HIgb1rju1eU3dtcQH38j1Lmr5YM/oqrWHqPkwEPGoVGelSN8LtFR7L8kyyLXR6vUND+qOt4hvLe5grbWHubF536vWlqgr1IZ31u4X9H6055Prj5RI4yB4Z61fwIt80UP0dEp4A1so9TRr6i90CQ7VvcYxwTNHuj+s/TTqzNgfa/uw2p+L+2qjzf2NWv/Uviv7rgd7XLuWmKHzDr/Es1I/pIaoiWNcputeI6fqT+dGLdOK17BNeMX8x0q54BPXGcQV8F8c8+K6gPMOcSzT/tyXzViXmBHizj3iQ4+lpA/1c/LWLXN/yZa0H0ldqeuKb8ZzS+WB2P/0++g0dQYk1yuCOCeDzvBn1VGpdwxp37wHv6Izzq608FDfgVfqTMISD2xnWHh2iYfmzlb8pHlc16Jkc7lzKfH5ndHKfhD7Vk62oKOwVmviYKznTUGeEim+3Pr/a+TRveVv59PT/6FvAz5bMzdin/ag19aVxCB642vmRpw5yWjFzoH0rNfB5v2UFh3Fe3HUF618iJH05sEMLf0SZGHPk72Q3L5dSRbWCazGvkKLnnUfkz4SsrTWl7pXwPkx/K1Vz+wjMUfyRa08GhPRC3qqXXeNO+AKztJxrYYPa8W5OHwLe67xMbWbD3s8s4nOOTtQ4oVf8hw8wQRgavaXSvt4+DQy6Dla1XtJJvqX1F3gAWTADvhGDkvr2UzVCX6ua3Yv8NnL+3xb53gQHsga89G9CmI7dhfrRc9nps416F6fYsPBZl9Xfad6nOBrzoQchKf2M8HE6DuuBxTf3+x53XRPF1tEdzlda92Fv+ve5ll45PCd4mxi6V3+Vn5LvWT8ivkMNtsjcrTUBuiAeIjOcvu7S7zwM/TRilmV13+UeTkH"
    },
    {
      type = "tilelayer",
      id = 43,
      name = "grassdeco",
      x = 0,
      y = 0,
      width = 18,
      height = 170,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztmtkOhCAMReHzhfnoiXFMCDGhaKGVOSfxzehty3JZQvBJjiGkKHt3i8fjkWyoS5o/T3wMNde10sjf+Y031iJ19EEAALCHMbvNbJ9h6QNnkxT9uFdfPxvyoIPl+qLGk5YWvXPKyPFOsy881fmmGgLAPP7J81my4nrnnONoQwAAAAB97OvzER5qRc8J4AX2uwHWZnN6v+iupqsxyzq+0vtYa/GiYSR34ivPkK7akNS/pom1bs3PrXOxMiatMzRpzPX/NNcHVvu1rdilOW7pl/qy/LsD4uV8VFNHnaMnNddsL3u+vz3IJZY="
    },
    {
      type = "tilelayer",
      id = 55,
      name = "forest_mid",
      x = 0,
      y = 0,
      width = 18,
      height = 170,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztWlduwzAMde5/mrRpU7gZPVqVD6IEIW46Vgo9QIANrcdhipK1LDV4OyzLeyung6398dDvs7bn71YurXy08tnKuZUvYdxeH4xre7+1cm/lx8gP+lg5aDJSDpz83Hwgo6Yzq8y9PlZgjh6bU2COXpvTdqDP3tiSzXvt1oTNKSQOmqy4HoP6juZbuN7iOxi0HsaO+g4de2Jiog9ujYi098b7zPowEUd0LQWAD1TYbcT4nMk3MF7Nt6VvG+cJlpjBfds4T5DaRXl62+L5PXsACZ49gASNu1SP6yzcpXqoe3VY/duSj1v8u8IHKLzrtQSrP2f2KVivGb3QuKHNZeHK6dFrw2geQ22ZsSnmIHHxxBTPnFL9xMSe2CNmPgMQ77LnSBDvtly3Jv78sGJvsQ7mg+ciH7wnffC/f+uj6PkBeh6ewYjnABPPQcU/kAcq167MPzno/0B2P3hNyNOTIRIfORn2iI89mSI26sk0Qu6j7b889tP2X9X2e/bam/1ffkraHXM8FvpNNvYAtj6L8vKENrSflye04fpt5YfcfQB4t+qDuw8A7159ROTV7oBcSD3X3sL1lpCtQlYOkfjH3ZfwwnKeaeGwRXyQdOvRv6ZbSf9YxoydsYzRdY7KnPE/LHN2/d37W+C4ZHnhvCXDC3hU6GhN2IvqI6MfysHLaSQuo/IahYvGI7IX4HhU8vIgykPi4OXGcYhw4+aL6IibT+Oh2cd6H1jSTe8/o5bbcbwqdLN2+EUR8eOeDnt3WrWxLfmxV0bgls0bgdsvhUYr3w=="
    },
    {
      type = "objectgroup",
      id = 30,
      name = "ground",
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
      id = 53,
      name = "forest_high",
      x = 0,
      y = 0,
      width = 18,
      height = 170,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztWtlOAzEMpP//D6ACPYBC+USSBwszcnymEKEdKWq32WzGY69zNK+7u7u3Vi6tHFo5tnJq5dyKhJf2+6vQpuO+fT608t7KRyvXVj4Hz0FQGw8HAvVH2Lfvj608CRx43TNrI/XHbcQ2aD/yR5uJo9TGC86Rc0H7LZ04x4jPkcOZ6Rn1Od5HelocLFupXuNg2crrOTB2rNji9Z7YIUj19Oxs7OCzN2zYIGM0RkTvt95zRPT+DfPg8bMGioGq31bNz953wcIqse2dM2m5gM8TrJyhvdt8npDNAdi/ZpvGFfvHOdI+md8iawANls5aPa/LzMGkulUxO76tNZg3vmfEACIyXmu6eOKZ2nt1kcB11XSxfMh19fTl4TrSMerD7DwGfZkdd9CXGpdITon0qdVv2PCXiK5xRqisWQ5wf8933nFLe+axmJ87KN/dctza8B2H1bUFxWF1bUHxNyMGT5Ni8FqMwRXedcR/1LmDtK5i1X2ADToq8cxRiWcOiufquNoRXUtI7Tuy60H+H1MWkg2Z/CjZkMmP6JeMjySbMj6SbFph7mOtv7z+s9Zft9h/93Kz/O7llvG7xDHjd+RIe4XV3NOfW809BC33ZHnydlGe50G7aI6ke0btJB9L9vJrqX507gPPA9C1V4/ReQC6tvTQzoB0e7Fess06A3KB+pFtHt/x+ur+aGV+z3XI5r/ReYkoB89+pofDLfKDpq1Hf7JR09bSn9tYWcdxG7PjHNqcjT+0uTr+rrTW5VwqvDiXKi/iUdWIeMza58/qg3pk9FmJy6q8VuFi8cisBSQes3n9hj4ahwg3jUOG26i/qEaj/vB3aW5n+cdzHtjSRvqf0ZrbjXhVtaHrbA5CDTNjhaShdKbVejZqeL/7yTFjI3GrzhuJ26wzDjP2/Dq+AJVlVoU="
    },
    {
      type = "tilelayer",
      id = 168,
      name = "fire",
      x = 0,
      y = 0,
      width = 18,
      height = 170,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt08EJgEAMBMCz//782Iz4EA5BPLlgIsw0kM2StAYAAPG2JTtBXX032T1Fz8/e585Mrqo78S+zd/TlHb6ZVeE/zgwjWdagvE+zKvQCjPGvZDrur9INVsoSqVrPAAAAAABwtQO1ehLk"
    },
    {
      type = "objectgroup",
      id = 57,
      name = "airobjects",
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
      id = 5,
      name = "unused",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 131,
          name = "operator",
          type = "CatapultOperator",
          shape = "rectangle",
          x = 224,
          y = 496,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 663,
          visible = true,
          properties = {
            ["rideid"] = 134
          }
        },
        {
          id = 136,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 64,
          y = 528,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 482,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["offscreenshot"] = true,
            ["pathid"] = 135
          }
        },
        {
          id = 132,
          name = "operator",
          type = "CatapultOperator",
          shape = "rectangle",
          x = 64,
          y = 496,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 663,
          visible = true,
          properties = {
            ["rideid"] = 136
          }
        },
        {
          id = 134,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 224,
          y = 528,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 482,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["offscreenshot"] = true,
            ["pathid"] = 133
          }
        },
        {
          id = 135,
          name = "path",
          type = "",
          shape = "polyline",
          x = 80,
          y = 512,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 16 },
            { x = -16, y = 64 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 133,
          name = "path",
          type = "",
          shape = "polyline",
          x = 240,
          y = 512,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 16 },
            { x = -16, y = 64 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 98,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 176,
          y = 816,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 762,
          visible = true,
          properties = {}
        },
        {
          id = 108,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 300,
          y = 752,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 762,
          visible = true,
          properties = {}
        },
        {
          id = 119,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 96,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathid"] = 117
          }
        },
        {
          id = 126,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 192,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathid"] = 118
          }
        },
        {
          id = 88,
          name = "operator",
          type = "CatapultOperator",
          shape = "rectangle",
          x = 144,
          y = 896,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 663,
          visible = true,
          properties = {
            ["rideid"] = 75
          }
        },
        {
          id = 75,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 144,
          y = 928,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 482,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathid"] = 87,
            ["pathspeed"] = 90
          }
        },
        {
          id = 87,
          name = "path",
          type = "",
          shape = "polyline",
          x = 160,
          y = 944,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 0 },
            { x = -16, y = 48 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 316,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = -24,
          y = 0,
          width = 4,
          height = 4,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 39,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 192,
          y = 1216,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathid"] = 35,
            ["pathmode"] = "relative"
          }
        },
        {
          id = 13,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 96,
          y = 512,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathid"] = 117
          }
        },
        {
          id = 23,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 192,
          y = 512,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathid"] = 118
          }
        },
        {
          id = 96,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 148,
          y = 1104,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 465,
          visible = true,
          properties = {}
        },
        {
          id = 46,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 528,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 465,
          visible = true,
          properties = {}
        },
        {
          id = 192,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 544,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 465,
          visible = true,
          properties = {}
        },
        {
          id = 93,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 528,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 465,
          visible = true,
          properties = {}
        },
        {
          id = 333,
          name = "rock",
          type = "DestructibleCover",
          shape = "rectangle",
          x = 144,
          y = 1032,
          width = 64,
          height = 48,
          rotation = 0,
          gid = 804,
          visible = true,
          properties = {}
        },
        {
          id = 114,
          name = "swordswoman",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1520,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 738,
          visible = true,
          properties = {
            ["defeatitem"] = "ItemWingman",
            ["firetargetid"] = "345",
            ["pathid"] = "345"
          }
        },
        {
          id = 103,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1544,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 762,
          visible = true,
          properties = {
            ["firetargetid"] = "340",
            ["nexttypeparam"] = 8,
            ["pathdistmin"] = 0,
            ["pathid"] = "340"
          }
        },
        {
          id = 104,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = 296,
          y = 1640,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 762,
          visible = true,
          properties = {
            ["firetargetid"] = "345",
            ["nexttypeparam"] = 8,
            ["pathdistmin"] = 16,
            ["pathid"] = "345"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 31,
      name = "boss_chargeparticles",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["emissionrate"] = 30,
        ["lifetime"] = 0.25,
        ["maxparticles"] = 32,
        ["script"] = "ParticleLayer",
        ["speedmin"] = 240,
        ["tileid"] = "charge",
        ["tileset"] = "particles"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      id = 32,
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
          name = "camera",
          type = "Camera",
          shape = "rectangle",
          x = 24,
          y = 2400,
          width = 240,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {
            ["pathid"] = 2,
            ["pathspeed"] = 30
          }
        },
        {
          id = 2,
          name = "path",
          type = "",
          shape = "polyline",
          x = 24,
          y = 1272,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -1264 },
            { x = 0, y = -1272 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 33,
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
      id = 34,
      name = "playershots",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      id = 35,
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
          id = 3,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 2752,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 812,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 767,
      name = "bosstalkstart",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 561,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = -16,
          width = 304,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["dialogue"] = true,
            ["musicfade"] = true,
            ["timelinespeed"] = 16
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 761,
      name = "bosstalk1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 544,
          name = "bubble",
          type = "Polygon",
          shape = "polygon",
          x = 64,
          y = 104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = -8 },
            { x = -16, y = 8 },
            { x = -16, y = 88 },
            { x = 0, y = 104 },
            { x = 96, y = 104 },
            { x = 88, y = 136 },
            { x = 112, y = 104 },
            { x = 160, y = 104 },
            { x = 176, y = 88 },
            { x = 176, y = 8 },
            { x = 160, y = -8 }
          },
          properties = {}
        },
        {
          id = 543,
          name = "text",
          type = "",
          shape = "text",
          x = 56,
          y = 112,
          width = 176,
          height = 80,
          rotation = 0,
          visible = true,
          text = "Ange?\n\nAnge! Is that you?",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 562,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 296,
          y = 0,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["dialogue"] = true,
            ["timelinespeed"] = 0
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 8,
      name = "boss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 159,
          name = "boss",
          type = "PrincessEnter",
          shape = "rectangle",
          x = 144,
          y = -16,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 726,
          visible = true,
          properties = {}
        },
        {
          id = 347,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 296,
          y = 8,
          width = 16,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground",
            ["cleartowin"] = true,
            ["dialogue"] = true,
            ["musicfile"] = "mus/Unwanted_Turmoil.vgm",
            ["timelinespeed"] = 16
          }
        },
        {
          id = 412,
          name = "",
          type = "",
          shape = "polyline",
          x = 80,
          y = 32,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 120, y = 160 },
            { x = 104, y = 104 },
            { x = 152, y = 80 },
            { x = 144, y = 32 },
            { x = -16, y = 32 },
            { x = -24, y = 80 },
            { x = 24, y = 104 },
            { x = 8, y = 160 }
          },
          properties = {}
        },
        {
          id = 413,
          name = "",
          type = "",
          shape = "polyline",
          x = 232,
          y = -2328,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 0 },
            { x = -168, y = 0 }
          },
          properties = {}
        },
        {
          id = 472,
          name = "",
          type = "",
          shape = "polyline",
          x = 184,
          y = 208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 16, y = -16 },
            { x = -40, y = -48 },
            { x = -128, y = -96 }
          },
          properties = {}
        },
        {
          id = 473,
          name = "",
          type = "",
          shape = "polyline",
          x = 104,
          y = 208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = -16 },
            { x = 40, y = -48 },
            { x = 128, y = -96 }
          },
          properties = {}
        },
        {
          id = 476,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = 160,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 80, y = -96 },
            { x = 16, y = -104 },
            { x = 0, y = 0 },
            { x = -16, y = -104 },
            { x = -80, y = -96 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 762,
      name = "bosstalk2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 546,
          name = "bubble",
          type = "Polygon",
          shape = "polygon",
          x = 64,
          y = 104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = -8 },
            { x = -16, y = 8 },
            { x = -16, y = 88 },
            { x = 0, y = 104 },
            { x = 96, y = 104 },
            { x = 104, y = 104 },
            { x = 112, y = 104 },
            { x = 160, y = 104 },
            { x = 176, y = 88 },
            { x = 176, y = 8 },
            { x = 160, y = -8 },
            { x = 64, y = -8 },
            { x = 72, y = -40 },
            { x = 48, y = -8 }
          },
          properties = {}
        },
        {
          id = 545,
          name = "text",
          type = "",
          shape = "text",
          x = 56,
          y = 112,
          width = 176,
          height = 88,
          rotation = 0,
          visible = true,
          text = "Amelia? ... So it's too late. You're one of them now.\nI was hoping we... I wouldn't have to-",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 563,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 296,
          y = 16,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["dialogue"] = true,
            ["timelinespeed"] = 0
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 763,
      name = "bosstalk3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 547,
          name = "bubble",
          type = "Polygon",
          shape = "polygon",
          x = 64,
          y = 104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = -8 },
            { x = -16, y = 8 },
            { x = -16, y = 88 },
            { x = 0, y = 104 },
            { x = 96, y = 104 },
            { x = 88, y = 136 },
            { x = 112, y = 104 },
            { x = 160, y = 104 },
            { x = 176, y = 88 },
            { x = 176, y = 8 },
            { x = 160, y = -8 },
            { x = 64, y = -8 },
            { x = 56, y = -8 },
            { x = 48, y = -8 }
          },
          properties = {}
        },
        {
          id = 548,
          name = "text",
          type = "",
          shape = "text",
          x = 56,
          y = 112,
          width = 176,
          height = 80,
          rotation = 0,
          visible = true,
          text = "Why are you doing this to us?\nDid Da-... Did Father make you do this?!",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 564,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 296,
          y = 24,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["dialogue"] = true,
            ["timelinespeed"] = 0
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 764,
      name = "bosstalk4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 549,
          name = "bubble",
          type = "Polygon",
          shape = "polygon",
          x = 64,
          y = 104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = -8 },
            { x = -16, y = 8 },
            { x = -16, y = 88 },
            { x = 0, y = 104 },
            { x = 96, y = 104 },
            { x = 104, y = 104 },
            { x = 112, y = 104 },
            { x = 160, y = 104 },
            { x = 176, y = 88 },
            { x = 176, y = 8 },
            { x = 160, y = -8 },
            { x = 64, y = -8 },
            { x = 72, y = -40 },
            { x = 48, y = -8 }
          },
          properties = {}
        },
        {
          id = 550,
          name = "text",
          type = "",
          shape = "text",
          x = 56,
          y = 112,
          width = 176,
          height = 88,
          rotation = 0,
          visible = true,
          text = "We must take this land or our people will starve to death!\nTurn around and I'll let you go.",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 565,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 296,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["dialogue"] = true,
            ["timelinespeed"] = 0
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 765,
      name = "bosstalk5",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 551,
          name = "bubble",
          type = "Polygon",
          shape = "polygon",
          x = 64,
          y = 104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = -8 },
            { x = -16, y = 8 },
            { x = -16, y = 88 },
            { x = 0, y = 104 },
            { x = 96, y = 104 },
            { x = 88, y = 136 },
            { x = 112, y = 104 },
            { x = 160, y = 104 },
            { x = 176, y = 88 },
            { x = 176, y = 8 },
            { x = 160, y = -8 },
            { x = 64, y = -8 },
            { x = 56, y = -8 },
            { x = 48, y = -8 }
          },
          properties = {}
        },
        {
          id = 552,
          name = "text",
          type = "",
          shape = "text",
          x = 56,
          y = 112,
          width = 176,
          height = 88,
          rotation = 0,
          visible = true,
          text = "NO! I won't let anyone get hurt anymore!\n\nLet me go talk to him!",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 566,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 296,
          y = 40,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["dialogue"] = true,
            ["timelinespeed"] = 0
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 766,
      name = "bosstalk6",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 553,
          name = "bubble",
          type = "Polygon",
          shape = "polygon",
          x = 64,
          y = 104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = -8 },
            { x = -16, y = 8 },
            { x = -16, y = 88 },
            { x = 0, y = 104 },
            { x = 96, y = 104 },
            { x = 104, y = 104 },
            { x = 112, y = 104 },
            { x = 160, y = 104 },
            { x = 176, y = 88 },
            { x = 176, y = 8 },
            { x = 160, y = -8 },
            { x = 64, y = -8 },
            { x = 72, y = -40 },
            { x = 48, y = -8 }
          },
          properties = {}
        },
        {
          id = 554,
          name = "text",
          type = "",
          shape = "text",
          x = 56,
          y = 112,
          width = 176,
          height = 88,
          rotation = 0,
          visible = true,
          text = "You know I can't do that.\n\nI'm sorry...Amelia...",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        },
        {
          id = 567,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 296,
          y = 48,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["dialogue"] = true,
            ["timelinespeed"] = 0
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 6,
      name = "fleepaths",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 337,
          name = "",
          type = "",
          shape = "polyline",
          x = -72,
          y = 776,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -16, y = 0 }
          },
          properties = {}
        },
        {
          id = 338,
          name = "",
          type = "",
          shape = "polyline",
          x = 312,
          y = 752,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 40, y = 0 }
          },
          properties = {}
        },
        {
          id = 343,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = 72,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -120 },
            { x = 0, y = -40 },
            { x = 0, y = 40 }
          },
          properties = {}
        },
        {
          id = 451,
          name = "",
          type = "",
          shape = "polyline",
          x = -16,
          y = 1768,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 24, y = 0 },
            { x = 56, y = 8 },
            { x = 88, y = 32 },
            { x = 104, y = 64 },
            { x = 136, y = 80 },
            { x = 168, y = 88 },
            { x = 200, y = 104 },
            { x = 232, y = 128 },
            { x = 280, y = 136 },
            { x = 328, y = 136 }
          },
          properties = {}
        },
        {
          id = 453,
          name = "",
          type = "",
          shape = "polyline",
          x = 104,
          y = 1424,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -128, y = 104 },
            { x = -80, y = 72 },
            { x = -56, y = 40 },
            { x = -48, y = 0 },
            { x = -48, y = -80 },
            { x = -56, y = -128 },
            { x = -80, y = -152 },
            { x = -128, y = -168 }
          },
          properties = {}
        },
        {
          id = 456,
          name = "",
          type = "",
          shape = "polyline",
          x = 288,
          y = 1232,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 32, y = 0 },
            { x = -16, y = 32 },
            { x = -48, y = 64 },
            { x = -56, y = 104 },
            { x = -56, y = 192 },
            { x = -48, y = 232 },
            { x = -24, y = 256 },
            { x = 24, y = 280 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 9,
      name = "preboss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 568,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 56,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["soundfile"] = "snd/alarm4.ogg"
          }
        },
        {
          id = 569,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = 32,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 8 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 680,
      name = "heavy2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 498,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 224,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 511,
          name = "",
          type = "",
          shape = "rectangle",
          x = -24,
          y = 360,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 894,
          visible = true,
          properties = {
            ["fleeing"] = true
          }
        },
        {
          id = 512,
          name = "",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 304,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 894,
          visible = true,
          properties = {
            ["fleeing"] = true
          }
        },
        {
          id = 514,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 272,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 894,
          visible = true,
          properties = {
            ["fleeing"] = true
          }
        },
        {
          id = 515,
          name = "",
          type = "",
          shape = "rectangle",
          x = 312,
          y = 328,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 894,
          visible = true,
          properties = {
            ["fleeing"] = true
          }
        },
        {
          id = 516,
          name = "",
          type = "",
          shape = "polyline",
          x = -8,
          y = 304,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 152, y = -8 },
            { x = 320, y = -8 }
          },
          properties = {}
        },
        {
          id = 517,
          name = "",
          type = "",
          shape = "polyline",
          x = 288,
          y = 272,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -144, y = -8 },
            { x = -312, y = -8 }
          },
          properties = {}
        },
        {
          id = 518,
          name = "",
          type = "",
          shape = "polyline",
          x = 296,
          y = 328,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 16, y = 0 },
            { x = -152, y = -8 },
            { x = -320, y = -8 }
          },
          properties = {}
        },
        {
          id = 519,
          name = "",
          type = "",
          shape = "polyline",
          x = -16,
          y = 360,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 0 },
            { x = 160, y = -16 },
            { x = 328, y = -16 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 12,
      name = "catapultsC",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 210,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 312,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 482,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["offscreenshot"] = false
          }
        },
        {
          id = 211,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 280,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 663,
          visible = true,
          properties = {}
        },
        {
          id = 212,
          name = "path",
          type = "",
          shape = "polyline",
          x = 96,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 48, y = 112 },
            { x = 48, y = 176 }
          },
          properties = {}
        },
        {
          id = 214,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 328,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 13,
      name = "archerscatapults",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 137,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 480,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 57,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 456,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 642,
          visible = true,
          properties = {
            ["pathmode"] = "relative",
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 58,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 424,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 642,
          visible = true,
          properties = {
            ["pathmode"] = "relative",
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 56,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 416,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 642,
          visible = true,
          properties = {
            ["pathmode"] = "relative",
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 54,
          name = "path",
          type = "",
          shape = "polyline",
          x = 44,
          y = 384,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 4, y = 40 },
            { x = 36, y = 40 },
            { x = 68, y = 88 },
            { x = 132, y = 88 },
            { x = 164, y = 40 },
            { x = 212, y = 40 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 84,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 360,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 663,
          visible = true,
          properties = {}
        },
        {
          id = 80,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 384,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 481,
          visible = true,
          properties = {
            ["faceangle"] = 45,
            ["offscreenshot"] = true,
            ["pathspeed"] = "0",
            ["pathspeedfunction"] = "",
            ["pathspeedmin"] = 0
          }
        },
        {
          id = 85,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 360,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 663,
          visible = true,
          properties = {}
        },
        {
          id = 81,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 384,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 483,
          visible = true,
          properties = {
            ["faceangle"] = 135,
            ["offscreenshot"] = true,
            ["pathspeed"] = "0",
            ["pathspeedfunction"] = "",
            ["pathspeedmin"] = 0
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 14,
      name = "decoC",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 193,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 88,
          y = 448,
          width = 120,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 335,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 480,
          width = 64,
          height = 48,
          rotation = 0,
          gid = 805,
          visible = true,
          properties = {
            ["iscover"] = true
          }
        },
        {
          id = 336,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 480,
          width = 64,
          height = 48,
          rotation = 0,
          gid = 804,
          visible = true,
          properties = {
            ["iscover"] = true
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 16,
      name = "pikemencatapult4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 140,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 584,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 20,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 536,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 536,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 125,
          name = "pikemanleader",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 568,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 123,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 504,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 122,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 504,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 120,
          name = "pikemanleader",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 568,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 118,
          name = "path",
          type = "",
          shape = "polyline",
          x = 192,
          y = 352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 248 },
            { x = 72, y = 464 },
            { x = 48, y = 512 },
            { x = 16, y = 664 }
          },
          properties = {}
        },
        {
          id = 117,
          name = "path",
          type = "",
          shape = "polyline",
          x = 96,
          y = 336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 264 },
            { x = -32, y = 432 },
            { x = -80, y = 464 },
            { x = -80, y = 512 },
            { x = -40, y = 528 },
            { x = -8, y = 672 }
          },
          properties = {}
        },
        {
          id = 503,
          name = "path",
          type = "",
          shape = "polyline",
          x = 88,
          y = 504,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 16 },
            { x = -16, y = 72 }
          },
          properties = {}
        },
        {
          id = 504,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 528,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 482,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["offscreenshot"] = true
          }
        },
        {
          id = 505,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 496,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 663,
          visible = true,
          properties = {}
        },
        {
          id = 506,
          name = "path",
          type = "",
          shape = "polyline",
          x = 232,
          y = 504,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 16 },
            { x = -16, y = 72 }
          },
          properties = {}
        },
        {
          id = 507,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 528,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 482,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["offscreenshot"] = true
          }
        },
        {
          id = 508,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 496,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 663,
          visible = true,
          properties = {}
        },
        {
          id = 509,
          name = "",
          type = "",
          shape = "polyline",
          x = 88,
          y = 600,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 16, y = -32 },
            { x = 24, y = -64 },
            { x = 32, y = -96 }
          },
          properties = {}
        },
        {
          id = 510,
          name = "",
          type = "",
          shape = "polyline",
          x = 200,
          y = 608,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = -8 },
            { x = -16, y = -40 },
            { x = -24, y = -72 },
            { x = -32, y = -104 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 23,
      name = "archersA",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 50,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 816,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 642,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "nsin"
          }
        },
        {
          id = 51,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 296,
          y = 784,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 642,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "nsin"
          }
        },
        {
          id = 52,
          name = "path",
          type = "",
          shape = "polyline",
          x = 96,
          y = 808,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -64, y = 8 },
            { x = 32, y = -8 },
            { x = 128, y = -8 }
          },
          properties = {}
        },
        {
          id = 53,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 672,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 148,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 672,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 786,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 477,
          name = "",
          type = "",
          shape = "polygon",
          x = 144,
          y = 672,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 40, y = 16 },
            { x = 40, y = 48 },
            { x = -24, y = 80 },
            { x = -16, y = 120 },
            { x = -96, y = 128 },
            { x = 80, y = 120 },
            { x = 56, y = 72 },
            { x = -40, y = 48 },
            { x = -40, y = 16 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 24,
      name = "decoB",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 225,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 104,
          y = 784,
          width = 64,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 334,
          name = "rock",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 816,
          width = 64,
          height = 48,
          rotation = 0,
          gid = 804,
          visible = true,
          properties = {
            ["iscover"] = true
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 709,
      name = "heavy1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 520,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 848,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 521,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 856,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 894,
          visible = true,
          properties = {
            ["pathspeedweighted"] = true
          }
        },
        {
          id = 522,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 848,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 894,
          visible = true,
          properties = {
            ["pathspeedweighted"] = true
          }
        },
        {
          id = 528,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 80,
          y = 856,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 16, y = 48 },
            { x = -8, y = -144 },
            { x = -8, y = -216 },
            { x = -64, y = -344 },
            { x = -104, y = -360 }
          },
          properties = {
            ["cost"] = 2
          }
        },
        {
          id = 529,
          name = "",
          type = "Path",
          shape = "polyline",
          x = 192,
          y = 840,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 64 },
            { x = 0, y = -56 },
            { x = 16, y = -80 },
            { x = 24, y = -208 },
            { x = 56, y = -240 },
            { x = 64, y = -320 },
            { x = 112, y = -344 }
          },
          properties = {
            ["cost"] = 2
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 44,
      name = "npcgrouptemplate",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 349,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = -376,
          y = 2000,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 760,
      name = "firestarter",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 531,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1712,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "airobjects"
          }
        },
        {
          id = 532,
          name = "",
          type = "FireStarter",
          shape = "ellipse",
          x = 88,
          y = 1752,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 533,
          name = "",
          type = "FireStarter",
          shape = "ellipse",
          x = 104,
          y = 1888,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 535,
          name = "",
          type = "FireStarter",
          shape = "ellipse",
          x = 136,
          y = 1784,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 536,
          name = "",
          type = "FireStarter",
          shape = "ellipse",
          x = 216,
          y = 1816,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 537,
          name = "",
          type = "FireStarter",
          shape = "ellipse",
          x = 8,
          y = 1856,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 11,
      name = "pikemen5",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 195,
          name = "pikemanleader",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 760,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 196,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 696,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 197,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 760,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 198,
          name = "pikemanleader",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 696,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 200,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 656,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 201,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = -48,
          y = 728,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 202,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 728,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 203,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 656,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 318,
          name = "path",
          type = "",
          shape = "polyline",
          x = 32,
          y = 608,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -48, y = 152 },
            { x = -16, y = 176 },
            { x = 40, y = 192 },
            { x = 56, y = 232 },
            { x = 24, y = 264 },
            { x = 24, y = 480 }
          },
          properties = {}
        },
        {
          id = 319,
          name = "path",
          type = "",
          shape = "polyline",
          x = 136,
          y = 608,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 168, y = 152 },
            { x = 144, y = 176 },
            { x = 56, y = 184 },
            { x = 56, y = 232 },
            { x = 88, y = 256 },
            { x = 88, y = 480 }
          },
          properties = {}
        },
        {
          id = 499,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = -80,
          y = 696,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 500,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 696,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 501,
          name = "",
          type = "",
          shape = "polyline",
          x = 96,
          y = 696,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 8, y = 64 },
            { x = 0, y = 136 },
            { x = 0, y = 400 }
          },
          properties = {}
        },
        {
          id = 502,
          name = "",
          type = "",
          shape = "polyline",
          x = 192,
          y = 696,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 8, y = 40 },
            { x = -16, y = 112 },
            { x = 0, y = 216 },
            { x = 0, y = 400 }
          },
          properties = {}
        },
        {
          id = 530,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 688,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 679,
      name = "pikemen4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 478,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 928,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 481,
          name = "",
          type = "",
          shape = "polyline",
          x = 80,
          y = 928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -24, y = 8 },
            { x = -40, y = 64 },
            { x = -104, y = 88 },
            { x = -104, y = 128 },
            { x = 16, y = 208 },
            { x = 48, y = 280 },
            { x = 48, y = 456 }
          },
          properties = {}
        },
        {
          id = 482,
          name = "",
          type = "",
          shape = "polyline",
          x = 208,
          y = 928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 8 },
            { x = 32, y = 80 },
            { x = 104, y = 96 },
            { x = 104, y = 144 },
            { x = -8, y = 208 },
            { x = -48, y = 264 },
            { x = -48, y = 456 }
          },
          properties = {}
        },
        {
          id = 483,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 936,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 484,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 936,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 488,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 904,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 489,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 904,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 490,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 928,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 491,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 896,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 492,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 864,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 493,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 864,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 494,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 896,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 495,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 928,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 496,
          name = "",
          type = "",
          shape = "polyline",
          x = 88,
          y = 928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -8, y = 48 },
            { x = 16, y = 112 },
            { x = 24, y = 192 },
            { x = -24, y = 448 }
          },
          properties = {}
        },
        {
          id = 497,
          name = "",
          type = "",
          shape = "polyline",
          x = 184,
          y = 928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 48 },
            { x = 0, y = 104 },
            { x = -8, y = 192 },
            { x = 40, y = 448 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 25,
      name = "pikemencatapult3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 26,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 1056,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 28,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 1072,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 32,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 1064,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 42,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1056,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 31,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 1048,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 29,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 1040,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 317,
          name = "pathside",
          type = "",
          shape = "polyline",
          x = 240,
          y = 984,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 64, y = 88 },
            { x = -64, y = 152 },
            { x = -64, y = 512 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 430,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 1048,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 481,
          visible = true,
          properties = {}
        },
        {
          id = 432,
          name = "",
          type = "",
          shape = "polyline",
          x = 32,
          y = 1048,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 40, y = 40 }
          },
          properties = {}
        },
        {
          id = 435,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 1024,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 663,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 26,
      name = "pikemencatapult2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 5,
          name = "pathside",
          type = "",
          shape = "polyline",
          x = 56,
          y = 1136,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -72, y = -48 },
            { x = 56, y = 16 },
            { x = 56, y = 432 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 6,
          name = "leader",
          type = "",
          shape = "rectangle",
          x = -48,
          y = 1072,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 12,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 1088,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 41,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1088,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 30,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = -80,
          y = 1056,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 16,
          name = "leader",
          type = "",
          shape = "rectangle",
          x = -32,
          y = 1080,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 22,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 1064,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 431,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1048,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 483,
          visible = true,
          properties = {}
        },
        {
          id = 433,
          name = "",
          type = "",
          shape = "polyline",
          x = 256,
          y = 1048,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -40, y = 40 }
          },
          properties = {}
        },
        {
          id = 434,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1024,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 663,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 27,
      name = "pikemencatapult1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 35,
          name = "path",
          type = "",
          shape = "polyline",
          x = 144,
          y = 1160,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -8 },
            { x = 0, y = 368 }
          },
          properties = {}
        },
        {
          id = 36,
          name = "leader",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1144,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 37,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 1144,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 38,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1152,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 40,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1136,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 27,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 1136,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 33,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 1136,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 440,
      name = "swordsmen3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 462,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1312,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 463,
          name = "",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 1520,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 762,
          visible = true,
          properties = {}
        },
        {
          id = 464,
          name = "",
          type = "",
          shape = "rectangle",
          x = 296,
          y = 1528,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 762,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 17,
      name = "swordsmen2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 110,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1360,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 459,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 1360,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 762,
          visible = true,
          properties = {}
        },
        {
          id = 460,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1360,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 762,
          visible = true,
          properties = {}
        },
        {
          id = 461,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 738,
          visible = true,
          properties = {}
        },
        {
          id = 468,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 1224,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 762,
          visible = true,
          properties = {}
        },
        {
          id = 469,
          name = "",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 762,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 18,
      name = "swordsmen1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 105,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1424,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 457,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1424,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 762,
          visible = true,
          properties = {}
        },
        {
          id = 458,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1424,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 762,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 439,
      name = "swordsmenbounds",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 454,
          name = "",
          type = "EnemyBounds",
          shape = "polygon",
          x = -24,
          y = 1280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 8 },
            { x = 24, y = 16 },
            { x = 48, y = 48 },
            { x = 48, y = 160 },
            { x = 24, y = 184 },
            { x = 0, y = 192 }
          },
          properties = {}
        },
        {
          id = 455,
          name = "",
          type = "EnemyBounds",
          shape = "polygon",
          x = 288,
          y = 1256,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 32, y = 8 },
            { x = -16, y = 24 },
            { x = -40, y = 72 },
            { x = -40, y = 168 },
            { x = -24, y = 208 },
            { x = 32, y = 224 }
          },
          properties = {}
        },
        {
          id = 465,
          name = "",
          type = "EnemyBounds",
          shape = "polygon",
          x = -8,
          y = 1584,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -64, y = -32 },
            { x = 80, y = 32 },
            { x = 80, y = 104 },
            { x = -64, y = 224 }
          },
          properties = {}
        },
        {
          id = 466,
          name = "",
          type = "EnemyBounds",
          shape = "polygon",
          x = 296,
          y = 1616,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 96, y = -40 },
            { x = -72, y = 40 },
            { x = -88, y = 96 },
            { x = -40, y = 160 },
            { x = 96, y = 184 }
          },
          properties = {}
        },
        {
          id = 467,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 1312,
          width = 16,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 470,
          name = "",
          type = "EnemyBounds",
          shape = "polygon",
          x = -8,
          y = 1144,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 24, y = 0 },
            { x = 40, y = 24 },
            { x = 48, y = 56 },
            { x = 48, y = 80 },
            { x = -24, y = 88 },
            { x = -24, y = -8 }
          },
          properties = {}
        },
        {
          id = 471,
          name = "",
          type = "EnemyBounds",
          shape = "polygon",
          x = 288,
          y = 1128,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 32, y = -16 },
            { x = -24, y = 16 },
            { x = -24, y = 72 },
            { x = 32, y = 88 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 226,
      name = "archercatapult",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 436,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1528,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 442,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = 1480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 40 }
          },
          properties = {}
        },
        {
          id = 439,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1480,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 482,
          visible = true,
          properties = {}
        },
        {
          id = 440,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1448,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 879,
          visible = true,
          properties = {}
        },
        {
          id = 443,
          name = "",
          type = "",
          shape = "rectangle",
          x = -32,
          y = 1632,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 642,
          visible = true,
          properties = {
            ["pathfinder"] = "linear1way"
          }
        },
        {
          id = 444,
          name = "",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 1688,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 642,
          visible = true,
          properties = {}
        },
        {
          id = 447,
          name = "",
          type = "",
          shape = "polygon",
          x = -48,
          y = 1640,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 16, y = -8 },
            { x = 48, y = -80 },
            { x = 128, y = -24 },
            { x = 128, y = -8 },
            { x = 112, y = 8 },
            { x = 88, y = 16 },
            { x = 136, y = 24 },
            { x = 136, y = 48 },
            { x = 112, y = 56 },
            { x = 72, y = 56 },
            { x = 40, y = 24 }
          },
          properties = {}
        },
        {
          id = 448,
          name = "",
          type = "",
          shape = "polygon",
          x = 336,
          y = 1688,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -48, y = -88 },
            { x = -104, y = -56 },
            { x = -120, y = -24 },
            { x = -80, y = 8 },
            { x = -120, y = 8 },
            { x = -136, y = 24 },
            { x = -128, y = 40 },
            { x = -40, y = 56 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 139,
      name = "catapult3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 422,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1608,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 423,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1600,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 482,
          visible = true,
          properties = {}
        },
        {
          id = 424,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 1568,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 482,
          visible = true,
          properties = {}
        },
        {
          id = 425,
          name = "",
          type = "",
          shape = "polyline",
          x = 232,
          y = 1576,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 24 },
            { x = -40, y = 88 }
          },
          properties = {}
        },
        {
          id = 426,
          name = "",
          type = "",
          shape = "polyline",
          x = 80,
          y = 1560,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 8 },
            { x = 24, y = 96 }
          },
          properties = {}
        },
        {
          id = 427,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 1536,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 663,
          visible = true,
          properties = {}
        },
        {
          id = 428,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1568,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 663,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 117,
      name = "catapult2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 418,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1664,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 419,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1656,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 482,
          visible = true,
          properties = {}
        },
        {
          id = 420,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1624,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 663,
          visible = true,
          properties = {}
        },
        {
          id = 421,
          name = "",
          type = "",
          shape = "polyline",
          x = 112,
          y = 1656,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 8, y = 56 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 59,
      name = "catapult1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 411,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1712,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 415,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 1704,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 482,
          visible = true,
          properties = {}
        },
        {
          id = 416,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 1672,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 663,
          visible = true,
          properties = {}
        },
        {
          id = 417,
          name = "",
          type = "",
          shape = "polyline",
          x = 184,
          y = 1704,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -8, y = 48 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 19,
      name = "friendswordsmen",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 99,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1792,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground",
            ["defeatenemiesbonus"] = 5000,
            ["soundfile"] = "snd/hyaa.ogg"
          }
        },
        {
          id = 340,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 1792,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 540,
          visible = true,
          properties = {
            ["emotetileid"] = "help",
            ["emotetileset"] = "emotes",
            ["fleeing"] = true,
            ["health"] = 4,
            ["pathfinder"] = "linearDown"
          }
        },
        {
          id = 109,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = -32,
          y = 1800,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 762,
          visible = true,
          properties = {
            ["firetargetid"] = "340",
            ["nexttypeparam"] = 4,
            ["pathdistmin"] = 20,
            ["pathid"] = "340"
          }
        },
        {
          id = 339,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 1776,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 762,
          visible = true,
          properties = {
            ["firetargetid"] = "345",
            ["nexttypeparam"] = 4,
            ["pathdistmin"] = 20,
            ["pathid"] = "345"
          }
        },
        {
          id = 345,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1776,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 564,
          visible = true,
          properties = {
            ["emotetileid"] = "help",
            ["emotetileset"] = "emotes",
            ["fleeing"] = true,
            ["health"] = 4,
            ["pathfinder"] = "linearDown"
          }
        },
        {
          id = 449,
          name = "",
          type = "",
          shape = "polyline",
          x = 80,
          y = 1792,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -24, y = 0 },
            { x = -8, y = 48 },
            { x = 72, y = 80 },
            { x = 136, y = 120 },
            { x = 248, y = 128 }
          },
          properties = {}
        },
        {
          id = 450,
          name = "",
          type = "",
          shape = "polyline",
          x = 96,
          y = 1768,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -32, y = 8 },
            { x = -8, y = 48 },
            { x = 72, y = 80 },
            { x = 120, y = 112 },
            { x = 224, y = 120 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 58,
      name = "archer2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 407,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1888,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 408,
          name = "",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 1880,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 642,
          visible = true,
          properties = {
            ["pathfinder"] = "linear1way"
          }
        },
        {
          id = 409,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 1904,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 40, y = 104 },
            { x = 112, y = 112 },
            { x = 88, y = 56 },
            { x = 32, y = 40 },
            { x = 32, y = 16 },
            { x = 72, y = 0 },
            { x = 56, y = -32 },
            { x = -24, y = -48 }
          },
          properties = {}
        },
        {
          id = 410,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1904,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 642,
          visible = true,
          properties = {
            ["pathfinder"] = "linear1way"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 52,
      name = "archer1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 395,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1936,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 396,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1944,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 642,
          visible = true,
          properties = {
            ["pathfinder"] = "linear1way"
          }
        },
        {
          id = 397,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = 1888,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 80, y = 56 },
            { x = 32, y = 72 },
            { x = 32, y = 96 },
            { x = 80, y = 128 },
            { x = 80, y = 152 },
            { x = 32, y = 168 },
            { x = 32, y = 192 },
            { x = 168, y = 224 }
          },
          properties = {}
        },
        {
          id = 398,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1920,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 642,
          visible = true,
          properties = {
            ["pathfinder"] = "linear1way"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 717,
      name = "pikemen3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 525,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1984,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 403,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 1960,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 405,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 1984,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 392,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 2080,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 393,
          name = "",
          type = "",
          shape = "rectangle",
          x = -32,
          y = 2064,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 526,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 2080,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 104, y = 96 },
            { x = 168, y = 384 }
          },
          properties = {}
        },
        {
          id = 527,
          name = "",
          type = "",
          shape = "polyline",
          x = 152,
          y = 1984,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -16, y = 48 },
            { x = 32, y = 120 },
            { x = 40, y = 200 },
            { x = 32, y = 456 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 56,
      name = "pikemen2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 399,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2016,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 400,
          name = "",
          type = "",
          shape = "rectangle",
          x = 296,
          y = 2040,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 401,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 2024,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 402,
          name = "",
          type = "",
          shape = "rectangle",
          x = 344,
          y = 2008,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 406,
          name = "",
          type = "",
          shape = "polyline",
          x = 288,
          y = 2032,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 8 },
            { x = -96, y = 64 },
            { x = -96, y = 112 },
            { x = -152, y = 184 },
            { x = -208, y = 344 },
            { x = -128, y = 456 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 51,
      name = "pikemen1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 388,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2048,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 389,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 2048,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 390,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 2024,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 391,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 2000,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {}
        },
        {
          id = 394,
          name = "",
          type = "",
          shape = "polyline",
          x = 104,
          y = 1984,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 32, y = 64 },
            { x = 0, y = 152 },
            { x = 0, y = 248 },
            { x = 40, y = 344 },
            { x = 40, y = 456 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 50,
      name = "friendpikemen5b",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 379,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2120,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 380,
          name = "",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 2096,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "377"
          }
        },
        {
          id = 381,
          name = "",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 2096,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "378"
          }
        },
        {
          id = 382,
          name = "",
          type = "",
          shape = "rectangle",
          x = -48,
          y = 2080,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "377"
          }
        },
        {
          id = 383,
          name = "",
          type = "",
          shape = "polyline",
          x = -16,
          y = 2096,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 96, y = 64 },
            { x = 144, y = 160 },
            { x = 144, y = 448 }
          },
          properties = {}
        },
        {
          id = 384,
          name = "",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 2080,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "378"
          }
        },
        {
          id = 385,
          name = "",
          type = "",
          shape = "polyline",
          x = 304,
          y = 2096,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -96, y = 64 },
            { x = -144, y = 160 },
            { x = -144, y = 448 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 49,
      name = "friendpikemen5",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 374,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2128,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 367,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 2112,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "377"
          }
        },
        {
          id = 364,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 2112,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "378"
          }
        },
        {
          id = 372,
          name = "",
          type = "",
          shape = "polyline",
          x = 128,
          y = 2112,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -32, y = 16 },
            { x = -48, y = 48 },
            { x = -48, y = 80 },
            { x = 0, y = 176 },
            { x = 0, y = 672 }
          },
          properties = {}
        },
        {
          id = 373,
          name = "",
          type = "",
          shape = "polyline",
          x = 160,
          y = 2112,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 32, y = 16 },
            { x = 48, y = 48 },
            { x = 48, y = 80 },
            { x = 0, y = 176 },
            { x = 0, y = 672 }
          },
          properties = {}
        },
        {
          id = 377,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 2128,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 840,
          visible = true,
          properties = {
            ["emotetileid"] = "sweat",
            ["pathspeed"] = "120"
          }
        },
        {
          id = 378,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 2128,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 864,
          visible = true,
          properties = {
            ["emotetileid"] = "sweat",
            ["pathspeed"] = "120"
          }
        },
        {
          id = 386,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 2088,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "377"
          }
        },
        {
          id = 387,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 2088,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 678,
          visible = true,
          properties = {
            ["firetargetid"] = "378"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 48,
      name = "friendpikemen4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 363,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2192,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 63,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 2176,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 540,
          visible = true,
          properties = {
            ["emotetileid"] = "sweat",
            ["pathmode"] = "relative",
            ["pathspeed"] = "120"
          }
        },
        {
          id = 72,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 2200,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 852,
          visible = true,
          properties = {
            ["emotetileid"] = "sweat",
            ["health"] = 10,
            ["pathmode"] = "relative",
            ["pathspeed"] = "120"
          }
        },
        {
          id = 366,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 2128,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "72",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 368,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 2128,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "72",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 369,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 2152,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "72",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 370,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 2152,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "72",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 371,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = 2192,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 608 }
          },
          properties = {}
        },
        {
          id = 375,
          name = "",
          type = "",
          shape = "polyline",
          x = 104,
          y = 2160,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -8 },
            { x = 8, y = 24 },
            { x = 8, y = 96 },
            { x = 24, y = 128 },
            { x = 24, y = 416 }
          },
          properties = {}
        },
        {
          id = 376,
          name = "",
          type = "",
          shape = "polyline",
          x = 184,
          y = 2152,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -8, y = 32 },
            { x = -8, y = 104 },
            { x = -24, y = 136 },
            { x = -24, y = 408 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 47,
      name = "friendpikemen3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 357,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2240,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 61,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 2248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 516,
          visible = true,
          properties = {
            ["emotetileid"] = "sweat",
            ["health"] = 10,
            ["pathmode"] = "relative",
            ["pathspeed"] = "120"
          }
        },
        {
          id = 62,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 2232,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 528,
          visible = true,
          properties = {
            ["emotetileid"] = "sweat",
            ["health"] = 10,
            ["pathmode"] = "relative",
            ["pathspeed"] = "120"
          }
        },
        {
          id = 358,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 2192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "62"
          }
        },
        {
          id = 359,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 2192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "61"
          }
        },
        {
          id = 360,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = 2240,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 544 }
          },
          properties = {}
        },
        {
          id = 361,
          name = "",
          type = "",
          shape = "polyline",
          x = 64,
          y = 2184,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 48, y = 8 },
            { x = 48, y = 72 },
            { x = 64, y = 104 },
            { x = 64, y = 640 }
          },
          properties = {}
        },
        {
          id = 362,
          name = "",
          type = "",
          shape = "polyline",
          x = 224,
          y = 2184,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -48, y = 8 },
            { x = -48, y = 72 },
            { x = -64, y = 104 },
            { x = -64, y = 600 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 46,
      name = "friendpikemen2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 353,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2288,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 65,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 2288,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 564,
          visible = true,
          properties = {
            ["emotetileid"] = "sweat",
            ["health"] = 10,
            ["pathspeed"] = "120"
          }
        },
        {
          id = 354,
          name = "",
          type = "",
          shape = "polyline",
          x = 112,
          y = 2288,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 480 },
            { x = 96, y = 0 }
          },
          properties = {}
        },
        {
          id = 355,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 2240,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "65"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 45,
      name = "friendpikemen1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 350,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2320,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 71,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 2320,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 612,
          visible = true,
          properties = {
            ["emotetileid"] = "sweat",
            ["health"] = 10,
            ["pathspeed"] = "120"
          }
        },
        {
          id = 352,
          name = "",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 2272,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 702,
          visible = true,
          properties = {
            ["firetargetid"] = "71"
          }
        },
        {
          id = 356,
          name = "",
          type = "",
          shape = "polyline",
          x = 80,
          y = 2320,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 96, y = 480 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 29,
      name = "friendsfleeing",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 60,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 2352,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["emotetileid"] = "sweat",
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 300
          }
        },
        {
          id = 64,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 2312,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 552,
          visible = true,
          properties = {
            ["emotetileid"] = "sweat",
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 300
          }
        },
        {
          id = 66,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 2352,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 576,
          visible = true,
          properties = {
            ["emotetileid"] = "sweat",
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 300
          }
        },
        {
          id = 69,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 2320,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 588,
          visible = true,
          properties = {
            ["emotetileid"] = "sweat",
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 300
          }
        },
        {
          id = 70,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 2336,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 600,
          visible = true,
          properties = {
            ["emotetileid"] = "sweat",
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 300
          }
        },
        {
          id = 73,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 2368,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "airobjects",
            ["soundfile"] = "snd/scream.ogg"
          }
        },
        {
          id = 74,
          name = "path",
          type = "",
          shape = "polyline",
          x = 0,
          y = 2352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 832 }
          },
          properties = {}
        }
      }
    }
  }
}
