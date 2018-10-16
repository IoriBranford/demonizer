return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 18,
  height = 245,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 78,
  nextobjectid = 328,
  properties = {
    ["cameraid"] = 2,
    ["music"] = "mus/09 - Blue Sky Laundry.vgz",
    ["nextmap"] = "chapel.lua",
    ["overlaymap"] = "gameplay.lua",
    ["playerid"] = 1
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
      imageheight = 64,
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
      tilecount = 32,
      tiles = {}
    },
    {
      name = "thatched-roof",
      firstgid = 417,
      filename = "img/thatched-roof.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 16,
      image = "img/thatched-roof.png",
      imagewidth = 256,
      imageheight = 256,
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
      tilecount = 256,
      tiles = {}
    },
    {
      name = "cottage",
      firstgid = 673,
      filename = "img/cottage.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 16,
      image = "img/cottage.png",
      imagewidth = 256,
      imageheight = 256,
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
      tilecount = 256,
      tiles = {}
    },
    {
      name = "fence_alt",
      firstgid = 929,
      filename = "img/fence_alt.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/fence_alt.png",
      imagewidth = 96,
      imageheight = 192,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      terrains = {},
      tilecount = 18,
      tiles = {}
    },
    {
      name = "crops",
      firstgid = 947,
      filename = "img/crops.tsx",
      tilewidth = 16,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 7,
      image = "img/crops.png",
      imagewidth = 112,
      imageheight = 160,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 32
      },
      properties = {},
      terrains = {},
      tilecount = 35,
      tiles = {}
    },
    {
      name = "catapult",
      firstgid = 982,
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
        ["direction_east"] = 0,
        ["numdirections"] = 8,
        ["row_empty"] = 2,
        ["row_windup"] = 0
      },
      terrains = {},
      tilecount = 24,
      tiles = {
        {
          id = 0,
          type = "Catapult",
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
                x = 18,
                y = 18,
                width = 36,
                height = 36,
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
              duration = 467
            },
            {
              tileid = 0,
              duration = 250
            },
            {
              tileid = 8,
              duration = 250
            },
            {
              tileid = 0,
              duration = 33
            }
          }
        },
        {
          id = 1,
          type = "Catapult"
        },
        {
          id = 2,
          type = "Catapult"
        },
        {
          id = 3,
          type = "Catapult"
        },
        {
          id = 4,
          type = "Catapult"
        },
        {
          id = 5,
          type = "Catapult"
        },
        {
          id = 6,
          type = "Catapult"
        },
        {
          id = 7,
          type = "Catapult"
        },
        {
          id = 8,
          type = "Catapult"
        },
        {
          id = 9,
          type = "Catapult"
        },
        {
          id = 10,
          type = "Catapult"
        },
        {
          id = 11,
          type = "Catapult"
        },
        {
          id = 12,
          type = "Catapult"
        },
        {
          id = 13,
          type = "Catapult"
        },
        {
          id = 14,
          type = "Catapult"
        },
        {
          id = 15,
          type = "Catapult"
        },
        {
          id = 16,
          type = "Catapult"
        },
        {
          id = 17,
          type = "Catapult"
        },
        {
          id = 18,
          type = "Catapult"
        },
        {
          id = 19,
          type = "Catapult"
        },
        {
          id = 20,
          type = "Catapult"
        },
        {
          id = 21,
          type = "Catapult"
        },
        {
          id = 22,
          type = "Catapult"
        },
        {
          id = 23,
          type = "Catapult"
        }
      }
    },
    {
      name = "Archer",
      firstgid = 1006,
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
      name = "CatapultOperator",
      firstgid = 1030,
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
      name = "Militia",
      firstgid = 1042,
      filename = "img/human/enemy/Militia.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "img/human/enemy/Militia.png",
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
          type = "Militia",
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
          type = "Militia"
        },
        {
          id = 2,
          type = "Militia"
        },
        {
          id = 3,
          type = "Militia",
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
          type = "Militia"
        },
        {
          id = 5,
          type = "Militia",
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
          type = "Militia",
          properties = {
            ["name"] = "south"
          }
        },
        {
          id = 7,
          type = "Militia"
        },
        {
          id = 8,
          type = "Militia"
        },
        {
          id = 9,
          type = "Militia",
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
          type = "Militia"
        },
        {
          id = 11,
          type = "Militia",
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
          type = "Militia",
          properties = {
            ["name"] = "west"
          }
        },
        {
          id = 13,
          type = "Militia"
        },
        {
          id = 14,
          type = "Militia"
        },
        {
          id = 15,
          type = "Militia",
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
          type = "Militia"
        },
        {
          id = 17,
          type = "Militia",
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
          type = "Militia",
          properties = {
            ["name"] = "north"
          }
        },
        {
          id = 19,
          type = "Militia"
        },
        {
          id = 20,
          type = "Militia"
        },
        {
          id = 21,
          type = "Militia",
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
          type = "Militia"
        },
        {
          id = 23,
          type = "Militia",
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
      name = "CatapultOperatorF",
      firstgid = 1066,
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
      firstgid = 1078,
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
    },
    {
      name = "ArcherF",
      firstgid = 1102,
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
      name = "doors_opening",
      firstgid = 1126,
      filename = "img/doors_opening.tsx",
      tilewidth = 16,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 5,
      image = "img/doors_opening.png",
      imagewidth = 80,
      imageheight = 96,
      tileoffset = {
        x = -8,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 32
      },
      properties = {
        ["commoncollision"] = 10
      },
      terrains = {},
      tilecount = 15,
      tiles = {
        {
          id = 0,
          type = "Door",
          properties = {
            ["closedtile"] = "wood_int_closed",
            ["name"] = "wood_int_open"
          }
        },
        {
          id = 1,
          type = "Door",
          properties = {
            ["closedtile"] = "wood_ext_closed",
            ["name"] = "wood_ext_open"
          }
        },
        {
          id = 2,
          type = "Door"
        },
        {
          id = 3,
          type = "Door"
        },
        {
          id = 4,
          type = "Door"
        },
        {
          id = 5,
          type = "Door"
        },
        {
          id = 6,
          type = "Door",
          properties = {
            ["name"] = "wood_ext_opening"
          },
          animation = {
            {
              tileid = 6,
              duration = 100
            },
            {
              tileid = 1,
              duration = 100
            },
            {
              tileid = 6,
              duration = 100
            }
          }
        },
        {
          id = 7,
          type = "Door"
        },
        {
          id = 8,
          type = "Door"
        },
        {
          id = 9,
          type = "Door"
        },
        {
          id = 10,
          type = "Door",
          properties = {
            ["name"] = "wood_int_closed",
            ["opentile"] = "wood_int_open"
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
                shape = "rectangle",
                x = 0,
                y = 8,
                width = 16,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true,
                  ["sensor"] = true
                }
              }
            }
          }
        },
        {
          id = 11,
          type = "Door",
          properties = {
            ["name"] = "wood_ext_closed",
            ["opentile"] = "wood_ext_open"
          }
        },
        {
          id = 12,
          type = "Door"
        },
        {
          id = 13,
          type = "Door"
        },
        {
          id = 14,
          type = "Door"
        }
      }
    },
    {
      name = "sparks_huge",
      firstgid = 1141,
      filename = "img/sparks_huge.tsx",
      tilewidth = 96,
      tileheight = 96,
      spacing = 0,
      margin = 0,
      columns = 5,
      image = "img/sparks_huge.png",
      imagewidth = 480,
      imageheight = 384,
      tileoffset = {
        x = -48,
        y = 48
      },
      grid = {
        orientation = "orthogonal",
        width = 96,
        height = 96
      },
      properties = {},
      terrains = {},
      tilecount = 20,
      tiles = {
        {
          id = 0,
          type = "Spark",
          properties = {
            ["name"] = "explosion"
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
            },
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
            },
            {
              tileid = 8,
              duration = 67
            },
            {
              tileid = 9,
              duration = 67
            }
          }
        },
        {
          id = 10,
          type = "PlayerDeath",
          properties = {
            ["name"] = "playerexplosion"
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
                y = 6,
                width = 84,
                height = 84,
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
              tileid = 10,
              duration = 83
            },
            {
              tileid = 11,
              duration = 83
            },
            {
              tileid = 12,
              duration = 83
            },
            {
              tileid = 13,
              duration = 83
            },
            {
              tileid = 14,
              duration = 83
            },
            {
              tileid = 15,
              duration = 83
            },
            {
              tileid = 16,
              duration = 83
            },
            {
              tileid = 17,
              duration = 83
            },
            {
              tileid = 18,
              duration = 83
            },
            {
              tileid = 19,
              duration = 83
            }
          }
        }
      }
    },
    {
      name = "townfolk-adult-f-002",
      firstgid = 1161,
      filename = "img/human/civilian/townfolk-adult-f-002.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/human/civilian/townfolk-adult-f-002.png",
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
          type = "ItemWingman",
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
          type = "ItemWingman"
        },
        {
          id = 2,
          type = "ItemWingman"
        },
        {
          id = 3,
          type = "ItemWingman"
        },
        {
          id = 4,
          type = "ItemWingman"
        },
        {
          id = 5,
          type = "ItemWingman"
        },
        {
          id = 6,
          type = "ItemWingman"
        },
        {
          id = 7,
          type = "ItemWingman"
        },
        {
          id = 8,
          type = "ItemWingman"
        },
        {
          id = 9,
          type = "ItemWingman"
        },
        {
          id = 10,
          type = "ItemWingman"
        },
        {
          id = 11,
          type = "ItemWingman"
        }
      }
    },
    {
      name = "MilitiaCaptain",
      firstgid = 1173,
      filename = "img/human/enemy/MilitiaCaptain.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "img/human/enemy/MilitiaCaptain.png",
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
          type = "MilitiaCaptain",
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
          type = "MilitiaCaptain"
        },
        {
          id = 2,
          type = "MilitiaCaptain"
        },
        {
          id = 3,
          type = "MilitiaCaptain",
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
          type = "MilitiaCaptain"
        },
        {
          id = 5,
          type = "MilitiaCaptain",
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
          type = "MilitiaCaptain",
          properties = {
            ["name"] = "south"
          }
        },
        {
          id = 7,
          type = "MilitiaCaptain"
        },
        {
          id = 8,
          type = "MilitiaCaptain"
        },
        {
          id = 9,
          type = "MilitiaCaptain",
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
          type = "MilitiaCaptain"
        },
        {
          id = 11,
          type = "MilitiaCaptain",
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
          type = "MilitiaCaptain",
          properties = {
            ["name"] = "west"
          }
        },
        {
          id = 13,
          type = "MilitiaCaptain"
        },
        {
          id = 14,
          type = "MilitiaCaptain"
        },
        {
          id = 15,
          type = "MilitiaCaptain",
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
          type = "MilitiaCaptain"
        },
        {
          id = 17,
          type = "MilitiaCaptain",
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
          type = "MilitiaCaptain",
          properties = {
            ["name"] = "north"
          }
        },
        {
          id = 19,
          type = "MilitiaCaptain"
        },
        {
          id = 20,
          type = "MilitiaCaptain"
        },
        {
          id = 21,
          type = "MilitiaCaptain",
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
          type = "MilitiaCaptain"
        },
        {
          id = 23,
          type = "MilitiaCaptain",
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
      name = "sandbags",
      firstgid = 1197,
      filename = "img/sandbags.tsx",
      tilewidth = 32,
      tileheight = 48,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/sandbags.png",
      imagewidth = 96,
      imageheight = 48,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 48
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
                id = 1,
                name = "",
                type = "EnemyCover",
                shape = "rectangle",
                x = 16,
                y = 16,
                width = 16,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
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
                id = 1,
                name = "",
                type = "EnemyCover",
                shape = "rectangle",
                x = 0,
                y = 16,
                width = 32,
                height = 16,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 2,
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
                x = 0,
                y = 16,
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
      name = "townfolk-child-m-001",
      firstgid = 1200,
      filename = "img/human/civilian/townfolk-child-m-001.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/human/civilian/townfolk-child-m-001.png",
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
          type = "ItemScore",
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
          type = "ItemScore"
        },
        {
          id = 2,
          type = "ItemScore"
        },
        {
          id = 3,
          type = "ItemScore"
        },
        {
          id = 4,
          type = "ItemScore"
        },
        {
          id = 5,
          type = "ItemScore"
        },
        {
          id = 6,
          type = "ItemScore"
        },
        {
          id = 7,
          type = "ItemScore"
        },
        {
          id = 8,
          type = "ItemScore"
        },
        {
          id = 9,
          type = "ItemScore"
        },
        {
          id = 10,
          type = "ItemScore"
        },
        {
          id = 11,
          type = "ItemScore"
        }
      }
    },
    {
      name = "townfolk-child-m-002",
      firstgid = 1212,
      filename = "img/human/civilian/townfolk-child-m-002.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/human/civilian/townfolk-child-m-002.png",
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
          type = "ItemScore",
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
          type = "ItemScore"
        },
        {
          id = 2,
          type = "ItemScore"
        },
        {
          id = 3,
          type = "ItemScore"
        },
        {
          id = 4,
          type = "ItemScore"
        },
        {
          id = 5,
          type = "ItemScore"
        },
        {
          id = 6,
          type = "ItemScore"
        },
        {
          id = 7,
          type = "ItemScore"
        },
        {
          id = 8,
          type = "ItemScore"
        },
        {
          id = 9,
          type = "ItemScore"
        },
        {
          id = 10,
          type = "ItemScore"
        },
        {
          id = 11,
          type = "ItemScore"
        }
      }
    },
    {
      name = "townfolk-adult-f-001",
      firstgid = 1224,
      filename = "img/human/civilian/townfolk-adult-f-001.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/human/civilian/townfolk-adult-f-001.png",
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
          type = "ItemWingman",
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
          type = "ItemWingman"
        },
        {
          id = 2,
          type = "ItemWingman"
        },
        {
          id = 3,
          type = "ItemWingman"
        },
        {
          id = 4,
          type = "ItemWingman"
        },
        {
          id = 5,
          type = "ItemWingman"
        },
        {
          id = 6,
          type = "ItemWingman"
        },
        {
          id = 7,
          type = "ItemWingman"
        },
        {
          id = 8,
          type = "ItemWingman"
        },
        {
          id = 9,
          type = "ItemWingman"
        },
        {
          id = 10,
          type = "ItemWingman"
        },
        {
          id = 11,
          type = "ItemWingman"
        }
      }
    },
    {
      name = "Swordsman",
      firstgid = 1236,
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
      name = "SwordsmanF",
      firstgid = 1260,
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
      name = "house",
      firstgid = 1284,
      filename = "img/house.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 12,
      image = "img/house.png",
      imagewidth = 192,
      imageheight = 112,
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
          name = "Wall",
          tile = 10,
          properties = {}
        },
        {
          name = "Roof",
          tile = 37,
          properties = {}
        },
        {
          name = "Rooftop",
          tile = 58,
          properties = {}
        }
      },
      tilecount = 84,
      tiles = {
        {
          id = 0,
          terrain = { -1, -1, -1, 0 }
        },
        {
          id = 1,
          terrain = { -1, -1, 0, 0 }
        },
        {
          id = 2,
          terrain = { -1, -1, 0, -1 }
        },
        {
          id = 6,
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
                x = 6,
                y = 12,
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
          id = 9,
          terrain = { -1, 0, -1, 0 }
        },
        {
          id = 10,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 11,
          terrain = { 0, -1, 0, -1 }
        },
        {
          id = 18,
          terrain = { -1, 0, -1, -1 },
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
                x = 6,
                y = 0,
                width = 4,
                height = 8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 19,
          terrain = { 0, 0, -1, -1 }
        },
        {
          id = 20,
          terrain = { 0, -1, -1, -1 }
        },
        {
          id = 27,
          terrain = { -1, -1, -1, 1 }
        },
        {
          id = 28,
          terrain = { -1, -1, 1, 1 }
        },
        {
          id = 29,
          terrain = { -1, -1, 1, -1 }
        },
        {
          id = 36,
          terrain = { -1, 1, -1, 1 }
        },
        {
          id = 37,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 38,
          terrain = { 1, -1, 1, -1 }
        },
        {
          id = 39,
          terrain = { -1, -1, -1, 2 }
        },
        {
          id = 40,
          terrain = { -1, -1, 2, 2 }
        },
        {
          id = 41,
          terrain = { -1, -1, 2, -1 }
        },
        {
          id = 45,
          terrain = { -1, 1, -1, -1 }
        },
        {
          id = 46,
          terrain = { 1, 1, -1, -1 }
        },
        {
          id = 47,
          terrain = { 1, -1, -1, -1 }
        },
        {
          id = 48,
          terrain = { -1, 2, -1, -1 }
        },
        {
          id = 49,
          terrain = { 2, 2, -1, -1 }
        },
        {
          id = 50,
          terrain = { 2, -1, -1, -1 }
        },
        {
          id = 57,
          terrain = { -1, 2, -1, 2 }
        },
        {
          id = 58,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 59,
          terrain = { 2, -1, 2, -1 }
        }
      }
    },
    {
      name = "Lord",
      firstgid = 1368,
      filename = "img/human/enemy/Lord.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 12,
      image = "img/human/enemy/Lord.png",
      imagewidth = 384,
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
        ["column_noshield"] = 6,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["numdirections"] = 4,
        ["rowstype"] = "direction"
      },
      terrains = {},
      tilecount = 48,
      tiles = {
        {
          id = 0,
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
          id = 3,
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
          id = 5,
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
          id = 12,
          properties = {
            ["name"] = "south"
          }
        },
        {
          id = 15,
          properties = {
            ["nextanim"] = "fire_south"
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
          id = 17,
          properties = {
            ["name"] = "fire_south",
            ["nextanim"] = "south"
          },
          animation = {
            {
              tileid = 17,
              duration = 125
            }
          }
        },
        {
          id = 24,
          properties = {
            ["name"] = "west"
          }
        },
        {
          id = 27,
          properties = {
            ["nextanim"] = "fire_west"
          },
          animation = {
            {
              tileid = 27,
              duration = 125
            },
            {
              tileid = 28,
              duration = 125
            }
          }
        },
        {
          id = 29,
          properties = {
            ["name"] = "fire_west",
            ["nextanim"] = "west"
          },
          animation = {
            {
              tileid = 29,
              duration = 125
            }
          }
        },
        {
          id = 36,
          properties = {
            ["name"] = "north"
          }
        },
        {
          id = 39,
          properties = {
            ["nextanim"] = "fire_north"
          },
          animation = {
            {
              tileid = 39,
              duration = 125
            },
            {
              tileid = 40,
              duration = 125
            }
          }
        },
        {
          id = 41,
          properties = {
            ["name"] = "fire_north",
            ["nextanim"] = "north"
          },
          animation = {
            {
              tileid = 41,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "armorbody",
      firstgid = 1416,
      filename = "img/armorsuit/armorbody.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/armorsuit/armorbody.png",
      imagewidth = 96,
      imageheight = 32,
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
                type = "",
                shape = "ellipse",
                x = 6,
                y = 6,
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
      name = "armorleftarm",
      firstgid = 1419,
      filename = "img/armorsuit/armorleftarm.tsx",
      tilewidth = 16,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/armorsuit/armorleftarm.png",
      imagewidth = 48,
      imageheight = 32,
      tileoffset = {
        x = 0,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 32
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
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 4,
                y = 0,
                width = 12,
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
        }
      }
    },
    {
      name = "armorrightarm",
      firstgid = 1422,
      filename = "img/armorsuit/armorrightarm.tsx",
      tilewidth = 16,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/armorsuit/armorrightarm.png",
      imagewidth = 48,
      imageheight = 32,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 32
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
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 12,
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
        }
      }
    },
    {
      name = "trees_tall",
      firstgid = 1425,
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
      name = "trees",
      firstgid = 1428,
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
      name = "player",
      firstgid = 1431,
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
      name = "explosion_giant",
      firstgid = 1459,
      filename = "img/explosion_giant.tsx",
      tilewidth = 256,
      tileheight = 256,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "img/explosion_giant.png",
      imagewidth = 1024,
      imageheight = 1024,
      tileoffset = {
        x = -128,
        y = 128
      },
      grid = {
        orientation = "orthogonal",
        width = 256,
        height = 256
      },
      properties = {},
      terrains = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          type = "Spark",
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
            },
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
            },
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
            },
            {
              tileid = 11,
              duration = 67
            },
            {
              tileid = 12,
              duration = 67
            },
            {
              tileid = 13,
              duration = 67
            },
            {
              tileid = 14,
              duration = 67
            },
            {
              tileid = 15,
              duration = 67
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "objectgroup",
      id = 1,
      name = "unused",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 125,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = -48,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 85,
          name = "path",
          type = "",
          shape = "polyline",
          x = 0,
          y = 2272,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 0 },
            { x = 48, y = 0 }
          },
          properties = {}
        },
        {
          id = 84,
          name = "path",
          type = "",
          shape = "polyline",
          x = 248,
          y = 2272,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 0 },
            { x = 48, y = 0 }
          },
          properties = {}
        },
        {
          id = 101,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 0,
          y = 2400,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1045,
          visible = true,
          properties = {
            ["pathid"] = "fields_paths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 102,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = -32,
          y = 2400,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1045,
          visible = true,
          properties = {
            ["pathid"] = "fields_paths",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 4,
          name = "path",
          type = "",
          shape = "polyline",
          x = -56,
          y = 392,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 336 },
            { x = 0, y = -400 }
          },
          properties = {}
        },
        {
          id = 276,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 56,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1081,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathid"] = "277",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 275,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 232,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1081,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathid"] = "277",
            ["pathmode"] = "relative"
          }
        }
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "dirt",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzNmVtu40gMRWv/i9AupH9BG+seTIg+PiFL9QjQTcCIY0sUi4/LS7q1/+X6/Tq+/p5f7//7e+Pv8/X5g+8tF66Nvw90Uh91WZ4vXaHnwrVhJ++P51pOfB9ni1fYErrjdRX2HLo+znPgs1OfZ3roX9p36ozxrEoP4xF6b9wbeu72x4cWxiTeWzftqeIV/vczss8YQ0vYart4vrCjembYE/dQQh+FZ+2J7YlnV7nX2p+zZnnLe2kDaySu5/vIG56RsWdOXIk+Pov/n+17/ToXme9X+zwH43S1Txup68Z1D66lTfTJqWcZPxz/ODvrmzVOvKhwrOlMrGn6jb7M9PD59Fvk+dk+fRHnttAG+iLLlXhlwnzhc11PfF6lx7F+9N7+7um526dP6G/2ol6NOu94TuqIZ/T00B73Hvq6Zw/riNezB7A2euLaoR7XQ0/Ho2szbGL8MnHOGE+oo+dr+sNxpj09nlDF+dHft/7FnsMaNcYauzPf3LjGWOd8qriG+xy5gM9S5Y7ribjn+FQ8o7XvuPLoNYqnITyXc8DYU+FGa59xcf+jz9hDMwk/ufcydvRRFXfXEvWZB8QzLO5z9Av12q5Mj3s+Y+88rThZxpWdD8ylW9c32W/sog3Oe3KdhrMYr4hnpz53L8hmG/ra84m5EHs388N15N7K3u/+a2w58L+x4tb97kueLS7dl+Unz0S8oz8zPCNWmqc7djNiTlBxqzexT3q9qNfvXLMZNhtf3VvJn6sZOKt5xpgxOgs9zsEMI9m/PANTP22i3jPRbbyp7Dva93xhDnrGMA64RrJZwfHIeAa/r3DR+Eg/MZ8qH7u2ejFkb3VOuZaNT+YkGefIYkPb3AdYg1XvrzDjSJ6V+Zr56j7lODv/iMHGRup3rjDn3B95PfPb5yXumU/7Pf1X5eWZfG8OwP/dfzJ+QP6T8SvH7tJ7crlD/7u/hzhfmLOZzkquzn3GnZ4e5k34KsupsPtNjzGximElzi/3SXMRS4axvVj68xDmZcaD7vY9f6kzs8s4wvveOC/tYh4y1zIcqCTrCxm3H8lDP9s1wFfvXBUe2r6Ky1fcpMdbXKO98/aecRTfZbzG+EWuWInrkH2EGFzlH8/Avsx8zOqmEvcL17vngJ497HHmCqNxZx6bf9o/zM0Q40uGEzwbuUVmF+PjHmOu8+Znnsf88myfZ6uEdWQebW75psd53OOUlZB/3bqPr9BL4Zn5nnhlv2Q5YB5gPxiTmY+VbSG0x37u9T8L68sx6/nXkvEv4v+omCPZl6PiWYfco5d/lgzDWLejknF05sSsPe6ts/ZkMR/pE5k9jJF5zKjYt7RvJg/dC4kDM/b8a+K4u9ZGhX4hps7qMb9zDs3qYb0S/0eFZ3D/mj0X7x+dlzI9xHVi/kx9sWdmc+SKHu8ZZuLluYU+nsHnqHfPqW9zoIX4bB2Vfx5dY0wmZ3AOkOcQ68zdHPNsH/OGkVXvmRXiccZNR8W7ldA7K/QBzzcr5E4rNUF7XF8reoiB3F/NCu9lrf4tcQ+dxeYQ5g9jNivO51nMoB7PK6v54z3HStzN+99m7Up4HtbYij2M16qenxJiNvvPrGS8cNU/xEHvemb0eE+xmoeen1bsISaPzNqVmIu97WoqMUdcra+fEu5dWLOzYu6wij/+7WG1v7MWyMdnxdxylhuGkEvtzHDe7+/62fPp3xLuee+21weJ8zt90PvPVXs8C67kDzGDeD8rrPVdHPPstcrDiYkrcwRnH++AuN/y3OJ9E+dl71ZZu/y8EvJCYuysZPaszk3M5V08pI5V/kyeusoPHaNdvsE90k/U6eocR8zY4S0Zh1rNH3LEVd4SeOP6mpXst4WdPQD55o5/2H9W+Sr3mTt8nrW6qsfYubsH2OUbzJ+VnV+IsWcVD7073DkXe/tqvXNPu3OusIG5s7tn2+VjxtTV+nLPWc2fmd+C3+zxjDEr7Fs7uMGZYmf+ynJwNQ/52tn//AT/cX2u9nfi6e6+jrHa4Yf8zWmVj3E22dkDZL8z7fKxnbmbPZk4NCvej+3s592/Vvd15D2zv+GH8PcL9vhKvGOmb4llxHv/NsJ5jr9T+R7vxO27S8+0Pa5V5tOlz2izuaV7jmc62snc4Jye5TM546FXCOuRWOp5hRiS1RvnZJ6H8ec8X+0XjBHe/zBWvd2CZ1HimHPmDc8cU8aRut7qLM7OXTp51Ch++D5yjZk9tPdPrpdR7nLrlfGW0Z7BmjA2z2Ciaynbc4yKd0n00Ywe76Fc06NCLGIezXJx4oVny5meQR7GncLszEwcZR7Pcg7WQhb7UXGNEverc/0CeqniHA=="
    },
    {
      type = "tilelayer",
      id = 3,
      name = "dirtdeco",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztWlmOwzAIzf3vlpypykc0CAFmecQomidV02ligzFgFh/HH07y/TpkXIvnFviYU/l9NQcfdyrvcjpV8Hk0/j3rupTvz/+UlsW/RIPu0Uq21p7TdVj8RsHXp73D+UBBmi9CI/ru/aEy1MZrcvXqAqXn4ctDW9KhlW/QsNJHiW+vDUUQ0a2T/ZVoevWhajceOo9tIWymym9lHir3KWvh+hvlSzs/nrlXYz325X1O5UvXlZVTxEdpY6Q56O8e3jTakdjGAsomsnNJcor4hSw/9ByzxkVtQhubtXltnW/4sseONPrWcwuZODkKj3/h73vH8DM0QkP7ncdS3hglwocWD6+Q1T8rr1npXSRf6NIjhP0igcohvHmUlsd5YtiVrkXPfoT8kX5UWqfFo6b7li/kOapGk8c8HkT8i4bVeqX40KM7SFuTzqfzkPnTUM2v6fseO4jENZUY0kvD2kcqR0nHM/65qw7G7Sey/6taBioWQNvhCpYf8PIy5ZzsrltIOp9F5XyL1k+tdzpqyZ1xvUW3OkbzxSgZvW3b0hyS3qH2C+UDUaBnv7emkHlmvVORbSa31iDlt1H50HG7dEZDpK7fCU/PIzpPVYeqeKNeMwWZNU6Xy5T4bCqQsUs2H0DCysci46XzJyofrUeE6l8h0NFLi6AqYzrPVF9knWda3KTF41PXmMEUf2z1cnejst+dvTMUUPHd7nWhezG713MDbQcT1sQxkacp6NDnbD0e3ReZAjQvCH/ase+VunM1bp4UK9+YlpN+2b5uTMm3OuSC2rs36tErmh39mMq8nXqMyJeR/ZlJqKwJVc/K9ss5/vfn/XmnnD9d/qwyHt1TQ6F6TweNaT2+Cnbv03TQuiq63jYB6PgeAYRP+9qZvPu+Tcc8XbKecsYjsOs+nSVDrZfrqcVk79h57hpb71TqRJn7ntIcz8fb10Tci8v2eai8Mnd3tP4L6i5SZ94+/Z6mB3TfvuQPJ2DK+SkBUeOYri8Wfz/19nvI"
    },
    {
      type = "tilelayer",
      id = 4,
      name = "grass",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztnE1zGzcMhqkk9s0jj25x6tzqNrlJ9ubmWPZNktubPto/qL/ZhcQnC9Mgl6Q347bjncGspF2+JoEXAD+9cM5tWvnmyq9xK6tWmlYWrexbOa/AuWll1sqjwrmurI/gbD3GurI+U4/T+DrVtkvqI7pd+DqJrs4qcZYea+3rVmOviS8781gitfqRejSua19NuyYeQ+ojulmq+vzaypdWrlq5aOWr/+3S/3blfwNHMMROWy8ffblPvo5ix5078mrq/9bK1/0X/+5n19kbXq9dx6cPrZy08r2Vu1ZuW7n3curfe/Sy9X/jg39+ot59SOjkNnhX5H1PmdzrdgCMoa9LL2Lr3wrL/u7Lie3gj9i41DeIP3AIbpTGIPHThet8VXgg9r8rwBCOC2fhHn5W6qdSF3i7d52flbYp1A2xvrQ+4nPYaOXxxFbieyV2pz4bVZed/14Sgya+zMrL2t8Fq6RtgkObyBfEAWnb13jRZzjYnHrRRsHKtdvE//3GdTln67FGLj+OzN0x7vD3Z6pupf41UWWxl+isNGeMfV3AkrqVtEnj4FdSj5r8LrFH8sXO48DBEv8CY+vLw2uJGSVtEt8SvdAWck9NzKA92F2+Sy7V+bbvIh9vFB55uUTXc3fkINxbeEz6iiX8kdx36jGIZ+irlM/0f6iPYAgPS+I8OPTDXtI/nPo6YK9dJc7cdfqmPjX9cLBE3/C5VDf6EtvVxAvreueG6Uv93y/d177wd77rfvkXdbfyuORr+tDkV/pIxHLGfcQwy8437im/GScKt079M2ID+dzCIV/TN3/vunHi1Ndz5H+XdyR2WT4wd0cuwSfGAowLGCPwHt/frrfr7Xq7XvsihhO/L9VdfmO+hdhPjL8MPn9vg+Xd6BiT5+39XsnD6BiDbyLPJNbejo4Yy1ZWI9+3a+9/KPlzdOyjTSPPJE4vPAY4j5F3zxI4KwNnF3lXcsI4oz4baWclzmE86DHoY54mcGLtopzkOcbcnyLvnifqI+VkvLJXdt8k9JxqV2j3bUV9tgV2F5xJ5NnewIm16zoTB7sf5qTa+19K/lY8tJ7tlN2Fk/RTpG0r180xMJ9Jn2bruv6U7hvR38J+zL/QH5N38VPKM+aXsh9VuRx/n0ae7Qy7rxL8uYk8mxX6acwvHgv4k/JTXR/sHuPztwSOtvtO2a+0XZRjnIvdY34R07Pl7zVxdVbg76k4b9k9FX9ifmrF+VT8ycHB7quIT+On1rOFsvu9O44V5M644Z36rscaJ5F35PcLJVfqM/md8Zx+fuWejvMuvN0RsX8T+Lb4dfhdx3dkOXqq732g04M/9tgpFMtuFk6YJyyckEcWzi4DJ6ddYdyBP4jwKOwHWTiaNz/Kum7ejTnJHP2QC1hfDO0e+n3MXn12X2TgNBl6zsHJsdd6IB42gW8f8njwPYxflt33rpubZA62UfZkLjS0e2gv5lxYh2J+RK8N7DLstczw98VAfrHJwAnzfC1OTtyw+BPaK4c/e8NerF2xbtRk+ik+DSdq/HSZYfccnJy4muOnll9YPBzC33PiocXn0O6LTH9/5qeukxOVw+/VHeEZ731Xv1nzr3y+iDzTa+3keM2BWI7Xvv5ocCfkT8zn+3JgLodKfF3jWGONXC7n1qcvd2kca65D+6iFsxk956I19tH6CTkY5gvsPnPP+6e6j1pid8aV5J2d69a0c/WT4mGfr6d8viT25PJ5KJwSu1tjsT67N94u5BDWMWM49AuZD0As/qT0vCngjzVnAg9L4obe26H3aPzYa1hgr1Q8zMVJ2ask/qTiRsy/LP6keNhE+GPZPRV/tgV2T8XnmF+U6rkUZygesnbZuI6X7IfJxVkneBjjj2X3sM9amy/CPmsYD3PtnsJZD5TfS+yeioclOKl4WOrvMR6W5Avmh/XeVh3XLbvzjt6nm4qHcHrpurmEJpIvrDm3mriR4k84t18bN/rmAHLrU9I/TMXnkv5PjX4s/qTycow/eoyj5yr5fKLkXj3Xe6DlN+YlmbtErD0nsq8uHBPxfsgnuGjtSbuJcNDiIbq2cKaZttI41t6VGhxr78q4AsdqVw1ObE9ODCfkE1yM4VgcZD1Fx78D713c7uxPIpYxV/Ma/BlKzzX8ibVrCB6m7D6Ufkr4c1j/jJVxnbCOLnHV2juqzwHodVYrDw7NH9olezeIjS/hj9jo/AU456otZ+pzbX3GSucviatSh+sMnBh/zg2cVPzh7Bb7HJkT0fXROtfnEZBlgj/XCofP4wr+XEfqU6pnbCRrlQ8Kc4g4VoMzVBz7mfnrcC4hUoY1IebV4IcVf25ct1bEmR32usf4E8Mp5Y+FM1TeGSoP1tg9GucLcUrzYF/8CdsV4094boa9RDH96HGcnif8r/R//m08/JnjgqHiT4o/7Elh7Uo+yxjNOksxd0/f5917493XvkrPnFqX9LVkjxz7ZksvzrHKXiv8rObcDWf/mPNeV+Bw/pT9hJyXKsEBQ68bcPZL9JSrc/6/APOn4DCXn3seiLOejOGYz6IPlts2zn1xzgRMxok5OPrMH/mcujCuyDkfJ7rhbC/9RPZ16n2+fXycuq5/QH30uVj+Rl/bOPOHjpFG/S716rP/RLWF3MN6DftZ4GRKT9hq757qSe9z2mbicFZZ/+8EvYeWdqZ0xJwC40f99xt178PhDKw+Sxv2CXP+R4RuF/pgnxBjDZ736YdxMX1M/B5Osdcl5a+cYUU/2q/02a4+HH2+i/6vlPkHBoVZ9g=="
    },
    {
      type = "tilelayer",
      id = 5,
      name = "grassdeco",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt3EEKwjAQheH26Kb1ALrT09qAwaHUUPueOMj/QTdixmQyGbqJw6CbxhwxqmKKM4++WG4nYV51rDI+mg1x6lwccXp7dR5fT++zvWMd30UutX5cPcghngnHvIrQz0roGa7eoaypmOfiou7T1nhlzxzanBw92u0b+T4iw5lwiuddidGosdZ5UWtxSvxul4HzrGfsG/hf7neCLD0ZAAAAAAAAAAAAAAAAAAAAAACgR73D47wfd1meqyHebYlxN9xBdXDekTqSa+d/Jmx9pqxvfnMv+5OYvZrZs/b2++uaablWarI881NjqTUZ7bm3FHO4tYYj+7Zewy/Pa9zbBzDDNYE="
    },
    {
      type = "tilelayer",
      id = 6,
      name = "crops",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztkulqxDAMBhf0/i/Uk17QbkufqZSyxEejtbRJ7Ghn4PthJI2JlcMBAAAAAAAAAAAAYF2Okp+/ZUrJXO1DxvO09p6rRfWMtq+19g455Tt/yZSSudp/++rtae09V4vqGW1fa+0dcj5lSsrv26XvV57L2aieOVo8LfTyHGWK1ZPO7sXTwiWza3P67kv+jTIp7/KXufPonjlaPC308pzqZU+LJ52N6gGdN8njreFpr5VYepfCe6flfZbyvEqePXk0NI+FHh7vneXcnjwvkmcLj4bmsWDxaL2W2hYey3eM5tF4ljxeLB6t11K7Ro/GUrvswZPk2cKj9VpqUT2g8yh1PDN4dE9UHqSOZwaP7onKvdTxzODRPVG5kzqeGTy6Jyq3Usczg0f3ROVG6nhm8OgeAACAa+YHdPvyHQ=="
    },
    {
      type = "tilelayer",
      id = 7,
      name = "houses",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt1cEKgkAQgOFFs3N16VJBL+A7WA8ZHaNDRKfoENEDSfgAEl5ycRcW0VXcApP/g8Flmx1wnCUh8M+mgRBBQ8icOiMjR8bcWFftydxxRb1JKS9Uz7UKc0/XnNXUkXnLUug65f2wps5C/b6yvHuXXKCNxBPi5XU/H3tFjSyPt0OdVNXY+EJs/e51Ir+oMSSnvC8XFYnX/Zvd8zNPFZnDN9M93qmn6zfrEz3PstfnL8yz7PXDoU7U0x67zGFszLHLHKbGeZcemT0eGuYZaOdg/M82xdFyB67qnuz9Imzrm6WOvis637bmLgEAAAAAAAAAAAAAAAAAAAAAAADAb30AM4NMNg=="
    },
    {
      type = "tilelayer",
      id = 8,
      name = "housedeco",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztzLEKwjAUBdAOPhFcSnHoZhfddbf//1kmJMMbqnRykHPgkXDzcoeBf7DEvuzT32PfPZfzVuba5x4tqw7xvbPuTf19Lucj7T6jZdWYOrfMqad6lfupz5ryMXXudYk2AAAAAAAAAAAAAAAAAAAAAPzWGyEZA5A="
    },
    {
      type = "objectgroup",
      id = 9,
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
      id = 10,
      name = "fence",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztyqERACAMALHesf8STABMiGkdaBCJefMRAAAAAAAAAAAAAAAAAAAA8F5v547szK7LVwXgTxvUCwX7"
    },
    {
      type = "tilelayer",
      id = 11,
      name = "rooftops",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt1FsuBEEUxvHqTiZ4dInLM2EBxngd5uLR5QUrwXoICyAsgGEBDEvALnyd6UpKxaSnz0yQzP+XfOlJus7JpPpUOddTrTh3oNQqvd+7yl6U/eC9Xxsblz4NpRmlNWCfdv6urmz1yXbl+9pYPVhXpMxa4Dd9Js5dKldJ+dpz1Vwo78pU6tytnneGPtequVEm1KOj56PyZOhzr5qHpNejq7wqb4Y+z6p5yXv8tVntyZxyqBwpH4ntmy2rdkU5UU6VydT2zdZVU1U28nQS2zdrqLaptPJ0h/xmoxDO87H+07yykJbvE87zmbKqrBn6hPOc7XVN2TT0Cec52+u2smPoE7LOod9jX2+dQ7/Hvt46h+Ee+3vDMofhHv+HeyMT3h3DzHN4dwwzz/HdYZ3n+O4YxTxjvE1rfmZKzNCi1i79sN6flUH1O0vxWSlKv7MUn5WicJYAAAAAAAAAAAAAAAAAAAAAAAAAYLx8AQ/uaDQ="
    },
    {
      type = "objectgroup",
      id = 12,
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
          id = 321,
          name = "",
          type = "",
          shape = "polyline",
          x = 72,
          y = 696,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -112, y = 128 }
          },
          properties = {}
        },
        {
          id = 322,
          name = "",
          type = "",
          shape = "polyline",
          x = 208,
          y = 696,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 112, y = 136 }
          },
          properties = {}
        },
        {
          id = 323,
          name = "",
          type = "",
          shape = "polyline",
          x = 48,
          y = 224,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -88, y = 0 }
          },
          properties = {}
        },
        {
          id = 324,
          name = "",
          type = "",
          shape = "polyline",
          x = 248,
          y = 224,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 88, y = 0 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 13,
      name = "roofobjects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 270,
          name = "chimney",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 72,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1302,
          visible = true,
          properties = {}
        },
        {
          id = 271,
          name = "chimney",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 56,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1290,
          visible = true,
          properties = {}
        },
        {
          id = 272,
          name = "chimney",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 56,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1290,
          visible = true,
          properties = {}
        },
        {
          id = 273,
          name = "chimney",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 72,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1302,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 14,
      name = "bossbackup_path",
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
          id = 292,
          name = "archer_path",
          type = "",
          shape = "polyline",
          x = 144,
          y = -88,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = 0, y = 136 }
          },
          properties = {}
        },
        {
          id = 277,
          name = "heavy_path",
          type = "",
          shape = "polyline",
          x = 144,
          y = -16,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 88 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 15,
      name = "boss_swordsmen2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 309,
          name = "boss_swordsmen2",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = -80,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["activateobjectslayer"] = "roofobjects",
            ["cancelondefeatedid"] = 267
          }
        },
        {
          id = 310,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 152,
          y = 144,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1239,
          visible = true,
          properties = {
            ["initiallayer"] = "ground"
          }
        },
        {
          id = 311,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 136,
          y = 144,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1239,
          visible = true,
          properties = {
            ["initiallayer"] = "ground"
          }
        },
        {
          id = 312,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 232,
          y = -120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathfinder"] = "linear1way",
            ["pathid"] = "bossbackup_path",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 313,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 56,
          y = -120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathfinder"] = "linear1way",
            ["pathid"] = "bossbackup_path",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 314,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 56,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathid"] = "bossbackup_path",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 315,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 232,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathid"] = "bossbackup_path",
            ["pathmode"] = "relative"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 16,
      name = "boss_swordsmen1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 291,
          name = "boss_swordsmen1",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = -64,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["activateobjectslayer"] = "roofobjects",
            ["cancelondefeatedid"] = 267,
            ["cleartriggerid"] = 309
          }
        },
        {
          id = 306,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 136,
          y = 144,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1239,
          visible = true,
          properties = {
            ["initiallayer"] = "ground"
          }
        },
        {
          id = 307,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 232,
          y = -120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathfinder"] = "linear1way",
            ["pathid"] = "bossbackup_path",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 308,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 56,
          y = -120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathfinder"] = "linear1way",
            ["pathid"] = "bossbackup_path",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 305,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 152,
          y = 144,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1239,
          visible = true,
          properties = {
            ["initiallayer"] = "ground"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 17,
      name = "boss_heavy3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 285,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 232,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathid"] = "bossbackup_path",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 286,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 56,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathid"] = "bossbackup_path",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 290,
          name = "boss_heavy3",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = -48,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["activateobjectslayer"] = "roofobjects",
            ["cancelondefeatedid"] = 267,
            ["cleartriggerid"] = 291
          }
        },
        {
          id = 288,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 56,
          y = -120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathfinder"] = "linear1way",
            ["pathid"] = "bossbackup_path",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 287,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 232,
          y = -120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathfinder"] = "linear1way",
            ["pathid"] = "bossbackup_path",
            ["pathmode"] = "relative"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 18,
      name = "boss_heavy2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 284,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 56,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathid"] = "bossbackup_path",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 283,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 232,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathid"] = "bossbackup_path",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 289,
          name = "boss_heavy2",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = -32,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["activateobjectslayer"] = "roofobjects",
            ["cancelondefeatedid"] = 267,
            ["cleartriggerid"] = 290
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 19,
      name = "boss_heavy1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 280,
          name = "boss_heavy1",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = -16,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["activateobjectslayer"] = "roofobjects",
            ["cancelondefeatedid"] = 267,
            ["cleartriggerid"] = 289
          }
        },
        {
          id = 281,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 232,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathid"] = "bossbackup_path",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 282,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 56,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {
            ["defeatitemlaunch"] = true,
            ["pathid"] = "bossbackup_path",
            ["pathmode"] = "relative"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 20,
      name = "boss_arms",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 278,
          name = "armor_leftarm",
          type = "LordArmorLeftArmShot",
          shape = "rectangle",
          x = 144,
          y = -10,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1419,
          visible = true,
          properties = {}
        },
        {
          id = 279,
          name = "armor_rightarm",
          type = "LordArmorRightArmShot",
          shape = "rectangle",
          x = 144,
          y = -10,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1422,
          visible = true,
          properties = {}
        },
        {
          id = 303,
          name = "boss_arms",
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
            { x = 288, y = 0 }
          },
          properties = {
            ["activateobjectslayer"] = "roofobjects",
            ["cleartriggerid"] = 289
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 21,
      name = "bossplayertriggers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 201,
          name = "leftarmtrigger",
          type = "Trigger",
          shape = "rectangle",
          x = 192,
          y = 0,
          width = 96,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 200,
          name = "rightarmtrigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 96,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 304,
          name = "sideattacktrigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 288,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 22,
      name = "boss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 265,
          name = "boss_trigger",
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
            { x = 288, y = 0 }
          },
          properties = {
            ["activateobjectslayer"] = "roofobjects",
            ["cleartowin"] = true,
            ["musicfile"] = "mus/10 - Creeping Thing.vgz"
          }
        },
        {
          id = 267,
          name = "boss",
          type = "LordArmored",
          shape = "rectangle",
          x = 144,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1386,
          visible = true,
          properties = {
            ["pathid"] = "boss_path",
            ["rideid"] = 269
          }
        },
        {
          id = 269,
          name = "armor_body",
          type = "LordArmorBodyAttack",
          shape = "rectangle",
          x = 144,
          y = -10,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1416,
          visible = true,
          properties = {
            ["pathid"] = "boss_armor_path"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 23,
      name = "boss_path",
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
          id = 268,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = 40,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -40, y = 8 },
            { x = 0, y = 16 },
            { x = 40, y = 8 },
            { x = 0, y = 0 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 24,
      name = "boss_armor_path",
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
          id = 274,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = 40,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -24, y = 8 },
            { x = 0, y = 16 },
            { x = 24, y = 8 },
            { x = 0, y = 0 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 25,
      name = "bosshouse_doors",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 261,
          name = "door",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 144,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1136,
          visible = true,
          properties = {}
        },
        {
          id = 262,
          name = "door",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 144,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 2147484784,
          visible = true,
          properties = {}
        },
        {
          id = 263,
          name = "storehouse_doors",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 128,
          width = 32,
          height = 32,
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
      id = 26,
      name = "preboss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 264,
          name = "preboss",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["activateobjectslayer"] = "ground",
            ["musicfade"] = true,
            ["soundfile"] = "snd/alarm4.ogg"
          }
        },
        {
          id = 302,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 176,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1428,
          visible = true,
          properties = {}
        },
        {
          id = 301,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 16,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1428,
          visible = true,
          properties = {}
        },
        {
          id = 300,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 144,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 1425,
          visible = true,
          properties = {}
        },
        {
          id = 299,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 96,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1428,
          visible = true,
          properties = {}
        },
        {
          id = 298,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 64,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 1425,
          visible = true,
          properties = {}
        },
        {
          id = 297,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 176,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1428,
          visible = true,
          properties = {}
        },
        {
          id = 296,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 144,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 1425,
          visible = true,
          properties = {}
        },
        {
          id = 295,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 16,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1428,
          visible = true,
          properties = {}
        },
        {
          id = 294,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 96,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1428,
          visible = true,
          properties = {}
        },
        {
          id = 293,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 64,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 1425,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 27,
      name = "swordsmen4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 256,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 216,
          y = 240,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1239,
          visible = true,
          properties = {}
        },
        {
          id = 118,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 72,
          y = 240,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1239,
          visible = true,
          properties = {}
        },
        {
          id = 257,
          name = "swordsmen4",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 152,
          width = 64,
          height = 104,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 258,
          name = "swordswoman",
          type = "Swordsman",
          shape = "rectangle",
          x = 144,
          y = 208,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1263,
          visible = true,
          properties = {
            ["defeatitem"] = "ItemWingman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 28,
      name = "swordsmen3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 251,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 200,
          y = 336,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1239,
          visible = true,
          properties = {}
        },
        {
          id = 252,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 232,
          y = 336,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1239,
          visible = true,
          properties = {}
        },
        {
          id = 253,
          name = "swordsmen3",
          type = "Trigger",
          shape = "rectangle",
          x = 160,
          y = 232,
          width = 72,
          height = 120,
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
      id = 29,
      name = "swordsmen2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 104,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 88,
          y = 400,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1239,
          visible = true,
          properties = {}
        },
        {
          id = 250,
          name = "swordsmen2",
          type = "Trigger",
          shape = "rectangle",
          x = 56,
          y = 232,
          width = 72,
          height = 184,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 255,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 56,
          y = 400,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1239,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 30,
      name = "swordsmenheavy1",
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
          id = 105,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 120,
          y = 504,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 115,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 152,
          y = 504,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1239,
          visible = true,
          properties = {}
        },
        {
          id = 117,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 136,
          y = 504,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1239,
          visible = true,
          properties = {}
        },
        {
          id = 143,
          name = "swordsmenheavy1",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 152,
          width = 32,
          height = 368,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 127,
          name = "heavypath",
          type = "",
          shape = "polyline",
          x = 136,
          y = 504,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 8, y = 64 },
            { x = 8, y = -56 },
            { x = 40, y = -120 },
            { x = -24, y = -248 },
            { x = 8, y = -312 }
          },
          properties = {}
        },
        {
          id = 254,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 168,
          y = 504,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 266,
          name = "bounds",
          type = "EnemyBounds",
          shape = "polyline",
          x = 160,
          y = 96,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 32 },
            { x = 0, y = 80 },
            { x = 96, y = 80 },
            { x = 152, y = 112 }
          },
          properties = {}
        },
        {
          id = 320,
          name = "bounds",
          type = "EnemyBounds",
          shape = "polyline",
          x = 160,
          y = 96,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 160, y = 160 },
            { x = 96, y = 160 },
            { x = 96, y = 240 },
            { x = 80, y = 288 },
            { x = 80, y = 336 },
            { x = 96, y = 368 },
            { x = 96, y = 400 },
            { x = 80, y = 432 },
            { x = 80, y = 496 },
            { x = 96, y = 576 },
            { x = 184, y = 688 }
          },
          properties = {}
        },
        {
          id = 316,
          name = "bounds",
          type = "EnemyBounds",
          shape = "polyline",
          x = 160,
          y = 96,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -184, y = 688 },
            { x = -128, y = 592 },
            { x = -128, y = 528 },
            { x = -112, y = 496 },
            { x = -112, y = 416 },
            { x = -128, y = 384 },
            { x = -112, y = 352 },
            { x = -112, y = 272 },
            { x = -128, y = 208 },
            { x = -128, y = 160 },
            { x = -184, y = 160 }
          },
          properties = {}
        },
        {
          id = 319,
          name = "bounds",
          type = "EnemyBounds",
          shape = "polyline",
          x = 160,
          y = 96,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -184, y = 104 },
            { x = -128, y = 80 },
            { x = -32, y = 80 },
            { x = -32, y = 32 },
            { x = 0, y = 32 }
          },
          properties = {}
        }
      }
    },
    {
      type = "tilelayer",
      id = 31,
      name = "storehouse2ndfloor",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztzMEJwCAQBMDDdG4V2k4qS0QEf+rLzwwsB8uxEQAAAJx6U0R++p3TtH5H+f/qImVja7UxAgAAAAAAAAAAAAAAAAA3fWlqEQ0="
    },
    {
      type = "objectgroup",
      id = 32,
      name = "storehouse2ndpaths",
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
          id = 197,
          name = "",
          type = "",
          shape = "polyline",
          x = -24,
          y = 768,
          width = 0,
          height = 0,
          rotation = 0,
          visible = false,
          polyline = {
            { x = 0, y = 0 },
            { x = -24, y = 0 }
          },
          properties = {
            ["cost"] = 3
          }
        },
        {
          id = 198,
          name = "",
          type = "",
          shape = "polyline",
          x = 336,
          y = 776,
          width = 0,
          height = 0,
          rotation = 0,
          visible = false,
          polyline = {
            { x = 0, y = 0 },
            { x = -24, y = 0 }
          },
          properties = {
            ["cost"] = 3
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 33,
      name = "storehouse2ndobjects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 192,
          name = "civilian",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 768,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1164,
          visible = true,
          properties = {
            ["rideid"] = 136
          }
        },
        {
          id = 193,
          name = "civilian",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 768,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1227,
          visible = true,
          properties = {
            ["rideid"] = 136
          }
        },
        {
          id = 206,
          name = "storehouse2ndobjects",
          type = "Trigger",
          shape = "rectangle",
          x = 72,
          y = 752,
          width = 144,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 236,
          name = "civilian",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 768,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1203,
          visible = true,
          properties = {
            ["rideid"] = 136
          }
        },
        {
          id = 237,
          name = "civilian",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 768,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1215,
          visible = true,
          properties = {
            ["rideid"] = 136
          }
        },
        {
          id = 136,
          name = "bombtrigger",
          type = "BombTrigger",
          shape = "rectangle",
          x = 80,
          y = 784,
          width = 128,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["defeattriggerid"] = 259,
            ["iscover"] = true,
            ["score"] = 2000
          }
        }
      }
    },
    {
      type = "tilelayer",
      id = 34,
      name = "storehouse2nddestroyed",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztyrEJACAQBEHhO7MjsQMr10ARTDQzmYELDjYlAAAAfihxb+pDk0fTZtdibzk/AAAAAAAAAAAAAAAAAPzQARVgBE4="
    },
    {
      type = "tilelayer",
      id = 35,
      name = "storehouse2ndfront",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztzsEJgEAMBMBgOrMftZLT3qxIxfPvoSDCDOxzN4kAAAD4l7U788bGk62jN2TEWDNl+9Z1v+zduWbJtr/6vBcAAAAAAAAAAAAAAAAA+NIGBkEQqw=="
    },
    {
      type = "tilelayer",
      id = 36,
      name = "storehouseroof",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt0cEJgDAQRcEl7YgNKFqAov2XYy5CEInEXGfg35Z32QgAAIC6IUWMqb8x5y0drbux5x0/W2Xj1tp6a7S2pkrj2VorN9tHo2ydnT8EAAAAAAAAAAAAAAAAgB4X+48IXQ=="
    },
    {
      type = "objectgroup",
      id = 37,
      name = "storehouse2nddestruction",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 326,
          name = "giantexplosion",
          type = "Spark",
          shape = "rectangle",
          x = 144,
          y = 776,
          width = 256,
          height = 256,
          rotation = 0,
          gid = 1459,
          visible = true,
          properties = {}
        },
        {
          id = 168,
          name = "walldebris",
          type = "Debris",
          shape = "rectangle",
          x = 88,
          y = 784,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 834,
          visible = true,
          properties = {
            ["velx"] = -180
          }
        },
        {
          id = 169,
          name = "walldebris",
          type = "Debris",
          shape = "rectangle",
          x = 104,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 834,
          visible = true,
          properties = {
            ["velx"] = -120,
            ["vely"] = -160
          }
        },
        {
          id = 170,
          name = "walldebris",
          type = "Debris",
          shape = "rectangle",
          x = 136,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 834,
          visible = true,
          properties = {
            ["vely"] = -160
          }
        },
        {
          id = 171,
          name = "walldebris",
          type = "Debris",
          shape = "rectangle",
          x = 120,
          y = 784,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 887,
          visible = true,
          properties = {
            ["velx"] = -60
          }
        },
        {
          id = 172,
          name = "walldebris",
          type = "Debris",
          shape = "rectangle",
          x = 168,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 834,
          visible = true,
          properties = {
            ["velx"] = 120,
            ["vely"] = -160
          }
        },
        {
          id = 173,
          name = "walldebris",
          type = "Debris",
          shape = "rectangle",
          x = 152,
          y = 784,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 889,
          visible = true,
          properties = {
            ["velx"] = 60
          }
        },
        {
          id = 174,
          name = "walldebris",
          type = "Debris",
          shape = "rectangle",
          x = 120,
          y = 752,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 722,
          visible = true,
          properties = {
            ["velx"] = -60,
            ["vely"] = -200
          }
        },
        {
          id = 175,
          name = "walldebris",
          type = "Debris",
          shape = "rectangle",
          x = 184,
          y = 784,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 834,
          visible = true,
          properties = {
            ["velx"] = 180
          }
        },
        {
          id = 176,
          name = "walldebris",
          type = "Debris",
          shape = "rectangle",
          x = 152,
          y = 752,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 722,
          visible = true,
          properties = {
            ["velx"] = 60,
            ["vely"] = -200
          }
        },
        {
          id = 177,
          name = "roofdebris",
          type = "Debris",
          shape = "rectangle",
          x = 104,
          y = 736,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 555,
          visible = true,
          properties = {
            ["velx"] = -120,
            ["vely"] = -240
          }
        },
        {
          id = 178,
          name = "roofdebris",
          type = "Debris",
          shape = "rectangle",
          x = 88,
          y = 752,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 555,
          visible = true,
          properties = {
            ["velx"] = -180,
            ["vely"] = -200
          }
        },
        {
          id = 179,
          name = "roofdebris",
          type = "Debris",
          shape = "rectangle",
          x = 72,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 555,
          visible = true,
          properties = {
            ["velx"] = -240,
            ["vely"] = -160
          }
        },
        {
          id = 180,
          name = "roofdebris",
          type = "Debris",
          shape = "rectangle",
          x = 88,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 587,
          visible = true,
          properties = {
            ["velx"] = -180,
            ["vely"] = -160
          }
        },
        {
          id = 181,
          name = "roofdebris",
          type = "Debris",
          shape = "rectangle",
          x = 104,
          y = 752,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 587,
          visible = true,
          properties = {
            ["velx"] = -120,
            ["vely"] = -200
          }
        },
        {
          id = 182,
          name = "windowdebris",
          type = "Debris",
          shape = "rectangle",
          x = 120,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 871,
          visible = true,
          properties = {
            ["velx"] = -60,
            ["vely"] = -160
          }
        },
        {
          id = 183,
          name = "windowdebris",
          type = "Debris",
          shape = "rectangle",
          x = 152,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 873,
          visible = true,
          properties = {
            ["velx"] = 60,
            ["vely"] = -160
          }
        },
        {
          id = 184,
          name = "roofdebris",
          type = "Debris",
          shape = "rectangle",
          x = 72,
          y = 784,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 587,
          visible = true,
          properties = {
            ["velx"] = -240
          }
        },
        {
          id = 185,
          name = "roofdebris",
          type = "Debris",
          shape = "rectangle",
          x = 168,
          y = 736,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 557,
          visible = true,
          properties = {
            ["velx"] = 120,
            ["vely"] = -240
          }
        },
        {
          id = 186,
          name = "roofdebris",
          type = "Debris",
          shape = "rectangle",
          x = 168,
          y = 752,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 589,
          visible = true,
          properties = {
            ["velx"] = 120,
            ["vely"] = -200
          }
        },
        {
          id = 187,
          name = "roofdebris",
          type = "Debris",
          shape = "rectangle",
          x = 184,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 589,
          visible = true,
          properties = {
            ["velx"] = 180,
            ["vely"] = -160
          }
        },
        {
          id = 188,
          name = "roofdebris",
          type = "Debris",
          shape = "rectangle",
          x = 184,
          y = 752,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 557,
          visible = true,
          properties = {
            ["velx"] = 180,
            ["vely"] = -200
          }
        },
        {
          id = 189,
          name = "roofdebris",
          type = "Debris",
          shape = "rectangle",
          x = 200,
          y = 784,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 589,
          visible = true,
          properties = {
            ["velx"] = 240
          }
        },
        {
          id = 190,
          name = "roofdebris",
          type = "Debris",
          shape = "rectangle",
          x = 200,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 557,
          visible = true,
          properties = {
            ["velx"] = 240,
            ["vely"] = -160
          }
        },
        {
          id = 191,
          name = "roofdebris",
          type = "Debris",
          shape = "rectangle",
          x = 136,
          y = 736,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 572,
          visible = true,
          properties = {
            ["vely"] = -240
          }
        },
        {
          id = 259,
          name = "storehouse2nddestruction",
          type = "Trigger",
          shape = "rectangle",
          x = -24,
          y = 752,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "sparks",
            ["hidelayers"] = "storehouse2ndfront\nstorehouseroof",
            ["showlayers"] = "storehouse2nddestroyed"
          }
        }
      }
    },
    {
      type = "tilelayer",
      id = 38,
      name = "model houses",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt0jEKwkAQBdAhOVn0kB4hBA8g4oFEcoAgNm4TGHCzbGfzHvxm+N38CAAAAODIc4hYU17Db2cut2vKUuls5fZJeVc6t3J7pNwrnWmMOKWcx+POpdGhX+u/PfvYtf7bs49dawM9+wAAAAAAAAAAAAAAAIB/+QI51ibS"
    },
    {
      type = "tilelayer",
      id = 39,
      name = "model rooftops",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt0M9NAkEYQPHZuaBnCBQgkQIQKEDQEtAKhArEejRaAAQKELAA/5WgViDeeMfNCpvsnkx8v+Qlk/m+zGFCkCRJkiT9V7dJCHf0QZ/0Rff0kBTbmXKe0Tdt6IfmtCi5U4khHNBhLLfzyHlJq1Rreiq488z5hV5TvdF7wZ2/rMr/1WhIF3RJdWrE/FnWEXdNuqIRjemYWjF/tu+da5rQzY53ds2y2tydUCdVl3oxf5Z1yl2fBqnO6DzmzyRJkiRJkiRJkiRJkiRJkiRJkiT9tgUl6kQh"
    },
    {
      type = "objectgroup",
      id = 40,
      name = "storehouse_doors",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 128,
          name = "door",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 848,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1137,
          visible = true,
          properties = {}
        },
        {
          id = 129,
          name = "door",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 848,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 2147484785,
          visible = true,
          properties = {}
        },
        {
          id = 130,
          name = "storehouse_doors",
          type = "Trigger",
          shape = "rectangle",
          x = 72,
          y = 832,
          width = 144,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 132,
          name = "door",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 848,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 2147484785,
          visible = true,
          properties = {}
        },
        {
          id = 133,
          name = "door",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 848,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1137,
          visible = true,
          properties = {}
        },
        {
          id = 134,
          name = "door",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 848,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1137,
          visible = true,
          properties = {}
        },
        {
          id = 135,
          name = "door",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 848,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 2147484785,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 41,
      name = "postmidboss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 325,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 296,
          y = 736,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["cameraspeed"] = "60"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 42,
      name = "midboss_backup",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {},
      objects = {
        {
          id = 246,
          name = "midboss_backup",
          type = "Trigger",
          shape = "rectangle",
          x = -24,
          y = 800,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 108,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 96,
          y = 848,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 107,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 192,
          y = 848,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 116,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 144,
          y = 848,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 247,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 144,
          y = 848,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 248,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 192,
          y = 848,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 249,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 96,
          y = 848,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 43,
      name = "midboss",
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
          id = 194,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 64,
          y = 936,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {
            ["pathfinder"] = "random"
          }
        },
        {
          id = 195,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 224,
          y = 936,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {
            ["pathfinder"] = "random"
          }
        },
        {
          id = 202,
          name = "midboss",
          type = "MilitiaCaptainNormalAttack1",
          shape = "rectangle",
          x = 96,
          y = 784,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1179,
          visible = true,
          properties = {
            ["backuptriggerid"] = 246,
            ["defeatitemlaunch"] = true,
            ["initiallayer"] = "storehouse2ndobjects"
          }
        },
        {
          id = 98,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 272,
          y = 872,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathfinder"] = "random"
          }
        },
        {
          id = 113,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 16,
          y = 872,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathfinder"] = "random"
          }
        },
        {
          id = 114,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 144,
          y = 880,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathfinder"] = "random"
          }
        },
        {
          id = 327,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 728,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground",
            ["cameraspeed"] = "0",
            ["cleartriggerid"] = 325
          }
        },
        {
          id = 205,
          name = "",
          type = "",
          shape = "polyline",
          x = 240,
          y = 880,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -64, y = 0 },
            { x = -96, y = 0 }
          },
          properties = {}
        },
        {
          id = 204,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = 880,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -32, y = 0 }
          },
          properties = {}
        },
        {
          id = 221,
          name = "",
          type = "",
          shape = "polyline",
          x = 56,
          y = 944,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 24, y = -48 }
          },
          properties = {}
        },
        {
          id = 222,
          name = "",
          type = "",
          shape = "polyline",
          x = 56,
          y = 944,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 72, y = 0 }
          },
          properties = {}
        },
        {
          id = 223,
          name = "",
          type = "",
          shape = "polyline",
          x = 232,
          y = 944,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 0 },
            { x = -72, y = 0 }
          },
          properties = {}
        },
        {
          id = 224,
          name = "",
          type = "",
          shape = "polyline",
          x = 232,
          y = 944,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 0 },
            { x = -24, y = -48 }
          },
          properties = {}
        },
        {
          id = 225,
          name = "",
          type = "",
          shape = "polyline",
          x = 72,
          y = 880,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 40, y = 0 },
            { x = -56, y = 0 }
          },
          properties = {}
        },
        {
          id = 226,
          name = "",
          type = "",
          shape = "polyline",
          x = 216,
          y = 880,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -40, y = 0 },
            { x = 56, y = 0 }
          },
          properties = {}
        },
        {
          id = 227,
          name = "",
          type = "",
          shape = "polyline",
          x = -16,
          y = 880,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 48 }
          },
          properties = {}
        },
        {
          id = 228,
          name = "",
          type = "",
          shape = "polyline",
          x = 304,
          y = 880,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 48 }
          },
          properties = {}
        },
        {
          id = 196,
          name = "",
          type = "",
          shape = "polyline",
          x = 176,
          y = 784,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -48, y = -16 },
            { x = -56, y = 0 }
          },
          properties = {}
        },
        {
          id = 199,
          name = "",
          type = "",
          shape = "polyline",
          x = 160,
          y = 784,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 24, y = 0 },
            { x = 8, y = 0 }
          },
          properties = {}
        },
        {
          id = 238,
          name = "",
          type = "",
          shape = "polyline",
          x = 152,
          y = 784,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -32, y = 0 },
            { x = -48, y = 0 }
          },
          properties = {}
        },
        {
          id = 239,
          name = "",
          type = "",
          shape = "polyline",
          x = 184,
          y = 792,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 0 },
            { x = -64, y = 0 }
          },
          properties = {}
        },
        {
          id = 240,
          name = "",
          type = "",
          shape = "polyline",
          x = 192,
          y = 768,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -32, y = 0 },
            { x = -64, y = 0 }
          },
          properties = {}
        },
        {
          id = 241,
          name = "",
          type = "",
          shape = "polyline",
          x = 168,
          y = 752,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -40, y = 0 },
            { x = -40, y = 8 }
          },
          properties = {}
        },
        {
          id = 242,
          name = "",
          type = "",
          shape = "polyline",
          x = 208,
          y = 776,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -48, y = -8 },
            { x = -40, y = 8 }
          },
          properties = {}
        },
        {
          id = 243,
          name = "",
          type = "",
          shape = "polyline",
          x = 184,
          y = 752,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -40, y = 0 },
            { x = -40, y = 8 }
          },
          properties = {}
        }
      }
    },
    {
      type = "tilelayer",
      id = 44,
      name = "midboss_cover",
      x = 0,
      y = 0,
      width = 18,
      height = 245,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzt0KENACAMRUEE+29CWRGBIQWBJOTOVHzVVwoAAADwuqjz9rpv7WKLw/aTSH+eWqxyl9/7AAAAAAAAAAAAAAAAwAsGJ+oIWQ=="
    },
    {
      type = "objectgroup",
      id = 46,
      name = "militia9b",
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
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 240,
          y = 1192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 152,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 240,
          y = 1168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 151,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 240,
          y = 1216,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 235,
          name = "militia9b",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 1224,
          width = 96,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 90,
          name = "path",
          type = "",
          shape = "polyline",
          x = 256,
          y = 1216,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 0 },
            { x = -16, y = 112 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 47,
      name = "militia9a",
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
          id = 148,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 48,
          y = 1264,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 149,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 48,
          y = 1240,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 142,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 48,
          y = 1216,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 234,
          name = "militia9a",
          type = "Trigger",
          shape = "rectangle",
          x = 88,
          y = 1272,
          width = 96,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 91,
          name = "path",
          type = "",
          shape = "polyline",
          x = 40,
          y = 1248,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 16 },
            { x = 8, y = 80 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 49,
      name = "catapult4",
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
          id = 25,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 144,
          y = 1200,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 984,
          visible = true,
          properties = {
            ["faceangle"] = 90
          }
        },
        {
          id = 26,
          name = "catapult4",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 1088,
          width = 32,
          height = 224,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 27,
          name = "path",
          type = "",
          shape = "polyline",
          x = 144,
          y = 1200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 },
            { x = 0, y = -96 },
            { x = 0, y = 128 }
          },
          properties = {}
        },
        {
          id = 123,
          name = "operator",
          type = "CatapultOperator",
          shape = "rectangle",
          x = 144,
          y = 1168,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1033,
          visible = true,
          properties = {
            ["rideid"] = 25
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 50,
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
          id = 22,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 144,
          y = 1440,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 984,
          visible = true,
          properties = {
            ["faceangle"] = 90
          }
        },
        {
          id = 24,
          name = "catapult3",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 1328,
          width = 32,
          height = 224,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 23,
          name = "path",
          type = "",
          shape = "polyline",
          x = 144,
          y = 1440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 },
            { x = 0, y = -96 },
            { x = 0, y = 128 }
          },
          properties = {}
        },
        {
          id = 124,
          name = "operator",
          type = "CatapultOperator",
          shape = "rectangle",
          x = 144,
          y = 1408,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1033,
          visible = true,
          properties = {
            ["rideid"] = 22
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 48,
      name = "heavy4",
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
          id = 28,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 256,
          y = 1504,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 32,
          y = 1504,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "heavy4",
          type = "Trigger",
          shape = "rectangle",
          x = 72,
          y = 1120,
          width = 32,
          height = 464,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 30,
          name = "path",
          type = "",
          shape = "polyline",
          x = 32,
          y = 1504,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 64 },
            { x = 0, y = -144 },
            { x = 224, y = -144 },
            { x = 224, y = -368 },
            { x = 272, y = -368 }
          },
          properties = {}
        },
        {
          id = 31,
          name = "path",
          type = "",
          shape = "polyline",
          x = 256,
          y = 1504,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 64 },
            { x = 0, y = -160 },
            { x = -224, y = -160 },
            { x = -224, y = -368 },
            { x = -272, y = -368 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 51,
      name = "heavycatapult1_path",
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
      id = 52,
      name = "jumpingarcher",
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
          id = 155,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 144,
          y = 1704,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1108,
          visible = true,
          properties = {
            ["defeatitem"] = "ItemWingman",
            ["defeatitemlaunch"] = true,
            ["health"] = 40,
            ["pathfinder"] = "random1way",
            ["pathspeed"] = "180",
            ["score"] = 750,
            ["strafearc"] = 180
          }
        },
        {
          id = 157,
          name = "jumpingarcher",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 1600,
          width = 64,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 154,
          name = "jump",
          type = "",
          shape = "polyline",
          x = 56,
          y = 1664,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 40, y = -48 },
            { x = 88, y = -32 }
          },
          properties = {
            ["beziercurve"] = true
          }
        },
        {
          id = 156,
          name = "jump",
          type = "",
          shape = "polyline",
          x = 136,
          y = 1664,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = -32 },
            { x = 56, y = -48 },
            { x = 88, y = 0 }
          },
          properties = {
            ["beziercurve"] = true
          }
        },
        {
          id = 158,
          name = "jump",
          type = "",
          shape = "polyline",
          x = 136,
          y = 1736,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = -32 },
            { x = 48, y = -72 },
            { x = 88, y = -72 }
          },
          properties = {
            ["beziercurve"] = true
          }
        },
        {
          id = 159,
          name = "jump",
          type = "",
          shape = "polyline",
          x = 56,
          y = 1736,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = -72 },
            { x = 48, y = -72 },
            { x = 88, y = -32 }
          },
          properties = {
            ["beziercurve"] = true
          }
        },
        {
          id = 160,
          name = "jump",
          type = "",
          shape = "polyline",
          x = 136,
          y = 1736,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = -32 },
            { x = 56, y = -48 },
            { x = 88, y = 0 }
          },
          properties = {
            ["beziercurve"] = true
          }
        },
        {
          id = 161,
          name = "jump",
          type = "",
          shape = "polyline",
          x = 56,
          y = 1808,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = -72 },
            { x = 48, y = -72 },
            { x = 88, y = -32 }
          },
          properties = {
            ["beziercurve"] = true
          }
        },
        {
          id = 162,
          name = "jump",
          type = "",
          shape = "polyline",
          x = 56,
          y = 1736,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 40, y = -48 },
            { x = 88, y = -32 }
          },
          properties = {
            ["beziercurve"] = true
          }
        },
        {
          id = 163,
          name = "jump",
          type = "",
          shape = "polyline",
          x = 136,
          y = 1808,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = -32 },
            { x = 48, y = -72 },
            { x = 88, y = -72 }
          },
          properties = {
            ["beziercurve"] = true
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 53,
      name = "militia8b",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 147,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 0,
          y = 1696,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathid"] = "militia8a",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 150,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 312,
          y = 1696,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathid"] = "militia8a",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 153,
          name = "militia8b",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 1640,
          width = 96,
          height = 8,
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
      id = 54,
      name = "militia8a",
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
          id = 145,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 16,
          y = 1688,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 146,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 296,
          y = 1688,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 233,
          name = "militia8a",
          type = "Trigger",
          shape = "rectangle",
          x = 80,
          y = 1704,
          width = 96,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 92,
          name = "path",
          type = "",
          shape = "polyline",
          x = 0,
          y = 1696,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 72, y = 0 }
          },
          properties = {}
        },
        {
          id = 93,
          name = "path",
          type = "",
          shape = "polyline",
          x = 232,
          y = 1696,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 0 },
            { x = 72, y = 0 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 55,
      name = "militia7",
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
          id = 141,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 8,
          y = 1904,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 139,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 280,
          y = 1904,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 144,
          name = "militia7",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 1888,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 88,
          name = "path",
          type = "",
          shape = "polyline",
          x = 0,
          y = 1904,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 64, y = 0 }
          },
          properties = {}
        },
        {
          id = 89,
          name = "path",
          type = "",
          shape = "polyline",
          x = 232,
          y = 1904,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 0 },
            { x = 48, y = 0 }
          },
          properties = {}
        },
        {
          id = 137,
          name = "path",
          type = "",
          shape = "polyline",
          x = -16,
          y = 2016,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 72, y = 0 }
          },
          properties = {}
        },
        {
          id = 138,
          name = "path",
          type = "",
          shape = "polyline",
          x = 248,
          y = 2016,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 0 },
            { x = 48, y = 0 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 56,
      name = "heavy3",
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
          id = 17,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = -8,
          y = 2024,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 296,
          y = 2024,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "path",
          type = "",
          shape = "polyline",
          x = -8,
          y = 2024,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 88, y = 0 },
            { x = 88, y = -208 },
            { x = 216, y = -208 },
            { x = 216, y = -448 },
            { x = 320, y = -448 }
          },
          properties = {}
        },
        {
          id = 20,
          name = "path",
          type = "",
          shape = "polyline",
          x = 296,
          y = 2024,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -88, y = 0 },
            { x = -88, y = -224 },
            { x = -216, y = -224 },
            { x = -216, y = -448 },
            { x = -320, y = -448 }
          },
          properties = {}
        },
        {
          id = 21,
          name = "heavy3",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 1568,
          width = 32,
          height = 456,
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
      id = 57,
      name = "archers3",
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
          id = 111,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 208,
          y = 2128,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 112,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 80,
          y = 2128,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 122,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 120,
          y = 2024,
          width = 48,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 97,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 176,
          y = 2168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1108,
          visible = true,
          properties = {
            ["defeatitem"] = "ItemWingman",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 81,
          name = "path",
          type = "",
          shape = "polyline",
          x = 0,
          y = 2216,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 112, y = -48 },
            { x = 176, y = -48 }
          },
          properties = {}
        },
        {
          id = 86,
          name = "path",
          type = "",
          shape = "polyline",
          x = 248,
          y = 2184,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -40, y = -24 },
            { x = -40, y = -144 },
            { x = 8, y = -144 }
          },
          properties = {}
        },
        {
          id = 87,
          name = "path",
          type = "",
          shape = "polyline",
          x = 96,
          y = 2160,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 0 },
            { x = -16, y = -120 },
            { x = -64, y = -120 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 58,
      name = "archers2",
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
          id = 119,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 2184,
          width = 64,
          height = 104,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 109,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 80,
          y = 2200,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 110,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 256,
          y = 2272,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 126,
          name = "path",
          type = "",
          shape = "polyline",
          x = 272,
          y = 2272,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 0 },
            { x = -64, y = 0 },
            { x = -64, y = -72 }
          },
          properties = {}
        },
        {
          id = 232,
          name = "path",
          type = "",
          shape = "polyline",
          x = 152,
          y = 2272,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -120, y = 0 },
            { x = -72, y = 0 },
            { x = -72, y = -72 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 59,
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
          id = 15,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 96,
          y = 2416,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "path",
          type = "",
          shape = "polyline",
          x = 80,
          y = 2408,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 16, y = 8 },
            { x = 16, y = 56 },
            { x = 16, y = -88 },
            { x = 112, y = -88 },
            { x = 112, y = -224 },
            { x = 16, y = -224 },
            { x = 16, y = -384 },
            { x = 112, y = -384 },
            { x = 112, y = 8 }
          },
          properties = {}
        },
        {
          id = 16,
          name = "heavy2",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 2024,
          width = 32,
          height = 408,
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
      id = 60,
      name = "archers1",
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
          id = 103,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 80,
          y = 2464,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 106,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 208,
          y = 2480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1012,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 120,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 2376,
          width = 64,
          height = 192,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 82,
          name = "path",
          type = "",
          shape = "polyline",
          x = 88,
          y = 2416,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = -32 },
            { x = -8, y = 144 }
          },
          properties = {}
        },
        {
          id = 83,
          name = "path",
          type = "",
          shape = "polyline",
          x = 232,
          y = 2368,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -24, y = 16 },
            { x = -24, y = 192 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 61,
      name = "militia6",
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
          id = 94,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 120,
          y = 2616,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 95,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 168,
          y = 2616,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 96,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 2608,
          width = 64,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 99,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 136,
          y = 2608,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 100,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 152,
          y = 2608,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 78,
          name = "path",
          type = "",
          shape = "polyline",
          x = 48,
          y = 2616,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 16 },
            { x = 32, y = 16 },
            { x = 48, y = 0 },
            { x = 72, y = 0 }
          },
          properties = {}
        },
        {
          id = 79,
          name = "path",
          type = "",
          shape = "polyline",
          x = 200,
          y = 2616,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -32, y = 0 },
            { x = -8, y = 0 },
            { x = 8, y = 16 },
            { x = 32, y = 16 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 62,
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
          id = 8,
          name = "heavy",
          type = "HeavyMilitia",
          shape = "rectangle",
          x = 96,
          y = 2744,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1084,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "heavy1",
          type = "Trigger",
          shape = "rectangle",
          x = 96,
          y = 2464,
          width = 32,
          height = 304,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 9,
          name = "path",
          type = "",
          shape = "polyline",
          x = 80,
          y = 2704,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 16, y = 40 },
            { x = 16, y = 72 },
            { x = 16, y = -96 },
            { x = 112, y = -96 },
            { x = 112, y = -240 },
            { x = 16, y = -240 },
            { x = 16, y = 88 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 63,
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
          id = 11,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 144,
          y = 3032,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 984,
          visible = true,
          properties = {
            ["faceangle"] = 90
          }
        },
        {
          id = 12,
          name = "path",
          type = "",
          shape = "polyline",
          x = 144,
          y = 3032,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 },
            { x = 0, y = -184 }
          },
          properties = {}
        },
        {
          id = 13,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 2808,
          width = 32,
          height = 248,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 33,
          name = "operator",
          type = "CatapultOperator",
          shape = "rectangle",
          x = 144,
          y = 3000,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1069,
          visible = true,
          properties = {
            ["defeatitem"] = "ItemWingman",
            ["rideid"] = 11
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 64,
      name = "militia5",
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
          id = 71,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 112,
          y = 2880,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 72,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 176,
          y = 2880,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 73,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = -8,
          y = 2896,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 74,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 296,
          y = 2896,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 77,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 2856,
          width = 64,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 230,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 112,
          y = 2864,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 231,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 176,
          y = 2864,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 69,
          name = "path",
          type = "",
          shape = "polyline",
          x = 184,
          y = 2896,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = -16 },
            { x = -8, y = 8 },
            { x = 24, y = 8 }
          },
          properties = {}
        },
        {
          id = 70,
          name = "path",
          type = "",
          shape = "polyline",
          x = 112,
          y = 2848,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 32 },
            { x = 0, y = 56 },
            { x = -32, y = 56 }
          },
          properties = {}
        },
        {
          id = 80,
          name = "path",
          type = "",
          shape = "polyline",
          x = 0,
          y = 2896,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 0 },
            { x = 64, y = 0 }
          },
          properties = {}
        },
        {
          id = 229,
          name = "path",
          type = "",
          shape = "polyline",
          x = 232,
          y = 2896,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 0 },
            { x = 64, y = 0 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 65,
      name = "militia4",
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
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 96,
          y = 3008,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 61,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 192,
          y = 3008,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 62,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 96,
          y = 2992,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 63,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 192,
          y = 2992,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 68,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 2976,
          width = 64,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 54,
          name = "path",
          type = "",
          shape = "polyline",
          x = 96,
          y = 2928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 80 },
            { x = 0, y = 104 },
            { x = -16, y = 104 }
          },
          properties = {}
        },
        {
          id = 55,
          name = "path",
          type = "",
          shape = "polyline",
          x = 208,
          y = 2928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 80 },
            { x = -16, y = 104 },
            { x = 0, y = 104 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 66,
      name = "militia3",
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
          id = 56,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 120,
          y = 3136,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 57,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 168,
          y = 3136,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 58,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 104,
          y = 3152,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 59,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 184,
          y = 3152,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 67,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 3104,
          width = 64,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 75,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 136,
          y = 3120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 76,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 152,
          y = 3120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 52,
          name = "path",
          type = "",
          shape = "polyline",
          x = 112,
          y = 3128,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -40, y = 24 },
            { x = -8, y = 24 }
          },
          properties = {}
        },
        {
          id = 53,
          name = "path",
          type = "",
          shape = "polyline",
          x = 192,
          y = 3136,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 24, y = 16 },
            { x = -8, y = 16 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 67,
      name = "militia2",
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
          id = 48,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 112,
          y = 3248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 49,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 192,
          y = 3256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 66,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 3240,
          width = 64,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 65,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 176,
          y = 3248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 64,
          name = "militia",
          type = "Militia",
          shape = "rectangle",
          x = 96,
          y = 3256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 50,
          name = "path",
          type = "",
          shape = "polyline",
          x = 96,
          y = 3248,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 8 },
            { x = 0, y = 32 },
            { x = -24, y = 32 }
          },
          properties = {}
        },
        {
          id = 51,
          name = "path",
          type = "",
          shape = "polyline",
          x = 208,
          y = 3248,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 8 },
            { x = -16, y = 32 },
            { x = 8, y = 32 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 69,
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
          id = 5,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 144,
          y = 3352,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 984,
          visible = true,
          properties = {
            ["faceangle"] = 90
          }
        },
        {
          id = 6,
          name = "path",
          type = "",
          shape = "polyline",
          x = 144,
          y = 3352,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 },
            { x = 0, y = -160 }
          },
          properties = {}
        },
        {
          id = 7,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 3152,
          width = 32,
          height = 224,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 34,
          name = "operator",
          type = "CatapultOperator",
          shape = "rectangle",
          x = 144,
          y = 3320,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1069,
          visible = true,
          properties = {
            ["defeatitem"] = "ItemWingman",
            ["rideid"] = 5
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 70,
      name = "militia1b",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 39,
          name = "",
          type = "Militia",
          shape = "rectangle",
          x = 168,
          y = 3432,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathid"] = "militia1a",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 40,
          name = "",
          type = "Militia",
          shape = "rectangle",
          x = 160,
          y = 3456,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathid"] = "militia1a",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 38,
          name = "",
          type = "Militia",
          shape = "rectangle",
          x = 192,
          y = 3456,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathid"] = "militia1a",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 36,
          name = "",
          type = "Militia",
          shape = "rectangle",
          x = 120,
          y = 3432,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathid"] = "militia1a",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 37,
          name = "",
          type = "Militia",
          shape = "rectangle",
          x = 128,
          y = 3456,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathid"] = "militia1a",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 35,
          name = "",
          type = "Militia",
          shape = "rectangle",
          x = 96,
          y = 3456,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathid"] = "militia1a",
            ["pathmode"] = "relative"
          }
        },
        {
          id = 46,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 88,
          y = 3448,
          width = 112,
          height = 32,
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
      id = 71,
      name = "militia1a",
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
          id = 41,
          name = "",
          type = "Militia",
          shape = "rectangle",
          x = 184,
          y = 3480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 42,
          name = "",
          type = "Militia",
          shape = "rectangle",
          x = 104,
          y = 3480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 43,
          name = "",
          type = "Militia",
          shape = "rectangle",
          x = 128,
          y = 3496,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 47,
          name = "",
          type = "Militia",
          shape = "rectangle",
          x = 160,
          y = 3496,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1048,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 45,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 3480,
          width = 64,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 44,
          name = "path",
          type = "",
          shape = "polyline",
          x = 144,
          y = 3520,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -24 },
            { x = 0, y = 24 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 72,
      name = "militia1_path",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {}
    },
    {
      type = "objectgroup",
      id = 73,
      name = "camera",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 2,
          name = "camera",
          type = "Camera",
          shape = "rectangle",
          x = 24,
          y = 3600,
          width = 240,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {
            ["pathid"] = "camera_path"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 74,
      name = "camera_path",
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
          id = 3,
          name = "path",
          type = "",
          shape = "polyline",
          x = 24,
          y = 3280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 320 },
            { x = 0, y = -3280 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 75,
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
      id = 76,
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
      id = 77,
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
          id = 1,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 3952,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1431,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
