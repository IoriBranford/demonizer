return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.5",
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
      firstgid = 1134,
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
      firstgid = 1158,
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
      firstgid = 1173,
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
      firstgid = 1193,
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
      firstgid = 1205,
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
      firstgid = 1229,
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
      firstgid = 1247,
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
      firstgid = 1259,
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
      firstgid = 1271,
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
      firstgid = 1283,
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
      firstgid = 1307,
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
      firstgid = 1331,
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
      firstgid = 1415,
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
      firstgid = 1463,
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
      firstgid = 1466,
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
      firstgid = 1469,
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
      firstgid = 1472,
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
      firstgid = 1475,
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
      firstgid = 1478,
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
      firstgid = 1506,
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
      firstgid = 1522,
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
      firstgid = 1546,
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
      firstgid = 1570,
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
      firstgid = 1582,
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
      data = "eJylmNutwzgMRNV/Ee7C/jfUQgraXWwIHJ879CsEjCS2RfE5HGWM/2XFtf97zX+v5Xtt3/vz+2z7fi7jr2zf+/X++r1XOqiv3p2NntJR6yful53LhZ6yeeI77du/14rPtbGnYlKfZVfdq7UTvy0V09qr1pYdU/qWRg/jWuv4m3FiLLv4LNDDHPM7a8LC58wNc0V7Oj20dRnHeNFGXnvjV8pl+eR3Oz1+r/Je+pmnJOU3fXZ+5zj2DXuFdcG8cv9N+uo93q8crtqX9eqeW6Wz3lv0Hv1y/dkO1/uq5/vIfqVer+fs8UU6aSN179DDmHEv+sT4l07qYJ/8p+MTnjOWS7i28Gx+dfEyFrnXPsEu4nrpYTxYJ7X3B9+Z/w3PP+MYP9uy4j1jgXXQZ9YaffyEZ/SZNcf+IZ7t8J/9ZVtSD7pePnq2j2N82YvGY2LaJ+xT91lz5Zexn37RzlrrukkYs0iPe7xsL1upwzlL9bGOYz25R/xZF98z/qdcml8kn4wftY/7POWefWhMoR73N3GA9VO61nG0te47zwnn7B9tcW/Sf/rH/Lp3XZ/c17i/jKNv1mGfaC9tce19tL97ydzOfINxZ29wjTHIa53PLexV9y32l3M5zdip++whr611FOOYbfUs7PgP+4D5Ic5vuGzHGMd8c8Z47tPWFMNVa50Lc6DOJ+7JunE98UqSzjbEV59dOp5IjDQvoj/MYyfmctbt+dAJfeP3DoM6Yc2wB1MtndlD31gj/E777Av7l33IOjRXNk4w1+b/jJVr01x6lR5zes5Jz0XPXWIS7d/DGmNtPS/hvsYX4zZxxOLapV/umbP+GnrHMWT8ut4qMfaaW3Lun0niIcbrq94qe1KdOadnuDHGcV/unbC58pDEfUifujnY6WF8zMPMg86wlTVGnkEM4pXEdjvfiZsnXY6D8SDhhvuDPZS4IfHCWFc2keMSfzhfU88Z81zznMW2L+Fe4jKLdPP71HvpPGReSKwmTjq+u/SYq7gvWN/GFvOTTe8Y58lJWOt38a0T4jb7JcnZM9Y5ffPzMY6caY6jTs8OxpTxdI8wr+RCng9p3nlWM+fUM7Wn54Q5HvV7pqVzCfdynzv/7ltzC+NZmie2yTPGuLqE5+wb8gPGihiyai3td28aP1kTifu4r4hfrB/rNAelHeRRzE/CL+KCeSJjnuYla8Q+GXeNHcQ89vGq37t0GptSHPiMtpjrM+9+f2ovz7iptclv6mR8PSc9bzwzjQGsN88F9if3NM6431fd28LlWHEf+pp61X1m+72HZynXuyeNZ+bh7CvPXvdV4gHcK81H9u4mvZ4xft9+uqacA8bA89lYwlo0P6HtqcbsP/d3bRr7jUPMd+Ia9C/N9oTprvU0Z4lvjOmqfVxnq95LMy/xrTQPHH/nLmGlscL3Eq9lzpgL59qxMC4mnE35T3WUsN4z2hyCNqa6MwdgXOb46zfxNc0FcuI0X7s8mF8wN2lG0o4uVu5X12rH+Tqu4Vls3DM3IP6zro2Zjs82/sYn9ViaCYwJY+e6c6zd966PxHs4C1izZzOde5vTOFaePUm354FxZwn6WbvU4zpJvJmY7jnPuVhCTCJueLY6VhZjCHmGeRT9SnocZ+eWsav3LHxOm8yFjPMW54V+sl+sk/4wppzVvMc4MY7mcWmech37Ps0s++UaY42mnKX4pNgYG8xtLZ5R3Nf9Q9stqZc8UzhLuvohznmt53uqZ9YFsYe2e0bsetf8ZJceY5rtod0l7EXny3W1hfXW437kPWNS16eeFWnOWbeFvnhv8z3iZqfHveH5x/pxv6f5Q35j/PbsNw4bk52zNLsd7zn+5sO81TMr9TvzzTic5SrpMW9J+OWYpfphD5EH+IzCOZz0sPbI4TxfPXtKzAkSnzH3cR6N4441eRj7I3EszxXWkWPB/enzrjXOs2PP84HXUFjraV9iYerRksS5XUP0oxPmqeJp/kJM68Sxdu/azzO/mGvmN/E0r3UPuLaYJ59XuIaxNW5Q/6I90lmAXHLXvUV7Oa/uV95PfJd9kbhGCXvHdhBTy9dOiOHmU/b1jh7PdPvbcVX6lfrbvZzqkDPCs2gL1xU3IYZzXnR89or3uo6M08aOhPe0geu5P3PfCfuBtc/40f9OPP+cP9f3mR7zLa9nHjox3m36Tf9sjzHGc9Drbd+UDsYv8Z1d34mb5APd3q7JxNlSzxqzWHechVeS8I8+XM2cEvZD2ePYn9VyiePBWqB/d+2py3XZnQc8hxOmE1OJB4wdeRLvkbewRn1O6Py0jsSD7+aLc9d87m79MC/EDs+jKzF+sf/o3x09jAM5QIcZtY45dO1u+jTWslZW3WcdcC6wFs1TLMQG1pO51ZV0NWoefEcPY2uf6vuVuOZTj93pd/cozwX8bjHOGYNdT9RtHmIMSBxlGX99Ze593vJZjPzVdXDnrOFavuKEndi2xOXu6klnuadiDna3bpIez4g3fnUz4ux98wvXon93/MUzpjsH0D/38JWdrPk3ce766Kl4/t6dWxZiK/vqqficendu/aqHdnPGmId0M4c9kzgO+yHN1036O/FZ/C3++Mx3d95YaANj9Ys95FVPxVj4Fn/IKe/wMM86znHWE3PPWmKd+txmvez3dDa6wh9y9F/xmXb/0u+c22/qx5zxbV8QV4kJT4Uzgv3dCXmJMX3XPfJg5p71QttTvlPN8d0rv4hBb+qHMWHfPxXP37f1k84sb/GQPPiXviCPuTpXkAdytrBmfNaaepd7+p7PT55x5vadsG5/me+cqazJp2J8fZt3YvyTc3tnD8+pb+cp8aPy3om5JM83U7+N++bcrjlyKZ+53f9r+HRMzbsTjvhM57WsWcbInMw833FxfFmT7DfjpPvI51Cfp7s5xD7t5oI5Y6onc1+frYmtZVMSxoKfvO7yMp/X/V8Ec3ImPGeZv9PPK5ymDvrpfF/p6XLkOrwS9pLPr4z/HSGvcK0/+W/CPZ569a5wvf/neTJTWXv056kexsbxeoL1rOGEr0/tYf2wN57oMXdkn94Vn/85C57oSTz+itP/Az2Md5k="
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
      data = "eJy1VzGSFDEMnC+TU+TkQHwQA6+gyG7fxGzgKl1fd6vlGVQ1tbO2JffIUks+Di2P83k186/BO7OpbKz/Tl/ZS/dnGNI96nsdS/EufzJ7ar+JLyaCfk73Yeej8HaxUx+1psZgd27sbNz+O6L0kj3Xt7zCmLI9jVNm4+o6tpbhTPN255tQd8IvS5iOi5dHeZy42GW2657LZ7jPA+brOtyj+uQV9Nm+7D87T8SH6+peLm6ZrrKXfCPiQ8youxOTlXc6fu7m638Xg4ktFa9JzGN8dPu7nHc1nJ0ji+3jeOvnOrfDsROfq3Ooe3f5m+Cpj9pzt55M+i12riy205iva9Wc0t/pbTBOUNfxjeKpOq94BLn5AWNYI9KzdPyMtTTxm8t/9APqJb2Vygv0m9rry/l8PZ9vgMvhRp2nfDqfv+fzEfbF86818+V8/oDOz/P5cD6/QY9hX3NPnV+gw9bVXzbf9bpufL0/ffP5eOsbJypenv78frz1zRLmf9Svdp7n8oOsfTnen5m6Qzgf45zjvzSWMVZYz5fUsYpB1VyFjfFSxcPuSawfwvhRdUzlLI65XhK/I6mD7N3ZX1iZn9m5OT5BPEmP0ukrTu9qgRKsR3gOnT3lI7VPYgfPqoudNV57HharridKsLF6rXr9Li/U+qSHwRjs7LOa7voatIU2K1aFm9X4NF+YX1ndR0wsR3G9q5WYC04fx5wvWS1FW6q/6YTlqorJiSScNrHR9V6dHZYDLK5YjrAYxVzAeFb1U8V61UH/K95Q9qqeilsVe2yNWu/OguHHb0SMCT92/Y7qOZLvZuMsXlBYvjudjh87nnO5yc7HxTLzratHqr6wGGZYWV+kvkfFIbON38pEcQh+N4sVVhdUjE85mJ0F4mO/dZ7xAetlVDyiHuOoDoPKNcfdXY4zYfZYLVQ+wf3x3e1d16mc79ayPHN6bEydEeNm9V73VjnVcZHDrPK22nbYmO/wnLvc6fxcsShdxYeIoc4p3kviiu2DdlztQkyO83BvVcvUnPt+VReS3Hb2DzGmeotJzLBcUHhZTjM8ywbD52ot2sEajvNJb6b4pI6x72U1kvG8y3ncC0XlqrKh6q/yk+od6jyKi2PcN+1NXA1SOOpctZPmlbPfxQQTF4cpHuev5DvYPgqPw4Drkb/YWvZf2Xf+Zv9xTPUGa87l/LTmdD5LOKbzi+Jptn/qY+WvDiuzVcX1FU7S/HF6zkZyTkpnJ9/XWtVbTPIV31nuTuyp3hD363Covg3tM/8pfaarakAdZ7Uz6WURE5vreM3ZrDhdf1ylq9+T3ESu6OoPw/I43vshXV+xKHzrHR9ny/WYHTe6Xibh04RLdrje8Zvyd7e/wp/w19JXvWGKB3FM/NNxh8upxNeOm7vvY/E9OacE0wTPsuH6+VTqnoxbDzOOaxz/7MYQ+6+k6x87HOh/jLtJD1jtsP13+KaraxM/s16e/TpMXd6l3LPWV5s7Mb3T+9U5xjVYn3C/rp90+cTudmwfPKO0J1W1mPlV9QsT+7t8iPZc3XeS9DmpHewTXE/hxqtgz1Ntd3eetC9zouJ4UneqzhVfsHvITs6zuJ3wDuqy70rvm1iTEV9dp3zO4kzVevXrsLLeKhX1TVf8vQRje0d2OAOl+iSpx8on7Ewcr+H5oi9cvuM5sveHWMt0mDA8OzLt35WwmriD6Wq8MFu7vlE2dzF2NV1xgcrNjmcm/evuea397/DxhOc7G1f6jeO4P7/SHqqr45hbyCdpjWa+7vofhan+ToVx4y5vTO6GE7nCY1drIOvBujtgV3vwP8PK1nY9Adrp+rS65iqHYC82lf9Rd67axTvobl2uv7v3FGUbz431Vy6vOy5ymDB27rrvXuWOO2pp57fETv3dlYohvUemdy0Ud39K+qX6m/DJ1dqFWNx3d8Jq+l392JXafEdeTe9wS4+NV1zqnsXufiqmJnd1/M8wqhrLuMpxJxtnnODiDvdidcTVFfV9Kq8RjxpPOAD75mmNwHqH/Quum8gdd8CuJiai7oWTfEc/XxGM2V0+dP1GKi7Gp3hULb5yP93FwnR2MSnu2bWDOXklR+66N2EvNbVRMSU17B8CyAR7"
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
      data = "eJztnMty3cYRhoek5B1LKu6iSNlZtx1FUjvKONzxEu9IHutB7DxFKvs8gB4gLxi0OV/hP51uDAahYpXjqZo6JDBo9HT/fZkGBpellLuxfyz97dnYr8d+NvbLsX8Z+/MVdE7H/mHsN0LnZCU/Rue+0rhdyc9xpXNWeVo7L+PHZHtZeTJZHa6kc1Vp3Vbe1ujrqF77odKyvlY+xsdZmea3Zl5HlYbxY7K5En6+H/u7sb8e+4uxv6/HXtVjr+sx6BgN09N97X+q1/258mh63JYHXB3Xe11X3l/WsX8pk77B9W2Z8PRk7E/H/mnsP4z9fOyb2r+r425qv6/3eFLPP5WxFzMyOXdjrR80rlnazh+Bxu+9gbX/thl2DIOGV3D8Zmb823pvP8ZwBa4Nx4bLOds3XxHZ41AecHVQJh87Z7NH9Z4vA57MDs2uzhbQwVeY7XlfY+fwaXvlwaayNlTebf4aG0xu2G2Lht7X84MPMTpLfSvxT/mxWHZfJl/TQ0flOJRJVz383AT3ZW6RLn0z3Zo8vwT3Nf9heFySLyDjbTL2tNJpxQ3kaX400i10WnHsWZniQiQDYnWLHxtnssG+1VeoXbTkY7I8qDx5ezV9mU0szReg9UHGv6q8WAwyu1gaP47rfYmJW+k9MR5M2/0va7+tvSd3ITckT/hUu/kyxYP5gXdl8rU2f9XzUK/Zr9dnzWT/89h/Gfu/xv63sj6n/fvY/1n7P8q8P3hf+fXYhO9s3jSuY94m496c4bzStvsYxl9Wvpb4VE/H9GF6MJt60nm9NmxhbS5PM31gt8yrpw1l1zey5unl6bzyQv5pmN6WZb7Z84Pvg5dtWebDfDuqvFjH75jOevGD72DddL+CF3yo8UG+Y7+98iF/Oau/5ODWe+Y1lAefwbXfWjN/tzZnxWeazzA8rlnnkn8Z9s7KhEEfG5fQIG9ifXrdyZPhz3DHXFiDwVdPHsV8wDLzuu+gQ951J/RYn/bMayhTfDe7uKw0yVd7bIwc7rJMtQDk1VtTILeHH2TeW7thHYB88UNr6BgP6Gtb+vRFG8okb/hZWyMzWuTMRqsnF/PNdNebz2Vt/xFo/D80rTm9KFNuab9an3onv1GcslhNLcnwZNg0uzF93tRz1D/xYZFdn5ZdfLOWt3j9XT2Hb8COIjpH9R7UqA7KlGMdlwmrB2XyoZE9DuUBS+CJmhj1MWpljOP/P9of7ffYWH/hN/AZ3i+8LZMfeVX7+zLlZBd7D3ZrtjiMf29qt+Mah6LzZqen9fiPlc6vtaHx77/WznHaUXD+RI4z/rRB5zihcyx0Pib303ll/HL8c6Xbmld0/nm9/3ZvWk+36ETzsvPm4/ZlXCSfkwYdPU+d+LTy91PtnwO9R+fBHTjgeQL1Ax/3h/LgrznH8wmTzyDyMrovyi5mFc+cJwbyfAa5Kn48Xj0Oo/OnQud5ImfNpzOcIv/PdXykdy/nOfwgz4iOrwtHdIiXc/dTfjI7peFH1tL5vuoOP9Oy98yOFT8nCT8tfX0su/jB3j3ufR3fn4/8GHYL9n1eMsi5TZn0rPjB3ngeyVra24Wew77hc1PvG9mFzutZcP6wTPVBWuanWnKmEada+srsRvGT2WmLH65rxS/FfYRDvb/iZ25ec3hW/LTsK9MDdD4L3QivKufIzxMfDJfk19SoNuU/61x2Xn0854eyG7++laa2xLsAGl94H+C1dM2hWJd9GmX0w14ee9RX+RzKjp/vPdC4Gvu106HHUGYzdt/LSgM6WezJMPqx0o/oZJjNMPhM6NyN/X4v99HZcTB4W2kYpvChET9zNkOOsl92n5VH2EePWe4DblTv+HpvG6xPn8r9Lyp9r/e17/94fWmMJZ+ifqv1WH3HJdN7FBPAYRQrlA56z3A4h0/Vuz6TmsN/dHwQvai9Z3jO6OizP/R+kozP1jDYXaT3OXtcau/kMhFu53x8pPdBcKw1lXM5rjhXOuhdYzWyV3/7Qrrao9r7RvS+FIea8+6LDWQ561wO8VZ4VHvP/EzmDzN7n8N/liNEes/84RzOM/zM5ciR387sPco5stza27vijXzC1wDJm8Eo4/n/W2vgX98rJI/QGg15CDm+5ib4H7BIzPB+Olr7KgbBoeqeMarnKIf12FE6h8JPRod7+ZgT8ePxG9HxMfDOYXEpnV/fA5DrDVv+fQifS0e1k0Gu2yRYYMym7NZG5p4da8zueU6NDwZbip/e92Qy/KB3/CWxMsL8HH5Yl/h8OapNzuHnUOhkej9M6Ch+ltjFiYyJ8KP1sDm7gB995zfDzxydLI/0sRY6GZ7hR3Ne4qDGQnhmrvoug9Y8TM4Zfnqewy7xP1r7VjyyrmvRUd/Si0PFj2JjiV9V/OAf7PdiAR2PH/SQybBFxzd8CPnUmwYdXYfo2hr9awzz6y2fH3jsKH5UZ+QL6ls1b8h8Ri8WfczJsEh8V/tRH+7zOcWPz6fm4rvmzXTNm4grPj/1cXAQeXG95iTk0XN+lVq+vpf+OtB7lJ9GeWpL71E9w+MwknNEZw6HUd6c0RkEf7r2t/9Zz7T0vuSdG+8ziDvqhy9KHJe1njWUKV8h//bjqNlmODyR++B3I3uP1k9RXWCJvbf8zxJ7j2q/rbpYpvdWvhH5jcje/bM3H5ePA70rzrRmiz98Wnbrt6yjdC/Q3HvLvQ28aQ6YvUeo9YBXZfcZn2IgWvtoi+JEhJ8oZ/B05vS9NG604kREJ5rXGjrZOzkZnbugZ37Ir5V83AFvrXWN1pP8szL1I5pDZPjRNY7iqAc/kd/5X+En4qcVb5bisBX/HgOHPfiJ4pZfN3mfFb3TpfUhruMXzKgPyt6d8+sFfQcvw4+uj3Q9tRY/piOt56zVl8lWaz5r/Ybx0FprL6FjPJwsoJPh53lAZ87/EM8UF9Z1DQVvg2BGc6ZNmfJWv358I3TgR/cSgzVwlOFH14aKgV78oKNzN8fHiBdr6DyWH/ua8StaL+m6W2sY+s6Sbxq/tOZhXdc/ioksfvn6byt+RbW7NfnP18w31ug9mtcafnrjYMv/+HnN+R9yIK0DR/gZyu77EuqD9J1vfR88ws9bGavvK2i992vlPxkOf6u8N1sXfEv+Zw4/msPoM64MPzqesZtg7G/dep5ZZM38pO37yuyg1bAT2wvGvqI134Fh7x/7H9bsJWIf4lWZ9mh/6KQDDduncVN2v02T7UOPGnuprx0d9pAu3f9lcuF7LdDiGy493ytg3xf7TKDJ/pUldHTP31WZ9sfxPYjoexFRYz8+32zZlmlfLXSW7Pc9rvdnTwz7/ZA792jNjT1/yJh+JseNr5b+j2Qu7L9hvx/fAgGTc3JCV1/KrpyQFXuSltBhr7J+QwhZ6zznZMTe5/sy2Sb3P5PfFh2+dYEc2A/Fd5+w/da3knReyINv+Gwrr5xvyYe9neynxO7BFPu0W99LQcf4QN0Xhs216Oj+Lr6NZNf8Gwhn09k="
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
      data = "eJzt3N8OgiAUx3F9dNEeoO7qaZMtFmNIyvktib6fzZsmRw7/wgscBrtptMdYBDG8WRTHjbo6qVna25dV9JfnBHF8DEWflfrqMr6v0m+5uu2570hM/IdW1w6l3nJUrYst6jm3M5T++85q697mY0qx30BZa/veuC6q/WZtflNUVjXHLXvfULa1eWGtT658bTu11jY9U717q+IEtWPACd6V47XGmleah3Wd9vVhfmxjz4xf1coaCgAAAAAAAAAAAAAAAAAAAAAA8E3WMxCqMxn+XNJ1vW6CePc1xsP4PRkV5RmTmrNxqufn+nkxniVcNr6Tc6TOpTGzJ064Jx0zoa0tY3J+tY9/hnVMpnE/icdKLoeasZTmcOZ8jfv2Cf+uOA0="
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
      data = "eJztmIFy2jAMhnvn93+6lnYHND26rSWB7RnGzvjQNEv6FbuwZvrudIHU/iw5SXF8dxcEQRAEQRAEQRAEQRAEQRAEQRDcgveUQ+J7yoF4fnbyaPkcb5CP5vmdz7FTPqjHul6IZ6nsUw6JHymHxc7wvKUciGfXydMjn33HfHp4rOt17bqWymvKIfE15UA845U8E+AZDc/UKZ8JzMeaZ9QzAtcL8QQfw6Ey99I1k85/Szk40j0knZc80rPh9UjPhuapIc2D9cyg7a1nuAfI/xLE0ePZ7emp1SX9Nku/tVIu0lrBWkP8S57a/aZ5avMmPY+9PF6s3xiUHg4N6X67xnWvzb/X472+0nltHrx59ho3uA7ae33Zy9D2Io6kjbTvUTza3gjaho4n5XPsNJa1j0Md/+veCLrfpfW3rpcnD+0+LOvQQ5LXksi9UTzSupZ6NA4kn9q6H4XW1Oqx6upNa8695vAA3BsIyByWvQNtDwGZF+ppWa+XdXrruh+py5uP5ZnAdto4U2P9fP5a8uHXtKUuq29Z73vfkzmv6c9o8dCc0LYcq66R5avtr2j58Lrn7hPQMcYGT0sOt6TsByDvXbtkv7chf98n+/3Geu+iYXmQcax21r5JvDfZvJzm6AsLC97+hQQ9h3j4+NyB5MP71BzeuiQHmg/PY6kMp9qeWFjw9gM5DuT7nLGfmAv1SK7BURfPf2jweOf0s/KY/g6L53SJWv/H89+QsZ9Zn9rR66nlgtYlObx18ZyWyirl2J5jBdRa+tC+9LhyeLZK/3LOotaP+xCPlM+WBerxjP1ZeUiX2JyPFhvWnn7eODx07FoU11zPhn1HPbwfr3eOZ6msT7Xdk1gDta7TJe4r/ctnC9pnXfns9dTyoL45nprXUxfaJwiCIAiWzC/QuHYd"
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
      data = "eJzt1z9Lw0AYx/F4QUQ6qYNIJ/UlqLNWwUUFrXMH9ZWIr0B8NY7VwcGpOjg4qW/EO3JHzofkkjtQEvl+4EdD+uShvT9pmmXos735LNtuiKmps+XVmBx6x1XnTO1ORb9dUTexr6c2/jnXc1TTx9Qdi7g+8vykps+Rff8k8N1TaoG/tJ//zEHefM2crlEiY5HzFn2WdM2yyKXIVYs+67pmQ6RrHlSRRxV33UjMz4sq8hrZ50zMz6cq8hXZ50LMT9fErmWjaT23WctG03pus5aNPqxnN055wmebqnI/uHFaSegzU+V+cOO0mdDnQ5X7Af0y0PO9aOf8JmLur23tQl70GOqs2XN3EX1ube2q7eHv85Q+7v76H7gxftL76tlmkMfPmRubN339u80wYc7kGFfdm2PmDED3yWfomGdDn3yGjnk29IXuP0Cqqfc725TQ/9CZ/Y29z4uEjkP/Q906d/WhY9Y/AAAAAAAAAAAAAAAAAAAAAAAAAPyubx3UYCs="
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
      data = "eJztzLEKwjAUBdAu74ukCC6lOHSri+662/9fTUiGN6h0cpBz4JFw83KHgX9wiX3Zp79j3z2V81pm7XOLllWH+N5Z9+b+vpTznnYf0bJqSp3vLKmnepb7sc+W8il17nWONgAAAAAAAAAAAAAAAAAAAAAAAL/yAoFXCRI="
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
      data = "eJztzLcRgEAUQ8EfXTmYBJNg+m8K1cBFMLszL5SqAADgm4ZWNaYpze39z5Ltmra0d/wc2Z7pSnfHDwAAAAAAAAAAAAAAAAAAAPAvDy1NAuM="
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
      data = "eJzt0DEKgDAMBdAMuf/9bNWzmK1jLTgUeQ8+hJ9MiQAAAAAAgH31jDgrV+XO0R81t3y//7PZL1bvAAAAAAAAAAAAAAAAgG89XzgWtA=="
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
      data = "eJzt0DkKwDAMBEAV/v/TcpDzOVGXQArbnYsZWBDsVooAAAAAAIDXXCKWzFr+3VTa+yNzZq7M/dluee8d/ahqv2jZ1X7RuwMAAAAAAAAAAAAAAADG9AA1vCT3"
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
      data = "eJztzLcRgEAUQ8EfXUGYBJNg+m8J1cBFMLszL5SqAADgm4ZWNaYpze39z5Ltmra0d/wc2Z7pSnfHDwAAAAAAAAAAAAAAAAAAAPAvD1YhAxM="
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
      data = "eJztyqERACAMALHesf9STABMhGkdaBCJefMRAAAAAAAAAAAAAAAAAAAAAAC81Nu5Izuz6/JVAfjTBlx8Bxs="
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
      data = "eJzt1tsuQ0EUBuBtJw2eRF06xOGa8ACUB6hyWS2ibhyu8ATa5yE8AOEBnB7A6dY/aSdWV/e0M7VV1P8lfyLp6krNrJm9o6gun4miI6SQqf+9jxyoHIrPba32X/qUkS2Vbc8+O43PisimI6VMc61WFHWdhNQS/UWV+Ct7yBQyHbvrzwei6AIZRM2QSFWkhiwgi236XKPHDTKCmqxITmUFWW3T5x49HpBHlULcnHVko02fF3znFXlTSYvv+koTqJtEdsUe+a6vNIe6eeRM7JHv+kpLqFtW++O7vlIedWtqf9ISMstGp3n2XWufefZZa5959lnrn55ns0bDyCV6XgX01TNt1mgUuUWPu4A+eqbtOj0hzwF99EzbdXpHPgL66Jmm3rDnNWQW7ZmX5z3bxSzaMy/PuzyzvrOYdOblmfWdxaQz/1uSnl0Vdcf67FnSs6uq7lifPUt6duXi1nu2054lPbsKces9G3p/UG918z5myLk23y8jp4HvY4ad6+PG909S6pPW7yn16f/13T7mHqrF3b2HG657KOQ93HDdQyHv4dQ/xrDn4wH7PoPa2YR6O+e+XPPvmnNXXPPvmnNXOP9ERERERERERERERERERERERERERERERERERP/LJ3LC2Zo="
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
          gid = 1349,
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
          gid = 1337,
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
          gid = 1337,
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
          gid = 1349,
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
          gid = 1286,
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
          gid = 1286,
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
          gid = 1286,
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
          gid = 1286,
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
          gid = 1466,
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
          gid = 1469,
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
          gid = 1168,
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
          gid = 2147484816,
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
          gid = 1433,
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
          gid = 1463,
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
      visible = true,
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
          y = 88,
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
          y = 96,
          width = 176,
          height = 88,
          rotation = 0,
          visible = true,
          text = "Guess I'll be needing a new hunting party...\nBut that bounty on your head will buy a hunting army.",
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
      visible = true,
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
          y = 88,
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
          y = 96,
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
      visible = true,
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
          y = 88,
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
          y = 96,
          width = 176,
          height = 88,
          rotation = 0,
          visible = true,
          text = "We could have been friends.\nWe had so many nice things we could have shared with you!",
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
      visible = true,
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
          y = 88,
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
          y = 96,
          width = 176,
          height = 88,
          rotation = 0,
          visible = true,
          text = "Charity from a monster?\n\nGod forbid a man sink so low!",
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
      visible = true,
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
          y = 88,
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
          y = 96,
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
          gid = 1475,
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
          gid = 1475,
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
          gid = 1472,
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
          gid = 1475,
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
          gid = 1472,
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
          gid = 1475,
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
          gid = 1472,
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
          gid = 1475,
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
          gid = 1475,
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
          gid = 1472,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1552,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1552,
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
          gid = 1528,
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
          gid = 1528,
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
          gid = 1570,
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
          gid = 1570,
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
          gid = 1289,
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
          gid = 1289,
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
          gid = 1289,
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
          gid = 1289,
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
      data = "eJztzLEJgEAMBdCg+y/hBndi4TpOch5aBKt0Nu/BJ/BJEgEAAAAAUHctEdv6zJxp9hXt3usp55vc7YVf/XNzpOQeAAAAAAAAAAAAAAAAAP40ACjwE/o="
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
          gid = 1196,
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
          gid = 1274,
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
          gid = 1250,
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
          gid = 1262,
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
      data = "eJztykEKABAARFHlpm4kN3BSFqRsWLF5r2Yx9UMAAAAAAHgrx3NTLprUmzq6Gtem/QMAAAAAAAAAAAAAAADADw0QigVu"
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
      data = "eJztzsEJgEAMBMBgOrUftZLT3qxAxfPvoSDCDOxzN4kAAAAAAP5i7c68sfFk6+gNGTHWTNm+dd0ve3euWbLtrz7vBQAAAAAAAAAAAAAAAAC+tAG56hRr"
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
      data = "eJzt0TEKgDAQRcGQ64kXUPQAit6/NE0giEZi2hn43fKaDQEAAAAAeDPEEMbY35jTlo5Wbuxpx89W2chaW0+N1tZUadxba+Vm+2iUrbPzhwAAAAAAAAAAAAAAAADQ4wIECQyd"
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
          gid = 1506,
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
          gid = 1169,
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
          gid = 2147484817,
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
          gid = 2147484817,
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
          gid = 1169,
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
          gid = 1169,
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
          gid = 2147484817,
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
          gid = 1211,
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
          gid = 1140,
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
          gid = 1140,
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
          gid = 1140,
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
          gid = 1478,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
