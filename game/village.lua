return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 18,
  height = 270,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 229,
  nextobjectid = 564,
  properties = {
    ["cameraid"] = 2,
    ["music"] = "mus/village.vgm",
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
      name = "thatched-roof",
      firstgid = 449,
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
      terrains = {
        {
          name = "Brown",
          tile = 199,
          properties = {}
        },
        {
          name = "Yellow",
          tile = 87,
          properties = {}
        }
      },
      tilecount = 256,
      tiles = {
        {
          id = 19,
          type = "EnemyCover"
        },
        {
          id = 20,
          type = "EnemyCover"
        },
        {
          id = 21,
          type = "EnemyCover"
        },
        {
          id = 35,
          type = "EnemyCover"
        },
        {
          id = 36,
          type = "EnemyCover"
        },
        {
          id = 37,
          type = "EnemyCover"
        },
        {
          id = 64,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 65,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 70,
          type = "EnemyCover",
          terrain = { -1, -1, -1, 1 }
        },
        {
          id = 71,
          type = "EnemyCover",
          terrain = { -1, -1, 1, 1 }
        },
        {
          id = 72,
          type = "EnemyCover",
          terrain = { -1, -1, 1, -1 }
        },
        {
          id = 80,
          terrain = { 1, 1, 1, -1 }
        },
        {
          id = 81,
          terrain = { 1, 1, -1, 1 }
        },
        {
          id = 86,
          type = "EnemyCover",
          terrain = { -1, 1, -1, 1 }
        },
        {
          id = 87,
          type = "EnemyCover",
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 88,
          type = "EnemyCover",
          terrain = { 1, -1, 1, -1 }
        },
        {
          id = 96,
          terrain = { 1, -1, 1, 1 }
        },
        {
          id = 97,
          terrain = { -1, 1, 1, 1 }
        },
        {
          id = 102,
          type = "EnemyCover",
          terrain = { -1, 1, -1, -1 }
        },
        {
          id = 103,
          type = "EnemyCover",
          terrain = { 1, 1, -1, -1 }
        },
        {
          id = 104,
          type = "EnemyCover",
          terrain = { 1, -1, -1, -1 }
        },
        {
          id = 131,
          type = "EnemyCover"
        },
        {
          id = 132,
          type = "EnemyCover"
        },
        {
          id = 133,
          type = "EnemyCover"
        },
        {
          id = 147,
          type = "EnemyCover"
        },
        {
          id = 148,
          type = "EnemyCover"
        },
        {
          id = 149,
          type = "EnemyCover"
        },
        {
          id = 176,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 177,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 182,
          type = "EnemyCover",
          terrain = { -1, -1, -1, 0 }
        },
        {
          id = 183,
          type = "EnemyCover",
          terrain = { -1, -1, 0, 0 }
        },
        {
          id = 184,
          type = "EnemyCover",
          terrain = { -1, -1, 0, -1 }
        },
        {
          id = 192,
          terrain = { 0, 0, 0, -1 }
        },
        {
          id = 193,
          terrain = { 0, 0, -1, 0 }
        },
        {
          id = 198,
          type = "EnemyCover",
          terrain = { -1, 0, -1, 0 }
        },
        {
          id = 199,
          type = "EnemyCover",
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 200,
          type = "EnemyCover",
          terrain = { 0, -1, 0, -1 }
        },
        {
          id = 208,
          terrain = { 0, -1, 0, 0 }
        },
        {
          id = 209,
          terrain = { -1, 0, 0, 0 }
        },
        {
          id = 214,
          type = "EnemyCover",
          terrain = { -1, 0, -1, -1 }
        },
        {
          id = 215,
          type = "EnemyCover",
          terrain = { 0, 0, -1, -1 }
        },
        {
          id = 216,
          type = "EnemyCover",
          terrain = { 0, -1, -1, -1 }
        }
      }
    },
    {
      name = "cottage",
      firstgid = 705,
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
      terrains = {
        {
          name = "Beige",
          tile = 17,
          properties = {}
        },
        {
          name = "White",
          tile = 81,
          properties = {}
        },
        {
          name = "Brick",
          tile = 145,
          properties = {}
        }
      },
      tilecount = 256,
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
          id = 16,
          terrain = { -1, 0, -1, 0 }
        },
        {
          id = 17,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 18,
          terrain = { 0, -1, 0, -1 }
        },
        {
          id = 32,
          terrain = { -1, 0, -1, -1 }
        },
        {
          id = 33,
          terrain = { 0, 0, -1, -1 }
        },
        {
          id = 34,
          terrain = { 0, -1, -1, -1 }
        },
        {
          id = 64,
          terrain = { -1, -1, -1, 1 }
        },
        {
          id = 65,
          terrain = { -1, -1, 1, 1 }
        },
        {
          id = 66,
          terrain = { -1, -1, 1, -1 }
        },
        {
          id = 80,
          terrain = { -1, 1, -1, 1 }
        },
        {
          id = 81,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 82,
          terrain = { 1, -1, 1, -1 }
        },
        {
          id = 96,
          terrain = { -1, 1, -1, -1 }
        },
        {
          id = 97,
          terrain = { 1, 1, -1, -1 }
        },
        {
          id = 98,
          terrain = { 1, -1, -1, -1 }
        },
        {
          id = 128,
          terrain = { -1, -1, -1, 2 }
        },
        {
          id = 129,
          terrain = { -1, -1, 2, 2 }
        },
        {
          id = 130,
          terrain = { -1, -1, 2, -1 }
        },
        {
          id = 144,
          terrain = { -1, 2, -1, 2 }
        },
        {
          id = 145,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 146,
          terrain = { 2, -1, 2, -1 }
        },
        {
          id = 160,
          terrain = { -1, 2, -1, -1 }
        },
        {
          id = 161,
          terrain = { 2, 2, -1, -1 }
        },
        {
          id = 162,
          terrain = { 2, -1, -1, -1 }
        }
      }
    },
    {
      name = "fence_alt",
      firstgid = 961,
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
      firstgid = 979,
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
      firstgid = 1014,
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
      name = "Archer",
      firstgid = 1038,
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
      firstgid = 1062,
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
      firstgid = 1074,
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
      firstgid = 1098,
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
      firstgid = 1110,
      filename = "img/human/enemy/HeavyMilitia.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "img/human/enemy/HeavyMilitia.png",
      imagewidth = 192,
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
      tilecount = 30,
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
        },
        {
          id = 24,
          type = "HeavyMilitia_Guard"
        },
        {
          id = 25,
          type = "HeavyMilitia_Guard"
        },
        {
          id = 26,
          type = "HeavyMilitia_Guard"
        }
      }
    },
    {
      name = "ArcherF",
      firstgid = 1140,
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
      firstgid = 1164,
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
      firstgid = 1179,
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
      firstgid = 1199,
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
      firstgid = 1211,
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
              duration = 33
            },
            {
              tileid = 4,
              duration = 33
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
              duration = 33
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
              duration = 33
            },
            {
              tileid = 10,
              duration = 33
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
              duration = 33
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
              duration = 33
            },
            {
              tileid = 16,
              duration = 33
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
              duration = 33
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
              duration = 33
            },
            {
              tileid = 22,
              duration = 33
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
              duration = 33
            }
          }
        }
      }
    },
    {
      name = "sandbags",
      firstgid = 1235,
      filename = "img/sandbags.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "img/sandbags.png",
      imagewidth = 96,
      imageheight = 48,
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
      tilecount = 18,
      tiles = {
        {
          id = 7,
          type = "EnemyCover"
        },
        {
          id = 8,
          type = "EnemyCover"
        },
        {
          id = 9,
          type = "EnemyCover"
        },
        {
          id = 10,
          type = "EnemyCover"
        }
      }
    },
    {
      name = "townfolk-child-m-001",
      firstgid = 1253,
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
      firstgid = 1265,
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
      firstgid = 1277,
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
      firstgid = 1289,
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
      firstgid = 1313,
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
      firstgid = 1337,
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
      firstgid = 1421,
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
              duration = 33
            },
            {
              tileid = 4,
              duration = 33
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
              duration = 33
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
              duration = 33
            },
            {
              tileid = 16,
              duration = 33
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
              duration = 33
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
              duration = 33
            },
            {
              tileid = 28,
              duration = 33
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
              duration = 33
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
              duration = 33
            },
            {
              tileid = 40,
              duration = 33
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
              duration = 33
            }
          }
        }
      }
    },
    {
      name = "armorbody",
      firstgid = 1469,
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
      firstgid = 1472,
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
      firstgid = 1475,
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
      firstgid = 1478,
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
      firstgid = 1481,
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
      firstgid = 1484,
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
            id = 5,
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
                shape = "point",
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
                shape = "point",
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
                shape = "point",
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
                shape = "point",
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
                shape = "point",
                x = 12,
                y = 24,
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
                shape = "point",
                x = 52,
                y = 24,
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
                shape = "point",
                x = 0,
                y = 12,
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
                shape = "point",
                x = 64,
                y = 12,
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
      firstgid = 1512,
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
    },
    {
      name = "Pikeman",
      firstgid = 1528,
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
      name = "PikemanF",
      firstgid = 1552,
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
      name = "kappa",
      firstgid = 1576,
      filename = "img/friend/kappa.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "img/friend/kappa.png",
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
      name = "well_with_grate",
      firstgid = 1588,
      filename = "img/well_with_grate.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "img/well_with_grate.png",
      imagewidth = 128,
      imageheight = 48,
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
      tilecount = 24,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 164,
      name = "dirt",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAGd0eGRHcsNg9GXfxDOwv7vcgoOyHP09MnY1szujrqKl2wSANFz//rr7/PPKxX/vur/XPGPn/GvnzM9M3fZ/Dxm+rTgZb00zKrDwp0njJlaVK/P9OQ7Hb3eU73+zATNsvo87W9Pe/Xr5csecacDK9oVNx949fDVdzp6fRdcvL2rYcLJMOfRw89Td/w8VZvBifPkIb9p5sG9mt6TTr53F2x67TEv9M5j1r6dwZ74z3SWC8cLj+mX9e+OXXzsm2GXp24eVu7dNGDk/T4wcVcv3PpU5yXtOHI6q6kOmwc4vhbnXrQnn7JoF5yaXn52Xi8/8fRxYdOIl55sxtvO4qx2enHc4XCb0WpnO9KVw+1Mj8Z/b+b69OKlX17NerRpbeQBpt1q+u3eGby+vauXVz0BA9tuO6vjwoXJE4y5vuyel/zA1msv3Gq0Kz+ynpwufPNm7XBX85FHPJG37nSqZZqnF1o0w+1ePZrpNNNPJ15+er+72jz9dPROLXi9dHCqw7eLTvxw7vrp1D/flxda8ObtNXOnkVd1Gu2UYQWcSDds93Tc421Oc3G9t1lee7+cL7ld4XoTvnk6sj1yGtXu4ejBCXyzNMOlA7uRHnw7Vqu+2fbbE1+mC98b4tx5aZeM11vS1ddLz261yIcMF3b30kxL7r7canyY8HlJt9w70stLc329sr7ou/SeMPVh0pThmlW75yssnfTNw6Rh3i5c/fPgp6sOn+7O05frx9E7ueleo18HLqx8eqWBt/uv628nDFxecNPOC/12nCL6cdV5o41vJqeb1tX6cJrj464OTnN67bzK3w5cO+XekobeGb+JXI18ttedVjrNeW12lb8dnPVDD743msWvf7VuT7toLL8369Wn9XTMRF6qeYnfzP3phIfNA63t7/d/0tG3B7dvfNbpn37ahyfMBQ/d8xfWvT2w1fVl/e54ajn8qe1uJ1y86rSWu/7Sak93uWg/3nLj0NYvp3G1fpx0YHBOjXp5zfvf7P//wvUOGnDdzYSefebi6SxmOdVy9ZOGvv0iP73dvR35vlqPJ2x6vaucHq3Pzuml3enYI/TlpxPe3t3dd8Ev9ODvTt9Qbmfa3c3a8eQpDK6Imz89dTj13cGDKfoWq6O3cadj3i41ftmO3VNtfh49c5le9617187MO+3LA5zom1Tj7LdrLx3cfMK0Xz9OPtzzoha7O61mtPQWE789eYsDq5dHeLEaavjFqbvLMDTCwtNpT/j6fYPlVtNIp96+I6+0wsKFkdudJziY9sr48ZYbVi/9q3x1aLcrPfnu9Ma7GQ6doreFbe4O046+TbjuZbjejKfOs7rvkn45jAynv9h05Op22gMrVietdMppy7T0aYTX68165rBqsXW88O0op4UHs3cYoV/dXN498evB68Ftbgec2TmHFfjNVysfYcLFw7HD3Q51nszqLWbn+Uk3v+nmRb/ZqdkMVt1cFvqrk1czewqYOHS691a5fju75zdNWPy09ePj1E8bNi1Y96J7Oa6Mry/ylFb9ZvHqw6lpmLmnd3rcXermccr01Lvr1MxPuHKazfOln25Y93yoYcOpN8yFOX44Ga6emqb79uDOMIdPt3p30dIX7VT3bVZjMe1qXk5r+WaiXTIPennBWxz95mmFbXe79Bezu2DbGz9sOvXd1fW7L552e/Ms45ktV42rL9qjXs1qGYZevHbFrZ+G/sk3y4dZ79AXNLdXTav5+jBPMz09kZb58s1g89c7ZL3m8XtDOuHcRbhqd4EX5pz1Brhm+e+el7DlU1df5DOcd6hlmulvr/5y0ln8eoI1iyOby1uvjnc246dvLPe94uPpLU4vD83hl9tcf3e3V2859HHSW87OYLrLNNKU9Yp2hOsd4fLYTrg8qMO3c+dxYfKQjgwrC1iYJ2y8MO55pCPcw8l50S/syatd4dXNlqtuT7ldq5/vNMKuvtocFresX+jFWf16u0evd8ntDqPXDrnQx6Uv58m8PWWz6nI67u2tt9r03cW+t334p7577zZXC3X4doZLo93pp8WbmazXURe00rUHVk4zD8u/xj9OvMW2K61m+Hr0zgPTXlnoiXzKYdK+Wh/Oztvbt+qd3dPDOU/6Mlw+ZPg8nZrX6MeBi5OGvHUaemniuMc/vervG+PVg1eHa361fpzdpYYvYJdvzqN8Hr3mdvWN1DS6pwerPg+8MN86fnq973xPevkM1z1ddzPBh776PO0L4x5Xzx2v/vkuWAEr2tm+5u7ptjMsXrN2NWtf9/L6gel+lT9O+/WbVe+O9MP8pP9K6fQO3LNnpkej2VV+OHhwMN4LF1Yv3Xrtu0YfTj7Lu1tNp+/pXv1B5LrEz5e9sPqb0zOn11m+WsDKsOHD0dxeus3Nts6XnnAv+BDt0e/ES0/uG5jRqtc73c/TDhy4cl5wRPvyc7U+HHj8Irycjzy50zE7T/oyfNEb9EV38zsd87znKV4a6yPsRftxaBbNyvrVtNztUOc3jBymveFpwOPq9Za864ndRaM7vDv87k0Hrrkcpl68dujHgc2HfHKu1q+T9voNL+un5/50zj2w8flq3juedPo++cET7vR6Y/pX6/aEhbezvH11vm5Ffs7j5sU9P3r0073KX6dZ30/GO/nuactpxd9devmJt/ppl9sp0xV50KtfDw/m9NMdbs/2acXPs5463HK3DoNf5MNs9Wg9HbM84Kvbfb71OzrtLqfl3tvUTydc2M29L033PfmPA6c+efHzGN699+ejb4ujF5emCFeGpydgFwdzNw+XRvd8XbRfByYP4eS49NX24j8dM1jcOPXa29386bS7b5GPNHCbyU8nH+2kI5avbt+TTni7BHy1bJ439z19t7zAFs2Wf/pzD0ejt5ycMOsjrBxXvZhTB46WvBy99PTPQ6dvk8bu1YP56sCcWu5p9d2/0oGPk5+05d7zlU5cuTfkIX35q5Ofcm/KS/nUqd9/IttPp55az12knd929pbm+mpcOXzzNPUF/HlOjTyVzel8deDsyAu+Xjp5u1qfHvy0cNPpnel/KnIN4U9u30DO13d04uVNrqajPk//Qe92L9q9We3dy0ub/vbzr6fOizuOrCe6X+WH05t2Z/9XOvhfnd6HK/LWXhp6X5385FvOG63qr3Tw4OnlZbXT+o6OnWn1TfORv1PH3L7e0e606NSDUaetLvLZPF13s+bp1ZfbDaOW0+kehq5wp9U9bvdrdHvSLufnFvxJs2/Q3t7xCeV2RCetsje8Pb5HHngSf6rDB36Z9ttjN15eaH3mx0yEl71n++c9bN/tvOvjxMtPfRlHv7BP/+nkhyZu9yf8Ux/fHnvzKL89PNDhI53P/D/p9w7c9PTenrgyP/z9ybve6sDHsc937U35CNM36z93L/qOsnn9ODK95mW91b+utyfNvMq4bw8fdudPTevtidebZJpvz/qh4Z1/4gcnbt9Kfnvo9N/gp/mkwz9O30Hdm3oPvebpxYvr3r54zfZbm6UVBy7MVd6e5jiFfW8Pnd7ABy29tyfPtGik9VYnLzzQ6Ju91YmbXv7e6rRfppXukw7ffdPwOKJ+97ThfLO8mlfDCFy5/3rx6dRb7EW5PctJ3863B4ffNHhwf3vyTi9NvbeHjw0a7m/P/ldqOvLbYzeu6H/97Pvk3TfIg4wjmtdLe7G7M516NGCFXnc4Wn17M/XTwYuj7n1P+Kd+/u3Lj97bw0t8b6Ph/vb0rr5num914vWd8/RWp+/a/0RH/XS82W4YEV9fvfc8hmseJg3cdO0v4NKVeyNeHjabu7c3bj28UydNmPgwcXkwyytMuHKzOPC9sR5MXHVva5dZGPyOPkyzNPIFm7+w8nlgmqenl45edzWs2Xma8RO+2l244+b5Kn879EWYcn05ffmzYx6vuvfo98a796yueTr47umoeUz/Kh/PalTj0irqP4pcg/bZbW9e9lvpf3XsOt/SPS35OweODzlfsrv4jp8L9us754NmejRofff0TfOBL9y9/bun/0Te97zVwe0t6v1e6u8eWO/gR01TpHmV3zr5Sc89XXrfPXhxaQne+tZX+a3Te+KnK7/xs3x1OtV3Zv4HPYx3mQ=="
    },
    {
      type = "tilelayer",
      id = 165,
      name = "dirtdeco",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAGlkcuSZMURBfll7TH22oPWwFroK2TsxDdxvatd4x1kZt0q0uzOiTivzOr57rv9+eOS/reXv2j1dZ5xOnuml31y9c/ZvmY6Tz+7mZW24up3FvE/u89OMnib7Vyf891u/XeR3nZ3PnXMHN7+hvZ0np32iFNnR/Nvxt572OdRF6fe/fS2+ua8y925E8/8vc3N7mrzHbt9dvxdH/nZOffV79rd+85vssvsvF8d1FOOeZXRKzYD51d+zqtePPKz2x3EwzfvcVcXzV6Rj2OWRQ+zeWbPzHYn22PeTr31OaM526Gf3bmeFYfOp0aWU84OPHzu+OSYPej1yE/c3Ul2amTLdbZ3cu6rt6jN3lWXXnHlkQN7H7N787tZr33dm9ndU8+c3elktpu5O9095so5T83dbn3gisPPpybaQ47TvfND/fYvWj/7vjm+3lee+dSN3r7OaD2+QU4vOO9gX/Fkd96dBt9jXkTzLfWtZt9Uf+d2OquL8M7c4Qw6w+NrR3c75Ipk28PuwddjbnLsaH2TWRHPvKcauqc9M4PHu5zNTazPnnLm1UR7fryGn67vX58EOt/p3TND9Ifr+/36vmf5PHS0x3d5x8+X/t/ra+bf1/6P6/vP9XnsmG9HRyPz2/U1c61fjh3iF/Fa4Ff9+OBXufLO/G3+eX3+Pa/xeOad3sPf85fr69/GotXfX8286P/LrxqCP1/z/D/jPas3nf7GU2u+M1f7LuZ50PQ7s/Ox+13jx2H3zLm7nSIZe82DzbivMnB47RDNgOb0tVtNVHO3p3s5eXJm0T3lOquLzc8ZTzkzIm+Yuhzoh0fe7A71Tj+8p7OcaH562P3w0v/K0Q/6Nmd61HedfU/z0/9Kj51is3DdvQfez3eg6VXb5e1ZIRmOXcz2wZVH48CZcy8y9+hvRl1O9E4z+Jg54mN7/CtnHuSTx7Wa5UR8HPZ2OH+In/+0n5kj5/5g//qvvt4rp3t24PVdzjNP1pxoH6j/Th6/HaBZ+Dmz6+0s18zsQjsd+ryv6HzKnrS+7eQ7ae3wneVO2WpkzIn0OYPuct4nwqtd4/9nedEesMesvqnBm/FOPfLs5uXc9RbxoHNOaNfD+VfvzOu301xRD5wzfueiPXJk4PSXZ1Yzpx9E9yuvt9hevBz08vrhnPH1eF9z6LuMvol2+obTfXonmoU3zz394Kvh5eBp/oP8/EfNXDX7msXPER/bo78d6NNTL3P9qzvqOfWptY8sfHvVi+p2mAM58Bx8ej+IG/94jx0zIj9RH7ya96P5jvY7mwXJztz0uXuPaI8d7HpFtOpm9KrL6zUvL+qv3hmdI6Kpix+G8Oxq9esr6vMd1bxTbuXFA19vZ7LNsXPKMbt/iJ+7PdV2szky5kQ074BrB9rq6LHDHS+zvDvc9KB51MiZlcMD564O34NerbM+PPbIgWZXGTlwZuHU6eF4x/Q+1Me/K23XM3nv8O52wXXHOzl18+A8K232kNFHp599+r1vd4e8fndxle8d+MzWK6dun4g+e/wNesTp7T147GFGcy864/HAtUsP6LfSe0d1e0G7mPVMDl4NHwcPnN569OrBz6n/wXzLuxen37tEve4ivLMd7Hy+DY8as35mT71ydqCt8vbsdHrsxWsfvEd9t8uDvsEe73efXc06T48d9oPlzBXRvVO+GbV5l17Q38LcLPwph98z72munfonrvzkZi+5elc73DxkZm6+a+50lOuM1j409fL4OKv7H8rj35mxq57O+PXMrL4dr26+aEZOr7z7CvE0t5rv9NA9fe3q3dNXjXmX04e+8pTrbE48aXhW7zMj1lfOOybSia/d7uVmrnvvcTYr4u/c/JzpmD145MRVTk4P6KzGO+R8kzseOeZVXq8+Pe7kOOxo8u5onsnZrS7a4V5E85M/+acHr+903r3D7NTdxTv30+V9+sk7o9vnXA2OYwbNrzxzz/SrrbrhfIPdxVOXPvtFM+x2q5HhTB5up8nj8azyauDubWr1dl71yoGrtzTv3PtXGbrsNbND8vrb1Tt22fJ3s/WR7zur9U3OvY+5/qnZWw8cu5w4s+7Vne3Q8wqu3kSv3eKpk45+zXQ+daDpBfl8G5pnx6uD5pnpYPfMXX6HzeKZ+y43377aT11qou8G/XZ3w5PrnfaYsU+vvNisXHGne0/7m1vNePWbX+HuTjr1n/pX2orzHjt9m1559xXasdLgTh1o5L13zugzr/eSvhx4jh2P7du/vUvWflEeLGe2+mpupvrk2Tkis+9n3p3Zg68du9yOb5/zq319N/Ored/WrJ12uesVd7w62N+F3wy8Mz5PuWbR0XyT/mdoZubcxWc96Hj7vmZ2/MpTr+/Td+c99dgl2nMHzax+l9qqpxpzP/x9n3k88qKa+6lXzw7tmth70Xzr9O123+S9+uTd7+DM0Gnv1O704WnH3cz0cbf3i9PjXq9vV3MX4X1fOf12gfrQfIO8/qJZOTPszt45vauMXLF5eHvruTOvcnbfyevp34h597v07/Cdu591rX7jLvOM7+985p16f9vqTVPXI9rnG/SL6uLMyYvVmbvruYPc/262/bNj7vXuZjPg7u+yy5Y3277qd2fz9PmdsnjMTJ+/CdQj+l5xZruv7mjnSm++s/eL1e7MzTmLd/J6eLPvJv9Oh10T3+niLRzf9dhe/5e77SLtb9w1Tb1v70ze3X7QWc172E86PrP6ZoddoH16yDjXd3cma+fdTH2+vdy7c7s6v9pHdn7vdJDxHe/8jXb/L76tuvd4J7u6iOapLodv5VUH67Gjd9d7ZyZr/tndz/r6tmfeqfe3+A5xek+7v0U8eU+ad9/9TfWt7kZf8bxBfiKa72D26GNXF9Gc9U9UF6f+yt77+q67HbzBd0y826Gvb4GzT/0u+qZ3fo93+BbfIKpPVJ93yuNn7meHnplllxPJ4HcX4VfHbrVmy6186PLcY9bZfN+gH02+fvVy+trXu9D96pm5as4gXfaVVwPp8m07ftdhfuZmp3rvgevxN3mXKK937vInJPNOjk5zvl3sfXrKreaZ9V2TX2Xl9JqVfwftIkuf+93f453m3MVXeuplnrudd5CsbxLJdb7Ts8r0XXc7Zqbv6Pysr95T590e+k6dz3rUeYuf3KvIO+govtNhxi72/kZ18U8CyAR7"
    },
    {
      type = "tilelayer",
      id = 166,
      name = "grass",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHt28uSHUcRBmBhMDvChHbcvBsbe4fA2sluzU6yYSfZ8CDAUxDseQA9AC9Ifkfnn0jVVPc53VIEClBFpKq7Ln/l5c+snlHMswcPHrwseVyyt31SG74t+arkWcmrkp+X7G1/qA2PSr4rCc7v94LUevrA+b6ELi9Kjujzu9oHh110OmoXffiWTXTiq5+V7G1wnpfAYhPdjsTr4Xmv/bDIUf/Qg39gsO+IXfSBQR++YWP0uannL0o+K/llyZclxn5TYowY02KXOPEz+UWJfb8qoaM4/lCCV+LrLGfS/dcl1n5akniH1+wMn35Szx+XfF3yTcmTkqdn+Wn11tlPPDvDHmvsy9rbel5rMPtae35csrVnDWsch/2hbXsgXNtedXkWr3EQX8Pjzze2/bbmnD2uwavwGo/x8nHJWlMrZvm41Dhe4ZJ5mFs5K6dwWG6MOt3UmLxi4yUcuSaH5F5yux5PzRybzP+oRE6ttaUm6M7+fjfwW/L2EkYtPTXnjvqkhsjdLf++Rnj9L1+P+rjL+C215vXK7X+D0+Ox1JbEao8+9O/+cXJsm8XSfG9iy5/iOp6rfuCjmI1zNfRGi4/5YbaWn+B0m98AOL/En+rojB/BGbk1YvGxuMjJkc/Wmr9GH+v4JvmdO6iGTvdT8mJmszVpfCm+dBrzVbzkBG5d8k8tOd1DsB619eoOXdxB8uLa+0PcnJs7Ufwi1+hSy08tnHY++wibyCXf1JK7Jr7s4m+9u5eoZZ0P6sAXZ/FtwP4e56Xe7fmoxP61xvd/Lflbyb9L/l5yiVu15F6j9z9K/nWWf1Y/5mUN3TU8om/X2eRSQu81u2vq1LIvdvPxtTE/Q5x4xKfOelWCA/Tqfq7Xiw23xUMcXpbI3aNNPMKbI3HIueLBJjyKXZm7pl9qUa+NcHB6r058Qxd5Ic9wWn5dU5tr2V1b6gkO/0YXON735GktP90PdCF8rRezvfxJ7aBPvoH36sLH6hY92EIX/V7/4I3aShe972h5RPbYtdT6j8777H3fmpp39Js1NVPNwEf5sZfP+f7CPb4OB92zasc1LRjiZL+cSOz36IR/eBdb4HmOXo/r+Zrm7oo99sKMXTCvxcHB2BI8+8keu5Zan/v9RT2rO/wDm257ckz98Q0Hw34Sf11rV205Nf7u+rCJbVv33Gnj8A8c9hD7U4eO4NAh8eJzeHvtWmpP/B196LYXp7Y8WEryzQxrz7dYLX+jiZ1YvQ1GANW0PXUw+/7feveR+uhbRp3V513tzXjqsP7zkrG5q+VK+ISbclA88dWc3pje+Cyv4XR+W4/z7ms8M4er8jp5NMN5WPPOIPbiOx3Uf/kYrhq35quSWT4uNY5L4ROOumt9M3r2Lel5KbEm7/X4oX3wwP+cB9QG+Z+6kZox1gXfPKkjevJlSb7JbqvIy1u5uNTz07MY7/fQbF6eqhP2/akEjm+a7+r5j2fJeA2fmnowzsPJeNaf6s8GDn1mOBmHQ//gdn26XWv6ZvwvhUO/vHecXu9m82qc838oDN/06tNsXceJ/uM5T2qvupY280+vmzOcPu8+wR849PvzWdjb/QNnNh/e4Qlc+rExvz9Ina6hU1vq36cl5s15vi3hn/CHv+DiMp7mDuz3XOatwXVr8Dl+7fwZ+dz9nHM7383Hr3Dok/ceD+Nps3k48T9/Wh/9Os7o55HP9oU/8ecMp8d1pg8c8eHztOi3po9zR336OeLD70dxxFHs8IcfZnqP8Rr1sS9xFC/6zfS5FC848WtwvI+87ziJS88b58dv4SG/h+/Jjf57rqXmxcWcPnGOHcnH+IvP8J7/x7zoc57NR0/YzuXnMS+6Xewe58VhKfm4JC36df70eM3i2fmee2qGM+ozi3v8gT/Wz867pE/2pf5YHx50uzrvE98+Hxx6dv6Mene7Zjjhc3DoM/NP9+Ns3r7ghz/hwcjXWnpqM747h1/lAV7m+xoPCE7pb0vSlnroNT7zxmG8b63n0k0p593dkvtFjTMunyKpfb6hjFn7dfnomxK+n+VYYjvmVmrGk9oL43nJt2ecxHDk2izm4eCzM0ZwjK9xejZOT/gznJk+WT9yPbkUnJel1/clazV6bTwcfFF7YTwt3fALF2f6bOWMWoyPeCjOqZEz7ieO4x1An/AED3rc4cN2Bj31csM4nb0Ta4zjyRj3XiNq+qpG//g5cefPm5Lwk6542r/9jYXTuctHnPBn5K1xPBnH4//gJO7BGXmyNk5//knc4z9x3+L/DH+pPYlLz/cZf8K3GU5+ZoKRuEfPcX34M45bL16zuG/l44jDb/wTPyfu9J/xeWt8hgN/KQmP+S95h88ZTx8+R5/EPfmCZ/E93vk2wc/UWn3Px8QdPkncR77Rc8ZD49GT7vCdG56v+XMcF0dxj56Je3g+rmfvjJ/hw7VxX+MVfLyNn3vcZ3x27mwczizuxtd4OBunJ3ujT+LO/zMehv9jXbV+zPfONzHEAz25LRFfa8JB43hiPHW2Ht+rhoME13FRy3eEsczLFZzLN75cyVjqT7jIdxp/9/wYf7a1ho/DQfvxp3Moazqvx++PrEnMgxEcnNNGvnQcPNM6d0acrBn5O8NxVtcHDzsXnXUNjjWpPfY/rfd+9wSn87d/U0fnpe2DMWtLDYa/OQeHcRe/Zy3cSa2crZmN4U/4NfInOs/2jWNb/EncUy+dQ8Lpzvmx9iT2vn3VCE0s1vgcnbf4E3224p41I07nT86i81peRGdrZvwR18R0Ky+iz5NajxORerzXtnBSE8ZNucc6f+Cs8Tn6pP6IJQy1I/Una+iMz2wleEyMqcsaP6/Vn/jwtPDCP1v8iT54SF+20jl81Kf2buEk7vyzl4edP7Friz+J18if1Ad9+LOFE9vDn8Shtt9r1+CMm1JD+JNv3U9bOGxP7eH38C/8CYdy/6/x0PzIHXtTN3L3iBnb2R3fySHv5LZkzPWOEZzErJavNrzod84MRzxyv6cW8gE/JgfVpxEn/NH7uZn9Wzx0jvlee+xlc+yXi7F/rY7x31JiX8R+sU78PMufrbpKX3HPvtg7xp3eWzj0wa9eM2ZxFy/2r9llfubnHrPcPc5b42H0GeM1w1kKh+8I3xM+9Z6fZ0acMe7J59qy2ug7xt0ZiV/iPruXk8/iuZRYa6/cIeFs1sl3+bNWD/k559izlu/sgrMWr/D9UtwTjzUc+lyT78mfNRznXIMTnq3h5JxLcU+9W+Nh/DfGvfNM/PFsKfEsnplPnG9rTL3Me2JfQ++kiX84pBaEE7l/+yE39RK+WJu99vS6kWe/b+WnsYnTyJvs6Xma5/y+dYYzxil7Zn3qx4hz6Z4YseDM7DqCgydj26qDvf7k2f2zhjPyL3s63/DOO47h29jwD+/MW+c59QcHwhl97qA1/liDO1kXHiX+vV/jDz//t/gzi7v6/i54uBX3kYPej/Aw8e/9Gn9m91b2dQ7gRSQ/R9TQXcOf8Cb70oczvQZ5zu9V7kDqYfx5IVzSd97kOf/fA+OmJJhvwx8xCgeO5Hv28m1y9gh/spcO7j7t0v03cqjXVTq4G7UtnMS/9/n+tbfj8NVa/cEXHOi88J760/2z1Lh6k/X2ZL/Yk9xFuNP50/XBAXPhTWrPFn/ik64Pu/bWn8RILnQb99aNxL1g7hrd9uKEh3cg9XAEZ6bPVh3rvMnzWv3B7TX+9DsLF8Kj+Lbbxee4Y10k9xcOzDixdn9Znz0451mfmtN79SdxryV37cj3zyxeR+rPLF5H4j6z64g+ya8759TDEf7M/MOuNf6EM+GB915/uj5LvYRf2efdc+pOuKCW4NOMP+4vc9ZaFzHWeZPnd/n9M4vXVp0f74qj3xt7cI7oM+PzEf7McLb4k/so/El9mdWfRXxLrEkfvtXQe9XyjfQ2St3UZn/3tZYHl7CTJ5/WQn+L8KxkVicu4eBB/s4CDtmLw5b8/TQsujzaiRMMf+vh7zLsh/WqZO3v0GvqXlNf/S0H6TjPz2MzDtfUvcYvL0vYEix/12GMjtf6SL7yqX1sCibdro2ZWIszf7DD+dEFtvdZba/hNxrf8Cdhk316egXnmr/3ZZPz6RJ92AWL5IxLPuJjZ8fH2Q874/S6FH84sYU+2c/HfBafw9zyU2IV/eMnesGnC7xrcKyxR0/iH8/dzi0fqa3scaaz+/mxUU+2cMSdL+IHehH2waSPnm6PS9Ya/1iT/fbAJcbomvlLfmYTsYce9sPxTtiEF1v5Sh974h/rvadnL30u4TysNTnXevrY8x8IZ9PZ"
    },
    {
      type = "tilelayer",
      id = 167,
      name = "grassdeco",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHtm0FuAyEMRZOjt0kP0O7a0wYvLFHLoBm+pYzQQxpNYeyP/QykG243vX3cdY1ngYZF8SjS+Ww6VTHpdP4rKLzNV/HvIzFGajONiprNavXV5vDH4/W+vUfNYjti5/5nbN2H954EZutxl4x3y7HqXLxifXfO7R28Z79972K9236MdZ0xj7b01wgY4yutoz6Wivor+dm+9niq9rjyv6/7VnBZWy25lxpP5u+55jOORzOtsTVfFAKrNYpzVum47uoaMD91n/t5YbGoecU8em3P9czb4omaZ/x3t1Vrvzsf8rsuAfWsiZlxTkQi9CEAAQhAAAIQgAAEIAABCEAAAhCAAAQgAAEIQAACEIAABCAAAQhAAAIQgAAEIAABCEAAAhCAAAQgAAEIQAACELgiAfUORNWdDLuX9N2en/ao7bdp/Ak6lXekVL49i5W7cVXzZ3W2eBRW5p/pnol5tmaO6LhNXDPOeqbf1yb723IzPjZH1M/sj45lzKKvx2/jWQ799+g76sccMt2R72w86s5s/ZvXzfov/644DQ=="
    },
    {
      type = "tilelayer",
      id = 168,
      name = "crops",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHtmImKHDEMRAfy/1+Xk5zkvvMNccE+EEKy3D0mm2ElEGrLpZJcPbPbPZdLWyvQCrQCrUAr0Aq0Aq1AK9AKtAKtQCvQCrQCrUAr0Aq0Aq1AK9AKtAKtwH0o8PXR5SLP7PPYk1cmjj8T3BGe2Ty/7mGe2bk0j7yyFX1WeWb6SOcVnmreW93/Ns4vz+z32JNX9r7g+TL25ZWJR57ZEZ7ZuVZ5xLFrnh081f361+fK7tOt5z+M+y7P7OPYk1cmju8T3E6eH5M+zKlZZvOIY8e5xLMyT6XzKo/OVN2vlXnQqeNeBX6O++Mtu2dZ/tPgkHvLPkNZPuNRX7m3ozzCH+XxPbXOdMjmiTiUy/DZnBnPmfzK35KKVxw7vrs7eaJzZf+bs2eI7EzZM1CWz/TL8Fl+J48+W96yvspLI2/Z93EXj+9XrbPvY1Xn9yNtPOaadfZ5y3TLemX4LC+e6D5m+DP5jD/Kz3SI8LN5MnyUn/XNtO78XgVm7/X8tjL7LUJ7cChGBg/xGoztF/Ew645e2XnoSw9F9X2IhgZnz452O3gsVzQPz7N6xo6ej1XDHMQZD3wRZlYPnjkUo+d+cFXUHJarwmf7nIeY4Xbmmf0spz33NRpaHs101tCOGPHoeZZn7Oj5WDUrulie7Bk56u9zmgG/hsfOk53L947WzEKMMOToeaYf/JbjzPnhUbRczLgabb144FqtB2fnIRdF3huy996oJspRT4wwKznV25lmNRbrcZZDOG+8nzAv6whnufw+9TYKf9RsD2Y5w8McZ2qPzrwTr/cA3gX0bjEz7YP1ON5LVvbBKHqDh1jtM9MMt9Kn4hFHxKNcNquf6aGv3w2tXjivNPF4ceDsaV2ZsL6/XXNd8YCDz6+ZqeIBBw9ry6dcZcLjcFQ1t7r/dpz1ufPqLB4PhyIuTGXUeT6tj/JkXDa/Mo/ta2vt9QqPP1NVc6v7z8a98l6d5c2owX0ta+1XJqxwtsbm2DvKAx9xlQccdVEUpjLqLF9Vc6v7T4ce8td3ruvKqCGqFg5yipVRk9WzX/FQb3tTS06YyqiBz0Zd46s8R3pXnP/r/pOhC/7q7rqaFRxR9Vwrcl3x0DeLcJ3lYQ74V3l8HWviGZ6q5lb3X477/di41pUJg9taXVu+ioday2Wv2V/lAW/nsHxneCwnvKs8aKHY1gq0Aq1AK9AKPGQF/gLQuHYd"
    },
    {
      type = "tilelayer",
      id = 169,
      name = "houses",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHtl7FKQzEUhmNFRJzUQcRJfQp1aou6uLQFd+uTiE8gPo2jOjg4qYODk/oi/gdyIATbm1ykWvgO/OQmPflv8+Wk9zYEYp4JHC+FcNAgy5kU+3Gu5ZhOY+v9fMzudSjlcZTNvYg+Z2pN5uNj7nmisTzMx/KGmdwnH7fcn3wGcf5IbVPU5DZ58TkEfpNAbzGEVH31m2JBOZ1MQ/VTjQp81pSznmmsfqqLAp8d5exmalrDrD+/74RgepBqoqt19RK9aL7ptdJnII90fz413/RV6XMun3R/atYyi9yUVUkt23dqqueSWjafpnouqWXzmYd67qgOTItSbdyp5vw8+PnfaOHzLB8/D7uab9pr4fMhHz8PtWsh/28JrGq/V+KeX1Xs/WXMXVZrHtvSVhy7iW3Jyq5j7qZa8xhLfs7b+Pjva8m9/3uOM37U+XqKMta1e+aM3+TxHmWsa/fMfZyx7ZWrzZ79d/58PwhAIISuznkvU1/92hhoTvoObdel74bpvab9/qR5XEOghoC9V/tztqmd9j/U3qvtOXur+jZNu572P9Tr3H3sWTvp2p+/NeslFwIQgAAEIAABCEAAAhCAAAQgAAEIQAACEIAABCAAAQhAAAIQgAAEIAABCEAAAhCAAAQgAAEIQAACEIAABCAAAQhAAAIQgAAEygl8Ay44YYc="
    },
    {
      type = "tilelayer",
      id = 170,
      name = "housedeco",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHt0LEKwkAMBuBbfCgRwUXEwU0X3e2u7w/mx7tBKro5yBdIc01zgX6tiX8QOC3mf/GuN59qLXOrfn9T9Vx57Hmpml5iWfXTzszt+uyh6rWfc3eqc3qJbdWx89l5fWZu7MmXW72ve96rjsiesXP0vtV93UkKAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgMCvBB4/mwnG"
    },
    {
      type = "tilelayer",
      id = 205,
      name = "well",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHt0LkNgEAMRUFHVMSRcCQc/XfEr2E3AWksvdCWPFWGAAECBAgQIECAwD8FxqFqSnNaUuus2d3Sno6OO2d2r3Snp+NO6x/2CBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAgW8KvGqLAys="
    },
    {
      type = "tilelayer",
      id = 171,
      name = "midbosscover_mid",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHt0DkOwDAIBEAK//+LOR+SbajtIkUUDdIKS0DhqVIECBAgQIAAAQIECBAgQIAAAQIECBAgQOC7AseoOpMruZOuLe89WZ333R/7zKL/vLrX+zoBAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAu8IPF/AF1A="
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
      id = 172,
      name = "midbosscover_high",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHt0DsKxDAMBUAXuf/pNgm7+ZwlrxGBLWKXKUbwsLFkY6Y1RYAAAQIECBAgQIAAAQIECBAgQIAAAQIEboF5am1J1uS/Pjkb7W+Z3ZMjOZOqb/a/ZLRf99629izqv09zPYt6Y3Su5q0ECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECLxL4ALItiX/"
    },
    {
      type = "tilelayer",
      id = 206,
      name = "wellfront",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHt0LkNgEAMRUFH1MSRcCQc/ffDr2E3AWksvdCWPFWGAAECBAgQIECAwD8FxqFqSnNaUuus2d3Sno6OO2d2r3Snp+NO6x/2CBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAgW8KvJNfA1s="
    },
    {
      type = "tilelayer",
      id = 173,
      name = "fence",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHt0DEKACAIBdCg+1+qE1QnasiWwNnluXwQRXytKQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBCoFBj9Xv9zRn9F7mTu7VX+4DYBAgQI5AIHXHwHGw=="
    },
    {
      type = "tilelayer",
      id = 174,
      name = "rooftops",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHtllsuBEEUhptEjJXg0SUuz4QFuC3ALeKJhJnhFcMKsB7CAggLcFuA26v/RJ/JSWVKn55uiYy/kj9VPVPn9MxX/6mqJPluGz1J0oA2IRkfQIeBjvCs3+vcNLzZ/Zc8NbCoB9pz8tlP5+2g342ois+Fpc5tAk4HGivzslqeuVm5+D0J/EUCte4kUdUxHoPGoVi76EqSS6gXcypGZxirzjGegWahWLtBjluoH3MGjBYwtlrE8xIUaw/I8Qg9BVpFjNUantd/yPOK+DfoPVDsvXk/F8YevjbvCGJGoSqkaySMPXxtninETEOnkK6RMs7ia/PMIX4e0ljplXEWX5tnGXErJlZylNWUk5d1lp+9rD1+9rD2+NnD+rf9LLXfB12hXq4hbws9LbU/CN0hx32OPKGntf6fkeMlR57Q01r/H8jxmSNP6GkvD84rRkDPoDxe1JrXWOnFh6I8XtSa11jp1YfSe73YqubVh9J7vdiq5ovRbT86rHPdlytgpPKsWVjnen5Z5p41C+tczzC7Xp41C+tczz+7XnnWrH3CjCxCQPzovSPY91hfS/w2dAJl3XdtDhmrrxtp/HFJecr6PVsl/Z6/9r+K8pE7tNwJZR/y3g3t2sf2Ic/d0OaJ7UOeu6HNw3FnEBiCH4chb5vA3MkW83Vf8uaJ7Xsxn+u5G/Yx/8d8rudu2NP/3pXjPBIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARIgARLoDAJfw2zbtg=="
    },
    {
      type = "objectgroup",
      id = 215,
      name = "enemygrouptemplate",
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
          id = 505,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 176,
          y = 4328,
          width = 112,
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
          x = 88,
          y = 1096,
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
          y = 1096,
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
          y = 624,
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
          x = 240,
          y = 624,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 88, y = 0 }
          },
          properties = {}
        },
        {
          id = 440,
          name = "",
          type = "",
          shape = "polyline",
          x = 64,
          y = 880,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -96, y = -8 }
          },
          properties = {}
        },
        {
          id = 441,
          name = "",
          type = "",
          shape = "polyline",
          x = 224,
          y = 880,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 96, y = -8 }
          },
          properties = {}
        },
        {
          id = 471,
          name = "",
          type = "",
          shape = "polyline",
          x = 376,
          y = 232,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -32, y = 0 },
            { x = -120, y = 0 }
          },
          properties = {}
        },
        {
          id = 472,
          name = "",
          type = "",
          shape = "polyline",
          x = -104,
          y = 232,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 40, y = 0 },
            { x = 136, y = 0 }
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
          gid = 1355,
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
          gid = 1343,
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
          gid = 1343,
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
          gid = 1355,
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
          y = -104,
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
          type = "",
          shape = "rectangle",
          x = 152,
          y = 144,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1292,
          visible = true,
          properties = {
            ["initiallayer"] = "ground"
          }
        },
        {
          id = 311,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 144,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1292,
          visible = true,
          properties = {
            ["initiallayer"] = "ground"
          }
        },
        {
          id = 312,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 232,
          y = -120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
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
          type = "",
          shape = "rectangle",
          x = 56,
          y = -120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
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
          type = "",
          shape = "rectangle",
          x = 56,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
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
          type = "",
          shape = "rectangle",
          x = 232,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
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
          y = -88,
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
          type = "",
          shape = "rectangle",
          x = 136,
          y = 144,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1292,
          visible = true,
          properties = {
            ["initiallayer"] = "ground"
          }
        },
        {
          id = 307,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 232,
          y = -120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
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
          type = "",
          shape = "rectangle",
          x = 56,
          y = -120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
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
          type = "",
          shape = "rectangle",
          x = 152,
          y = 144,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1292,
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
          type = "",
          shape = "rectangle",
          x = 232,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
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
          type = "",
          shape = "rectangle",
          x = 56,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
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
          y = -72,
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
          type = "",
          shape = "rectangle",
          x = 56,
          y = -120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
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
          type = "",
          shape = "rectangle",
          x = 232,
          y = -120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
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
          type = "",
          shape = "rectangle",
          x = 56,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
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
          type = "",
          shape = "rectangle",
          x = 232,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
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
          y = -56,
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
          y = -40,
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
          type = "",
          shape = "rectangle",
          x = 232,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
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
          type = "",
          shape = "rectangle",
          x = 56,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
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
          gid = 1472,
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
          gid = 1475,
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
          gid = 1174,
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
          gid = 2147484822,
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
          id = 267,
          name = "boss",
          type = "LordArmored",
          shape = "rectangle",
          x = 144,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1439,
          visible = true,
          properties = {
            ["pathid"] = "boss_path",
            ["rideid"] = 269
          }
        },
        {
          id = 269,
          name = "armor_body",
          type = "LordArmorBodyEnter",
          shape = "rectangle",
          x = 144,
          y = -10,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1469,
          visible = true,
          properties = {}
        },
        {
          id = 482,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = -16,
          width = 336,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "roofobjects",
            ["cleartowin"] = true,
            ["dialogue"] = true,
            ["timelinespeed"] = 16
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 208,
      name = "bosstalk1",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 483,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 328,
          y = 0,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["dialogue"] = true,
            ["timelinespeed"] = 0
          }
        },
        {
          id = 485,
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
            { x = 72, y = -32 },
            { x = 48, y = -8 }
          },
          properties = {}
        },
        {
          id = 486,
          name = "text",
          type = "",
          shape = "text",
          x = 56,
          y = 112,
          width = 176,
          height = 88,
          rotation = 0,
          visible = true,
          text = "Guess I'll be needing a new hunting party...\nBut that bounty on your head will buy a whole army.",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 212,
      name = "Copy of bosstalk1",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 494,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 328,
          y = 8,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["dialogue"] = true,
            ["timelinespeed"] = 0
          }
        },
        {
          id = 495,
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
          id = 496,
          name = "text",
          type = "",
          shape = "text",
          x = 56,
          y = 112,
          width = 176,
          height = 88,
          rotation = 0,
          visible = true,
          text = "Why does some stupid money make you want to hurt us?\nI don't understand it!",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 214,
      name = "Copy of Copy of bosstalk1",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 500,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 328,
          y = 16,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["dialogue"] = true,
            ["timelinespeed"] = 0
          }
        },
        {
          id = 501,
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
          id = 502,
          name = "text",
          type = "",
          shape = "text",
          x = 56,
          y = 112,
          width = 176,
          height = 88,
          rotation = 0,
          visible = true,
          text = "We could have been your friends.\nWe had so much to share with you!",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 211,
      name = "Copy of bosstalk1",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 491,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 328,
          y = 24,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["dialogue"] = true,
            ["timelinespeed"] = 0
          }
        },
        {
          id = 492,
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
            { x = 72, y = -32 },
            { x = 48, y = -8 }
          },
          properties = {}
        },
        {
          id = 493,
          name = "text",
          type = "",
          shape = "text",
          x = 56,
          y = 112,
          width = 176,
          height = 88,
          rotation = 0,
          visible = true,
          text = "Charity from a monster!\n\nGod forbid a man sink so low!",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 210,
      name = "Copy of bosstalk1",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 488,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 328,
          y = 32,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["dialogue"] = true,
            ["timelinespeed"] = 0
          }
        },
        {
          id = 489,
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
            { x = 72, y = -32 },
            { x = 48, y = -8 }
          },
          properties = {}
        },
        {
          id = 490,
          name = "text",
          type = "",
          shape = "text",
          x = 56,
          y = 112,
          width = 176,
          height = 88,
          rotation = 0,
          visible = true,
          text = "It's His will that we fight for what's ours!\nThe only nice thing I need is your corpse for that bounty!",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {}
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
      id = 209,
      name = "bossenter",
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
          id = 484,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = -8,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 16 },
            { x = 0, y = 48 }
          },
          properties = {}
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
          name = "bossmusic",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 48,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["activateobjects"] = false,
            ["musicfile"] = "mus/Big_Armor.vgm"
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
          gid = 1481,
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
          gid = 1481,
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
          gid = 1478,
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
          gid = 1481,
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
          gid = 1478,
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
          gid = 1481,
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
          gid = 1478,
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
          gid = 1481,
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
          gid = 1481,
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
          gid = 1478,
          visible = true,
          properties = {}
        },
        {
          id = 481,
          name = "warning",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 240,
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
        }
      }
    },
    {
      type = "objectgroup",
      id = 188,
      name = "swordsmenbounds",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 469,
          name = "",
          type = "EnemyBounds",
          shape = "polygon",
          x = -8,
          y = 592,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 8 },
            { x = 56, y = 8 },
            { x = 72, y = -64 },
            { x = 72, y = -128 },
            { x = 56, y = -160 },
            { x = 56, y = -200 },
            { x = 88, y = -224 },
            { x = 88, y = -304 },
            { x = 0, y = -304 }
          },
          properties = {}
        },
        {
          id = 470,
          name = "",
          type = "EnemyBounds",
          shape = "polygon",
          x = 296,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 8 },
            { x = -88, y = 8 },
            { x = -88, y = 88 },
            { x = -72, y = 120 },
            { x = -72, y = 168 },
            { x = -88, y = 200 },
            { x = -88, y = 248 },
            { x = -56, y = 264 },
            { x = -56, y = 320 },
            { x = 0, y = 320 }
          },
          properties = {}
        },
        {
          id = 320,
          name = "bounds",
          type = "EnemyBounds",
          shape = "polygon",
          x = 160,
          y = 496,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 160, y = 160 },
            { x = 96, y = 160 },
            { x = 96, y = 240 },
            { x = 80, y = 288 },
            { x = 80, y = 328 },
            { x = 160, y = 336 }
          },
          properties = {}
        },
        {
          id = 439,
          name = "bounds",
          type = "EnemyBounds",
          shape = "polygon",
          x = 160,
          y = 496,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 136, y = 400 },
            { x = 80, y = 416 },
            { x = 80, y = 592 },
            { x = 136, y = 592 }
          },
          properties = {}
        },
        {
          id = 316,
          name = "bounds",
          type = "EnemyBounds",
          shape = "polygon",
          x = 160,
          y = 496,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -168, y = 608 },
            { x = -112, y = 608 },
            { x = -112, y = 416 },
            { x = -168, y = 400 }
          },
          properties = {}
        },
        {
          id = 438,
          name = "bounds",
          type = "EnemyBounds",
          shape = "polygon",
          x = 160,
          y = 496,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -184, y = 352 },
            { x = -112, y = 344 },
            { x = -112, y = 272 },
            { x = -128, y = 208 },
            { x = -128, y = 160 },
            { x = -184, y = 160 }
          },
          properties = {}
        },
        {
          id = 473,
          name = "",
          type = "EnemyBounds",
          shape = "polygon",
          x = 112,
          y = 632,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = -16 },
            { x = 0, y = 24 },
            { x = 16, y = 32 },
            { x = 48, y = 32 },
            { x = 64, y = 24 },
            { x = 64, y = -16 },
            { x = 48, y = -24 },
            { x = 16, y = -24 }
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
            { x = -128, y = 96 },
            { x = -80, y = 96 },
            { x = -32, y = 80 },
            { x = -32, y = 32 },
            { x = 0, y = 32 },
            { x = 0, y = 80 },
            { x = 48, y = 96 },
            { x = 96, y = 96 },
            { x = 152, y = 112 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 187,
      name = "archers4",
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
          id = 456,
          name = "",
          type = "",
          shape = "polyline",
          x = 80,
          y = 520,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -104, y = 0 }
          },
          properties = {}
        },
        {
          id = 457,
          name = "",
          type = "",
          shape = "polyline",
          x = 312,
          y = 520,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -120, y = 0 }
          },
          properties = {}
        },
        {
          id = 458,
          name = "",
          type = "",
          shape = "polyline",
          x = -24,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 112, y = 0 }
          },
          properties = {}
        },
        {
          id = 459,
          name = "",
          type = "",
          shape = "polyline",
          x = 312,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -88, y = 0 },
            { x = -112, y = -24 }
          },
          properties = {}
        },
        {
          id = 460,
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
            { x = 0, y = 0 },
            { x = 88, y = 0 }
          },
          properties = {}
        },
        {
          id = 461,
          name = "",
          type = "",
          shape = "polyline",
          x = 312,
          y = 360,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -112, y = 0 }
          },
          properties = {}
        },
        {
          id = 462,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 520,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 463,
          name = "",
          type = "",
          shape = "rectangle",
          x = 312,
          y = 520,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 464,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 440,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 465,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 440,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 466,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 360,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 467,
          name = "",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 360,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 468,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 336,
          width = 32,
          height = 256,
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
      id = 27,
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
          id = 257,
          name = "phalanx",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 800,
          width = 64,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 416,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 864,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 417,
          name = "",
          type = "",
          shape = "rectangle",
          x = -24,
          y = 864,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 418,
          name = "",
          type = "",
          shape = "rectangle",
          x = -48,
          y = 864,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 419,
          name = "",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 864,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 420,
          name = "",
          type = "",
          shape = "rectangle",
          x = -96,
          y = 864,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 421,
          name = "",
          type = "",
          shape = "rectangle",
          x = 456,
          y = 832,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 422,
          name = "",
          type = "",
          shape = "rectangle",
          x = 432,
          y = 832,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 423,
          name = "",
          type = "",
          shape = "rectangle",
          x = 408,
          y = 832,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 424,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 832,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 425,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 832,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 426,
          name = "",
          type = "",
          shape = "polyline",
          x = -8,
          y = 864,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 144, y = 24 },
            { x = 328, y = 336 }
          },
          properties = {}
        },
        {
          id = 427,
          name = "",
          type = "",
          shape = "polyline",
          x = 288,
          y = 848,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 72, y = -16 },
            { x = -136, y = 24 },
            { x = -320, y = 368 }
          },
          properties = {}
        },
        {
          id = 428,
          name = "",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 848,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 429,
          name = "",
          type = "",
          shape = "rectangle",
          x = -32,
          y = 848,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 430,
          name = "",
          type = "",
          shape = "rectangle",
          x = -56,
          y = 848,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1558,
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
          x = -80,
          y = 848,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 432,
          name = "",
          type = "",
          shape = "rectangle",
          x = -104,
          y = 848,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 433,
          name = "",
          type = "",
          shape = "rectangle",
          x = 464,
          y = 816,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 434,
          name = "",
          type = "",
          shape = "rectangle",
          x = 440,
          y = 816,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 435,
          name = "",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 816,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1558,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 436,
          name = "",
          type = "",
          shape = "rectangle",
          x = 392,
          y = 816,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 437,
          name = "",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 816,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1534,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 207,
      name = "wellprisoner",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 475,
          name = "",
          type = "FriendPrisoner",
          shape = "rectangle",
          x = 136,
          y = 632,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1576,
          visible = true,
          properties = {
            ["rideshield"] = true
          }
        },
        {
          id = 477,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 104,
          y = 648,
          width = 80,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground",
            ["savefriendsbonus"] = 20000
          }
        },
        {
          id = 478,
          name = "destroywell",
          type = "Trigger",
          shape = "rectangle",
          x = -16,
          y = 632,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["explodetilelayers"] = "well\nwellfront"
          }
        },
        {
          id = 479,
          name = "",
          type = "BombTrigger",
          shape = "rectangle",
          x = 120,
          y = 616,
          width = 48,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["defeattriggerid"] = 478
          }
        },
        {
          id = 480,
          name = "",
          type = "FriendPrisoner",
          shape = "rectangle",
          x = 152,
          y = 632,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1576,
          visible = true,
          properties = {
            ["rideshield"] = true
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
          type = "",
          shape = "rectangle",
          x = 224,
          y = 696,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1295,
          visible = true,
          properties = {}
        },
        {
          id = 252,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 776,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1295,
          visible = true,
          properties = {}
        },
        {
          id = 253,
          name = "swordsmen3",
          type = "Trigger",
          shape = "rectangle",
          x = 160,
          y = 688,
          width = 72,
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
          type = "",
          shape = "rectangle",
          x = 80,
          y = 792,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1295,
          visible = true,
          properties = {}
        },
        {
          id = 250,
          name = "swordsmen2",
          type = "Trigger",
          shape = "rectangle",
          x = 56,
          y = 752,
          width = 72,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 255,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 696,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1295,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 30,
      name = "heavy7",
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
          type = "",
          shape = "rectangle",
          x = 120,
          y = 904,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 143,
          name = "swordsmenheavy1",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 656,
          width = 16,
          height = 264,
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
          y = 904,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 8, y = 48 },
            { x = 8, y = -56 },
            { x = 24, y = -88 },
            { x = -8, y = -152 },
            { x = 8, y = -184 },
            { x = 8, y = 112 }
          },
          properties = {}
        },
        {
          id = 254,
          name = "heavy",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 904,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 228,
      name = "heavy8",
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
          id = 558,
          name = "heavy",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 608,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 559,
          name = "swordsmenheavy1",
          type = "Trigger",
          shape = "rectangle",
          x = 136,
          y = 288,
          width = 16,
          height = 264,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 561,
          name = "heavy",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 608,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 562,
          name = "",
          type = "",
          shape = "polyline",
          x = 120,
          y = 536,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -120, y = 80 },
            { x = -56, y = 80 },
            { x = -8, y = -8 },
            { x = -16, y = -136 },
            { x = -8, y = -240 },
            { x = -40, y = -280 },
            { x = -168, y = -288 }
          },
          properties = {}
        },
        {
          id = 563,
          name = "",
          type = "",
          shape = "polyline",
          x = 168,
          y = 536,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 120, y = 80 },
            { x = 56, y = 80 },
            { x = 8, y = -8 },
            { x = 16, y = -136 },
            { x = 8, y = -240 },
            { x = 40, y = -280 },
            { x = 160, y = -280 }
          },
          properties = {}
        }
      }
    },
    {
      type = "tilelayer",
      id = 175,
      name = "storehouse2ndfloor",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHt0DEOgDAIAECi//+EP1DTwe/4EmFjaxe3IyGlQBguQhAgQIAAAQIECBAgQIAAAQIECBAgQGBd4N0ijj2i3p51oforcebe1fLJurL37vzPou9XPVr22eyOOQECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQ+FPgAyjwE/o="
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
          y = 1168,
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
          y = 1176,
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
          y = 1168,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1202,
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
          y = 1168,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1280,
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
          y = 1152,
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
          y = 1168,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1256,
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
          y = 1168,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1268,
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
          y = 1184,
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
      id = 176,
      name = "storehouse2nddestroyed",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHt0EEKABAQBVDlpm4kN3BSlNnYsLJ6Sr+ZftRLySFAgAABAgQIECBAgAABAgQIECBAgMBfgZrv/7WHTpmdvnsr48br5xx7SYAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIEfgoMEIoFbg=="
    },
    {
      type = "tilelayer",
      id = 177,
      name = "storehouse2ndfront",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHt0MENgCAMBdBGN3UfdRJ0NycQErgjejF5TX56oQVehCJAgAABAgQIECBAgAABAgQIECBA4C8C1xRR8qbajtZHdpXZdY7Yavbcn76r3Z/y7FFz1j29u5Z8vicjfzRDgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgS+ErgBueoUaw=="
    },
    {
      type = "tilelayer",
      id = 178,
      name = "storehouseroof",
      x = 0,
      y = 0,
      width = 18,
      height = 270,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHt0LEJgDAQQNHgeuICig6g6P6lSXFgYRQVu3cQ0hyf5KVkCBAgQIAAAQIECBAgQIAAAQIECBCoCbRNSl0+X6Y0hnzGD61oLLmxvmwdG/Gfp62zxtNWn99fPMpfahPvmi525ptGtEtru+jEnpsAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECBAgQIAAAQIECPwlsAMECQyd"
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
          y = 1176,
          width = 256,
          height = 256,
          rotation = 0,
          gid = 1512,
          visible = true,
          properties = {}
        },
        {
          id = 168,
          name = "walldebris",
          type = "Debris",
          shape = "rectangle",
          x = 88,
          y = 1184,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 866,
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
          y = 1168,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 866,
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
          y = 1168,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 866,
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
          y = 1184,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 919,
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
          y = 1168,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 866,
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
          y = 1184,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 921,
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
          y = 1152,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 754,
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
          y = 1184,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 866,
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
          y = 1152,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 754,
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
          y = 1136,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 587,
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
          y = 1152,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 587,
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
          y = 1168,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 587,
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
          y = 1168,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 619,
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
          y = 1152,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 619,
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
          y = 1168,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 903,
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
          y = 1168,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 905,
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
          y = 1184,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 619,
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
          y = 1136,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 589,
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
          y = 1152,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 621,
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
          y = 1168,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 621,
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
          y = 1152,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 589,
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
          y = 1184,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 621,
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
          y = 1168,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 589,
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
          y = 1136,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 604,
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
          y = 1152,
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
      type = "objectgroup",
      id = 40,
      name = "storehouse_doors",
      visible = true,
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
          y = 1248,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1175,
          visible = true,
          properties = {}
        },
        {
          id = 129,
          name = "door",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 1248,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 2147484823,
          visible = true,
          properties = {}
        },
        {
          id = 130,
          name = "storehouse_doors",
          type = "Trigger",
          shape = "rectangle",
          x = 72,
          y = 1232,
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
          y = 1248,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 2147484823,
          visible = true,
          properties = {}
        },
        {
          id = 133,
          name = "door",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 1248,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1175,
          visible = true,
          properties = {}
        },
        {
          id = 134,
          name = "door",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 1248,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1175,
          visible = true,
          properties = {}
        },
        {
          id = 135,
          name = "door",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 1248,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 2147484823,
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
          y = 1136,
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
          y = 1200,
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
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 107,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 116,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 247,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 248,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 249,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 449,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 450,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 451,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 452,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 453,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        },
        {
          id = 454,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathid"] = "midboss"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 126,
      name = "midbossgroundpath",
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
          id = 444,
          name = "",
          type = "",
          shape = "polygon",
          x = 48,
          y = 1336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 8, y = 0 },
            { x = 40, y = -64 },
            { x = 96, y = -64 },
            { x = 152, y = -64 },
            { x = 184, y = 0 },
            { x = 96, y = 0 }
          },
          properties = {}
        },
        {
          id = 446,
          name = "",
          type = "",
          shape = "polyline",
          x = 88,
          y = 1272,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -72, y = 0 }
          },
          properties = {}
        },
        {
          id = 447,
          name = "",
          type = "",
          shape = "polyline",
          x = 200,
          y = 1272,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 72, y = 0 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 125,
      name = "midbossdescentpath",
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
          id = 442,
          name = "",
          type = "",
          shape = "polyline",
          x = 136,
          y = 1168,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 80 },
            { x = 8, y = 0 },
            { x = -40, y = 80 }
          },
          properties = {}
        },
        {
          id = 443,
          name = "",
          type = "",
          shape = "polyline",
          x = 136,
          y = 1168,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 56, y = 80 }
          },
          properties = {}
        },
        {
          id = 448,
          name = "descentcover",
          type = "EnemyCover",
          shape = "rectangle",
          x = 80,
          y = 1200,
          width = 128,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
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
          id = 202,
          name = "midboss",
          type = "MilitiaCaptainNormalAttack1",
          shape = "rectangle",
          x = 96,
          y = 1184,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1217,
          visible = true,
          properties = {
            ["backuptriggerid"] = 246,
            ["initiallayer"] = "storehouse2ndobjects"
          }
        },
        {
          id = 98,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1272,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathfinder"] = "random"
          }
        },
        {
          id = 113,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 1272,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathfinder"] = "random"
          }
        },
        {
          id = 114,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1280,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
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
          y = 1128,
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
          y = 1280,
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
          y = 1280,
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
          y = 1336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 24, y = -40 }
          },
          properties = {}
        },
        {
          id = 222,
          name = "",
          type = "",
          shape = "polyline",
          x = 56,
          y = 1336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 64, y = -8 }
          },
          properties = {}
        },
        {
          id = 223,
          name = "",
          type = "",
          shape = "polyline",
          x = 232,
          y = 1336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 0 },
            { x = -64, y = -8 }
          },
          properties = {}
        },
        {
          id = 224,
          name = "",
          type = "",
          shape = "polyline",
          x = 232,
          y = 1336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 0 },
            { x = -24, y = -40 }
          },
          properties = {}
        },
        {
          id = 225,
          name = "",
          type = "",
          shape = "polyline",
          x = 72,
          y = 1280,
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
          y = 1280,
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
          id = 228,
          name = "",
          type = "",
          shape = "polyline",
          x = 304,
          y = 1280,
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
          y = 1184,
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
          y = 1184,
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
          y = 1184,
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
          y = 1192,
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
          y = 1168,
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
          y = 1152,
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
          y = 1176,
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
          y = 1152,
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
      type = "objectgroup",
      id = 226,
      name = "heavy6b",
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
          id = 544,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 88,
          y = 1320,
          width = 112,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 194,
          name = "heavy",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1336,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {
            ["pathfinder"] = "random",
            ["pathid"] = "midboss"
          }
        },
        {
          id = 195,
          name = "heavy",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1336,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {
            ["pathfinder"] = "random",
            ["pathid"] = "midboss"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 124,
      name = "heavy6",
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
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 1576,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {}
        },
        {
          id = 412,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1576,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {}
        },
        {
          id = 413,
          name = "",
          type = "",
          shape = "polyline",
          x = 32,
          y = 1576,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 40 },
            { x = 32, y = 8 },
            { x = 64, y = 8 },
            { x = 80, y = -8 },
            { x = 80, y = -120 },
            { x = 64, y = -136 },
            { x = -56, y = -136 }
          },
          properties = {}
        },
        {
          id = 414,
          name = "",
          type = "",
          shape = "polyline",
          x = 256,
          y = 1576,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 40 },
            { x = -32, y = 8 },
            { x = -64, y = 8 },
            { x = -80, y = -8 },
            { x = -80, y = -120 },
            { x = -64, y = -136 },
            { x = 56, y = -136 }
          },
          properties = {}
        },
        {
          id = 415,
          name = "heavy6",
          type = "Trigger",
          shape = "rectangle",
          x = 64,
          y = 1576,
          width = 160,
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
      id = 49,
      name = "catapult5",
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
          type = "",
          shape = "rectangle",
          x = 160,
          y = 1576,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1016,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 26,
          name = "catapult4",
          type = "Trigger",
          shape = "rectangle",
          x = 88,
          y = 1640,
          width = 112,
          height = 8,
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
          y = 1600,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 72 },
            { x = 0, y = -96 },
            { x = 0, y = 160 }
          },
          properties = {}
        },
        {
          id = 123,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 1544,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1065,
          visible = true,
          properties = {}
        },
        {
          id = 404,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 1624,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1016,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 405,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 1592,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1065,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 123,
      name = "militia9",
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
          type = "",
          shape = "rectangle",
          x = 320,
          y = 1824,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 152,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 312,
          y = 1688,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 151,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 1688,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 148,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = -56,
          y = 1688,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 149,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1824,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 142,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = -32,
          y = 1688,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 234,
          name = "militia9",
          type = "Trigger",
          shape = "rectangle",
          x = 96,
          y = 1696,
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
          x = -8,
          y = 1672,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 16 },
            { x = 72, y = 80 },
            { x = 104, y = 80 },
            { x = 128, y = 104 },
            { x = 128, y = 312 }
          },
          properties = {}
        },
        {
          id = 406,
          name = "",
          type = "",
          shape = "polyline",
          x = 288,
          y = 1688,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -64, y = 64 },
            { x = -96, y = 64 },
            { x = -120, y = 88 },
            { x = -120, y = 296 }
          },
          properties = {}
        },
        {
          id = 407,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 1824,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 64, y = -56 },
            { x = 96, y = -56 },
            { x = 120, y = -32 },
            { x = 120, y = 176 }
          },
          properties = {}
        },
        {
          id = 408,
          name = "",
          type = "",
          shape = "polyline",
          x = 288,
          y = 1824,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -56, y = -56 },
            { x = -96, y = -56 },
            { x = -120, y = -32 },
            { x = -120, y = 176 }
          },
          properties = {}
        },
        {
          id = 409,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 344,
          y = 1824,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 410,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = -24,
          y = 1824,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 50,
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
          id = 22,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1824,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1016,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "path",
          type = "",
          shape = "polyline",
          x = 144,
          y = 1824,
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
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1792,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1101,
          visible = true,
          properties = {}
        },
        {
          id = 398,
          name = "",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 1936,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1022,
          visible = true,
          properties = {}
        },
        {
          id = 399,
          name = "",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 1936,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1018,
          visible = true,
          properties = {}
        },
        {
          id = 400,
          name = "",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 1936,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1062,
          visible = true,
          properties = {}
        },
        {
          id = 401,
          name = "",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 1936,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1068,
          visible = true,
          properties = {}
        },
        {
          id = 402,
          name = "",
          type = "",
          shape = "polyline",
          x = -16,
          y = 1936,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 96, y = 16 }
          },
          properties = {}
        },
        {
          id = 403,
          name = "",
          type = "",
          shape = "polyline",
          x = 304,
          y = 1936,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -96, y = 16 }
          },
          properties = {}
        },
        {
          id = 474,
          name = "heavy4",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 1768,
          width = 32,
          height = 104,
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
      id = 48,
      name = "heavy5",
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
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1904,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "heavy",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1904,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "heavy4",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 1912,
          width = 64,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 394,
          name = "",
          type = "",
          shape = "polyline",
          x = 48,
          y = 1904,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 16 },
            { x = 64, y = 16 },
            { x = 88, y = -8 },
            { x = 64, y = -32 },
            { x = 64, y = -112 },
            { x = 48, y = -128 },
            { x = 16, y = -128 },
            { x = 0, y = -112 },
            { x = 0, y = -32.6667 },
            { x = -16, y = -16 },
            { x = -16, y = 72 },
            { x = 0, y = 88 },
            { x = 0, y = 128 }
          },
          properties = {}
        },
        {
          id = 396,
          name = "",
          type = "",
          shape = "polyline",
          x = 240,
          y = 1904,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -16, y = 16 },
            { x = -64, y = 16 },
            { x = -88, y = -8 },
            { x = -64, y = -32 },
            { x = -64, y = -112 },
            { x = -48, y = -128 },
            { x = -16, y = -128 },
            { x = 0, y = -112 },
            { x = 0, y = -32 },
            { x = 16, y = -16 },
            { x = 16, y = 72 },
            { x = 0, y = 88 },
            { x = 0, y = 128 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 120,
      name = "militia8b",
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
          id = 147,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 2056,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 150,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 2040,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 365,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 2056,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 145,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 2040,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 233,
          name = "militia8a",
          type = "Trigger",
          shape = "rectangle",
          x = 96,
          y = 2048,
          width = 96,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 366,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 2056,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 48, y = 32 },
            { x = 48, y = 56 },
            { x = 64, y = 72 },
            { x = 112, y = 72 },
            { x = 128, y = 88 },
            { x = 128, y = 264 }
          },
          properties = {}
        },
        {
          id = 367,
          name = "",
          type = "",
          shape = "polyline",
          x = 288,
          y = 2048,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 8 },
            { x = -48, y = 40 },
            { x = -48, y = 64 },
            { x = -64, y = 80 },
            { x = -112, y = 80 },
            { x = -128, y = 96 },
            { x = -128, y = 272 }
          },
          properties = {}
        },
        {
          id = 368,
          name = "",
          type = "",
          shape = "polyline",
          x = 48,
          y = 1984,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 16, y = 56 },
            { x = 16, y = 112 },
            { x = 32, y = 128 },
            { x = 72, y = 128 },
            { x = 88, y = 144 },
            { x = 88, y = 328 }
          },
          properties = {}
        },
        {
          id = 369,
          name = "",
          type = "",
          shape = "polyline",
          x = 240,
          y = 1984,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 56 },
            { x = -16, y = 112 },
            { x = -32, y = 128 },
            { x = -72, y = 128 },
            { x = -88, y = 144 },
            { x = -88, y = 328 }
          },
          properties = {}
        },
        {
          id = 382,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 2184,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 16, y = 0 },
            { x = 32, y = -16 },
            { x = 32, y = -88 },
            { x = 64, y = -120 },
            { x = 64, y = -184 },
            { x = 32, y = -216 },
            { x = -24, y = -216 }
          },
          properties = {}
        },
        {
          id = 383,
          name = "",
          type = "",
          shape = "polyline",
          x = 288,
          y = 2184,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -16, y = 0 },
            { x = -32, y = -16 },
            { x = -32, y = -88 },
            { x = -64, y = -120 },
            { x = -64, y = -184 },
            { x = -32, y = -216 },
            { x = 24, y = -216 }
          },
          properties = {}
        },
        {
          id = 384,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 2184,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 385,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 2184,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 390,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 2048,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 391,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 2048,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 392,
          name = "",
          type = "",
          shape = "polyline",
          x = 136,
          y = 2048,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -8, y = 32 },
            { x = -8, y = 80 },
            { x = 0, y = 88 },
            { x = 0, y = 280 }
          },
          properties = {}
        },
        {
          id = 393,
          name = "",
          type = "",
          shape = "polyline",
          x = 152,
          y = 2048,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 8, y = 32 },
            { x = 8, y = 80 },
            { x = 0, y = 88 },
            { x = 0, y = 280 }
          },
          properties = {}
        },
        {
          id = 551,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 2016,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 552,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 2016,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 227,
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
          id = 545,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 88,
          y = 2240,
          width = 112,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 388,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 2280,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 389,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 2296,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 546,
          name = "",
          type = "",
          shape = "polyline",
          x = 16,
          y = 2312,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -112, y = -16 },
            { x = 16, y = -16 },
            { x = 56, y = -56 },
            { x = 200, y = -56 },
            { x = 240, y = -16 },
            { x = 272, y = -16 },
            { x = 296, y = -16 },
            { x = 320, y = -16 },
            { x = 344, y = -16 }
          },
          properties = {}
        },
        {
          id = 547,
          name = "",
          type = "",
          shape = "polyline",
          x = 288,
          y = 2280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 72, y = 0 },
            { x = -24, y = 0 },
            { x = -64, y = -40 },
            { x = -224, y = -40 },
            { x = -264, y = 0 },
            { x = -288, y = 0 },
            { x = -320, y = 0 },
            { x = -352, y = 0 },
            { x = -384, y = 0 }
          },
          properties = {}
        },
        {
          id = 548,
          name = "",
          type = "",
          shape = "rectangle",
          x = -32,
          y = 2280,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 549,
          name = "",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 2280,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 550,
          name = "",
          type = "",
          shape = "rectangle",
          x = -96,
          y = 2280,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 553,
          name = "",
          type = "",
          shape = "rectangle",
          x = 312,
          y = 2296,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 554,
          name = "",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 2296,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 555,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 2296,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 122,
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
          id = 372,
          name = "",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 2424,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1014,
          visible = true,
          properties = {}
        },
        {
          id = 373,
          name = "",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 2424,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1018,
          visible = true,
          properties = {}
        },
        {
          id = 374,
          name = "",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 2416,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1062,
          visible = true,
          properties = {}
        },
        {
          id = 375,
          name = "",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 2416,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1068,
          visible = true,
          properties = {}
        },
        {
          id = 376,
          name = "",
          type = "",
          shape = "polyline",
          x = -16,
          y = 2424,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 80, y = 0 }
          },
          properties = {}
        },
        {
          id = 377,
          name = "",
          type = "",
          shape = "polyline",
          x = 304,
          y = 2424,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -80, y = 0 }
          },
          properties = {}
        },
        {
          id = 381,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 2344,
          width = 32,
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
      id = 121,
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
          id = 146,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 2376,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {}
        },
        {
          id = 371,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 2376,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {}
        },
        {
          id = 378,
          name = "",
          type = "",
          shape = "polyline",
          x = 136,
          y = 2376,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -16, y = 16 },
            { x = -64, y = 16 },
            { x = -80, y = 0 },
            { x = -80, y = -88 },
            { x = -64, y = -104 },
            { x = -16, y = -104 },
            { x = 0, y = -88 },
            { x = 0, y = 24 },
            { x = -48, y = 72 },
            { x = -48, y = 184 }
          },
          properties = {}
        },
        {
          id = 379,
          name = "",
          type = "",
          shape = "polyline",
          x = 152,
          y = 2344,
          width = 0,
          height = 0,
          rotation = 180,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = -16, y = -48 },
            { x = -64, y = -48 },
            { x = -80, y = -32 },
            { x = -80, y = 56 },
            { x = -64, y = 72 },
            { x = -16, y = 72 },
            { x = 0, y = 56 },
            { x = 0, y = -56 },
            { x = -48, y = -104 },
            { x = -48, y = -216 }
          },
          properties = {}
        },
        {
          id = 380,
          name = "heavy4",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 2352,
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
          type = "",
          shape = "rectangle",
          x = 312,
          y = 2560,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 112,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = -24,
          y = 2560,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 122,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 144,
          y = 2440,
          width = 16,
          height = 104,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 97,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 2536,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1146,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 81,
          name = "path",
          type = "",
          shape = "polyline",
          x = 0,
          y = 2616,
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
          x = 352,
          y = 2584,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -40, y = -24 },
            { x = -128, y = -24 },
            { x = -128, y = -136 },
            { x = -40, y = -136 }
          },
          properties = {}
        },
        {
          id = 87,
          name = "path",
          type = "",
          shape = "polyline",
          x = -32,
          y = 2560,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 96, y = 0 },
            { x = 96, y = -112 },
            { x = 8, y = -112 }
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
          type = "",
          shape = "rectangle",
          x = 64,
          y = 2664,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "heavy",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 2664,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "path",
          type = "",
          shape = "polyline",
          x = -8,
          y = 2672,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 88, y = 8 },
            { x = 88, y = -48 },
            { x = 104, y = -64 },
            { x = 200, y = -64 },
            { x = 216, y = -80 },
            { x = 216, y = -224 },
            { x = 232, y = -240 },
            { x = 320, y = -240 }
          },
          properties = {}
        },
        {
          id = 20,
          name = "path",
          type = "",
          shape = "polyline",
          x = 296,
          y = 2672,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -88, y = 8 },
            { x = -88, y = -64 },
            { x = -104, y = -80 },
            { x = -200, y = -80 },
            { x = -216, y = -96 },
            { x = -216, y = -224 },
            { x = -232, y = -240 },
            { x = -320, y = -240 }
          },
          properties = {}
        },
        {
          id = 21,
          name = "heavy3",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 2440,
          width = 16,
          height = 216,
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
          type = "",
          shape = "rectangle",
          x = 0,
          y = 2816,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 139,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = -32,
          y = 2816,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 144,
          name = "militia7",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 2752,
          width = 32,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 364,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 2816,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 526,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = -96,
          y = 2816,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 527,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = -128,
          y = 2816,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 543,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 2816,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 64, y = 0 },
            { x = 80, y = -16 },
            { x = 80, y = -56 },
            { x = 96, y = -72 },
            { x = 192, y = -72 },
            { x = 248, y = -16 },
            { x = 344, y = -16 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 225,
      name = "militia7b",
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
          id = 535,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 424,
          y = 2696,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 536,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 392,
          y = 2696,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 537,
          name = "militia7",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 2664,
          width = 32,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 539,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 2696,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 540,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 2696,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 541,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 296,
          y = 2696,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 542,
          name = "",
          type = "",
          shape = "polyline",
          x = 296,
          y = 2696,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -56, y = 0 },
            { x = -80, y = 24 },
            { x = -200, y = 24 },
            { x = -232, y = 56 },
            { x = -232, y = 96 },
            { x = -256, y = 120 },
            { x = -336, y = 120 }
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
          x = 144,
          y = 2776,
          width = 32,
          height = 88,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 109,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 2928,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1146,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 110,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = -32,
          y = 2928,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 525,
          name = "",
          type = "",
          shape = "polyline",
          x = -8,
          y = 2928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -24, y = 0 },
            { x = 56, y = 0 },
            { x = 72, y = -16 },
            { x = 72, y = -80 },
            { x = 56, y = -96 },
            { x = -24, y = -96 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 119,
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
          id = 356,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 2896,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 357,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 2840,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 359,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 2872,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 361,
          name = "militia6",
          type = "Trigger",
          shape = "rectangle",
          x = 144,
          y = 2888,
          width = 16,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 362,
          name = "",
          type = "",
          shape = "polyline",
          x = 168,
          y = 2896,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 24, y = 0 },
            { x = 48, y = -24 },
            { x = 48, y = -56 },
            { x = 72, y = -80 },
            { x = 104, y = -80 }
          },
          properties = {}
        },
        {
          id = 363,
          name = "",
          type = "",
          shape = "polyline",
          x = -24,
          y = 2816,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 360, y = 224 },
            { x = 136, y = 224 },
            { x = 104, y = 192 },
            { x = 104, y = 96 },
            { x = 120, y = 80 },
            { x = 192, y = 80 }
          },
          properties = {}
        },
        {
          id = 523,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 2816,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 524,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 2816,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
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
          type = "",
          shape = "rectangle",
          x = 200,
          y = 2864,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "heavy2",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 2888,
          width = 16,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 355,
          name = "",
          type = "",
          shape = "polyline",
          x = 200,
          y = 2864,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -16, y = 16 },
            { x = -96, y = 16 },
            { x = -112, y = 0 },
            { x = -112, y = -48 },
            { x = -128, y = -64 },
            { x = -224, y = -64 }
          },
          properties = {}
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
          type = "",
          shape = "rectangle",
          x = 352,
          y = 3048,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1146,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 106,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 3048,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1044,
          visible = true,
          properties = {
            ["pathspeedfunction"] = "ncos"
          }
        },
        {
          id = 120,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 3064,
          width = 64,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 83,
          name = "path",
          type = "",
          shape = "polyline",
          x = 328,
          y = 3040,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 8 },
            { x = -112, y = 8 },
            { x = -112, y = 112 },
            { x = -8, y = 112 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 118,
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
          id = 96,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 112,
          y = 3072,
          width = 64,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 94,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 3056,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 95,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 2992,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 99,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 3024,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 100,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 3168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 353,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 3056,
          width = 0,
          height = 0,
          rotation = 180,
          visible = true,
          polyline = {
            { x = 0, y = -112 },
            { x = -192, y = -112 },
            { x = -216, y = -88 },
            { x = -216, y = -24 },
            { x = -232, y = -8 },
            { x = -312, y = -8 }
          },
          properties = {}
        },
        {
          id = 354,
          name = "",
          type = "",
          shape = "polyline",
          x = 200,
          y = 3096,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -40 },
            { x = 0, y = 32 },
            { x = -24, y = 56 },
            { x = -88, y = 56 },
            { x = -112, y = 32 },
            { x = -112, y = -24 },
            { x = -128, y = -40 },
            { x = -232, y = -40 }
          },
          properties = {}
        },
        {
          id = 71,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 3168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 74,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = -32,
          y = 3168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 519,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = -96,
          y = 3168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 520,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = -128,
          y = 3168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 521,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 2960,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 522,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 2928,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
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
          type = "",
          shape = "rectangle",
          x = 88,
          y = 3144,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1116,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "heavy1",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 3144,
          width = 32,
          height = 8,
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
          x = 72,
          y = 3104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 16, y = 40 },
            { x = 16, y = 72 },
            { x = 16, y = -48 },
            { x = 32, y = -64 },
            { x = 112, y = -64 },
            { x = 128, y = -48 },
            { x = 128, y = 32 },
            { x = 160, y = 64 },
            { x = 232, y = 64 }
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
          type = "",
          shape = "rectangle",
          x = 136,
          y = 3384,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1016,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "path",
          type = "",
          shape = "polyline",
          x = 136,
          y = 3384,
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
          y = 3256,
          width = 32,
          height = 216,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 33,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 3352,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1101,
          visible = true,
          properties = {}
        },
        {
          id = 350,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 3448,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1016,
          visible = true,
          properties = {}
        },
        {
          id = 351,
          name = "path",
          type = "",
          shape = "polyline",
          x = 152,
          y = 3448,
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
          id = 352,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 3416,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1065,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 216,
      name = "Copy of enemygrouptemplate",
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
          id = 506,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 88,
          y = 3536,
          width = 112,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 348,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 3528,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 349,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 3464,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 507,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 3496,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 508,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 3432,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 509,
          name = "",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 3560,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 510,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 3560,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 511,
          name = "",
          type = "",
          shape = "rectangle",
          x = -24,
          y = 3560,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 512,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 3560,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 513,
          name = "",
          type = "",
          shape = "rectangle",
          x = 376,
          y = 3560,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 514,
          name = "",
          type = "",
          shape = "rectangle",
          x = -48,
          y = 3560,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 515,
          name = "",
          type = "",
          shape = "polyline",
          x = 112,
          y = 3528,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 48 },
            { x = 64, y = 64 },
            { x = 64, y = 120 },
            { x = 96, y = 152 },
            { x = 232, y = 152 }
          },
          properties = {}
        },
        {
          id = 516,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 3560,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 80, y = 0 },
            { x = 96, y = 16 },
            { x = 96, y = 104 },
            { x = 80, y = 120 },
            { x = -56, y = 120 }
          },
          properties = {}
        },
        {
          id = 517,
          name = "",
          type = "",
          shape = "polyline",
          x = 176,
          y = 3464,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 112 },
            { x = -64, y = 128 },
            { x = -64, y = 216 },
            { x = -80, y = 232 },
            { x = -232, y = 232 }
          },
          properties = {}
        },
        {
          id = 518,
          name = "",
          type = "",
          shape = "polyline",
          x = 304,
          y = 3560,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 24, y = 0 },
            { x = -96, y = 0 },
            { x = -112, y = 16 },
            { x = -112, y = 104 },
            { x = -96, y = 120 },
            { x = 48, y = 120 }
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
          type = "",
          shape = "rectangle",
          x = -32,
          y = 3296,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 61,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 3296,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 62,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 3296,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 63,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 3296,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 68,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 88,
          y = 3320,
          width = 112,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 338,
          name = "",
          type = "",
          shape = "polyline",
          x = -8,
          y = 3296,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 88, y = 0 },
            { x = 104, y = 16 },
            { x = 104, y = 104 },
            { x = 88, y = 120 },
            { x = -192, y = 120 }
          },
          properties = {}
        },
        {
          id = 339,
          name = "",
          type = "",
          shape = "polyline",
          x = 296,
          y = 3296,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -88, y = 0 },
            { x = -104, y = 16 },
            { x = -104, y = 104 },
            { x = -88, y = 120 },
            { x = 208, y = 120 }
          },
          properties = {}
        },
        {
          id = 340,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 3424,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 96, y = 0 },
            { x = 112, y = -16 },
            { x = 112, y = -120 },
            { x = 96, y = -136 },
            { x = -200, y = -136 }
          },
          properties = {}
        },
        {
          id = 342,
          name = "",
          type = "",
          shape = "rectangle",
          x = -32,
          y = 3424,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 343,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 3424,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 344,
          name = "",
          type = "",
          shape = "polyline",
          x = 288,
          y = 3424,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -96, y = 0 },
            { x = -112, y = -16 },
            { x = -112, y = -120 },
            { x = -96, y = -136 },
            { x = 216, y = -136 }
          },
          properties = {}
        },
        {
          id = 345,
          name = "",
          type = "",
          shape = "rectangle",
          x = -56,
          y = 3424,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 346,
          name = "",
          type = "",
          shape = "rectangle",
          x = 312,
          y = 3424,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
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
          type = "",
          shape = "rectangle",
          x = 112,
          y = 3632,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 57,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 3680,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 58,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 3664,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 59,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 3648,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 75,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 3680,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 76,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 3680,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 67,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 88,
          y = 3688,
          width = 112,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 332,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 3680,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 80, y = 0 },
            { x = 96, y = 16 },
            { x = 96, y = 112 },
            { x = 80, y = 128 },
            { x = -96, y = 128 }
          },
          properties = {}
        },
        {
          id = 333,
          name = "",
          type = "",
          shape = "polyline",
          x = 288,
          y = 3680,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -80, y = 0 },
            { x = -96, y = 16 },
            { x = -96, y = 112 },
            { x = -80, y = 128 },
            { x = 72, y = 128 }
          },
          properties = {}
        },
        {
          id = 336,
          name = "",
          type = "",
          shape = "polyline",
          x = 112,
          y = 3648,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 32 },
            { x = 0, y = 160 },
            { x = -16, y = 176 },
            { x = -192, y = 176 }
          },
          properties = {}
        },
        {
          id = 337,
          name = "",
          type = "",
          shape = "polyline",
          x = 176,
          y = 3648,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 32 },
            { x = 0, y = 160 },
            { x = 16, y = 176 },
            { x = 168, y = 176 }
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
          type = "",
          shape = "rectangle",
          x = 112,
          y = 3792,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 49,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 3744,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 66,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 88,
          y = 3800,
          width = 112,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 65,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 3776,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 64,
          name = "militia",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 3760,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {}
        },
        {
          id = 503,
          name = "",
          type = "",
          shape = "polyline",
          x = 112,
          y = 3792,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 72 },
            { x = 88, y = 136 },
            { x = 240, y = 136 }
          },
          properties = {}
        },
        {
          id = 504,
          name = "",
          type = "",
          shape = "polyline",
          x = 176,
          y = 3792,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 40 },
            { x = -64, y = 128 },
            { x = -112, y = 144 },
            { x = -256, y = 144 }
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
          type = "",
          shape = "rectangle",
          x = 144,
          y = 3776,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1016,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "path",
          type = "",
          shape = "polyline",
          x = 144,
          y = 3776,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 32 },
            { x = 0, y = -144 }
          },
          properties = {}
        },
        {
          id = 7,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 128,
          y = 3608,
          width = 32,
          height = 192,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 34,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 3744,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1101,
          visible = true,
          properties = {}
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
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 3856,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 40,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 3864,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 3872,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 36,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 3856,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 3864,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 35,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 3872,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 46,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 64,
          y = 3880,
          width = 160,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 328,
          name = "",
          type = "",
          shape = "polyline",
          x = 112,
          y = 3840,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 24 },
            { x = 0, y = 88 },
            { x = -48, y = 112 }
          },
          properties = {}
        },
        {
          id = 329,
          name = "",
          type = "",
          shape = "polyline",
          x = 176,
          y = 3840,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 24 },
            { x = 0, y = 88 },
            { x = 48, y = 112 }
          },
          properties = {}
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
          type = "",
          shape = "rectangle",
          x = 184,
          y = 3904,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 42,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 3904,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 43,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 3896,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 47,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 3896,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1080,
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
          x = 64,
          y = 3904,
          width = 160,
          height = 8,
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
          y = 3920,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 56 }
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
          y = 4000,
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
            { x = 0, y = -3272 },
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
          y = 4352,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1484,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
