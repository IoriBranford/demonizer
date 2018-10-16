return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.0",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 18,
  height = 100,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 36,
  nextobjectid = 349,
  properties = {
    ["cameraid"] = 1,
    ["music"] = "mus/05 - Twilight Express.vgz",
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
      name = "bushes",
      firstgid = 417,
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
      firstgid = 432,
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
      firstgid = 435,
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
      firstgid = 438,
      filename = "img/fire.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 5,
      image = "img/fire.png",
      imagewidth = 320,
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
      properties = {},
      terrains = {},
      tilecount = 5,
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
            }
          }
        }
      }
    },
    {
      name = "catapult",
      firstgid = 443,
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
      name = "black_harpy",
      firstgid = 467,
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
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["rowname0"] = "down",
        ["rowname1"] = "left",
        ["rowname2"] = "right",
        ["rowname3"] = "up"
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
                x = 16,
                y = 16,
                width = 32,
                height = 32,
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
      name = "devil_bug",
      firstgid = 479,
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
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["rowname0"] = "down",
        ["rowname1"] = "left",
        ["rowname2"] = "right",
        ["rowname3"] = "up"
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
                x = 4,
                y = 4,
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
      name = "ghost",
      firstgid = 491,
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
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["rowname0"] = "down",
        ["rowname1"] = "left",
        ["rowname2"] = "right",
        ["rowname3"] = "up"
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
                x = 4,
                y = 4,
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
      name = "goblin",
      firstgid = 503,
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
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["directionangle0"] = 90,
        ["numdirections"] = 4,
        ["rowname0"] = "down",
        ["rowname1"] = "left",
        ["rowname2"] = "right",
        ["rowname3"] = "up",
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
      firstgid = 515,
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
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["rowname0"] = "down",
        ["rowname1"] = "left",
        ["rowname2"] = "right",
        ["rowname3"] = "up"
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
                x = 16,
                y = 16,
                width = 32,
                height = 32,
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
      name = "holstaurus",
      firstgid = 527,
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
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["rowname0"] = "down",
        ["rowname1"] = "left",
        ["rowname2"] = "right",
        ["rowname3"] = "up"
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
      firstgid = 539,
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
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["rowname0"] = "down",
        ["rowname1"] = "left",
        ["rowname2"] = "right",
        ["rowname3"] = "up"
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
                x = 16,
                y = 16,
                width = 32,
                height = 32,
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
      name = "siren",
      firstgid = 551,
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
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["rowname0"] = "down",
        ["rowname1"] = "left",
        ["rowname2"] = "right",
        ["rowname3"] = "up"
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
                x = 16,
                y = 16,
                width = 32,
                height = 32,
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
      name = "werebat",
      firstgid = 563,
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
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["rowname0"] = "down",
        ["rowname1"] = "left",
        ["rowname2"] = "right",
        ["rowname3"] = "up"
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
                x = 16,
                y = 16,
                width = 32,
                height = 32,
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
      name = "weresheep",
      firstgid = 575,
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
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["rowname0"] = "down",
        ["rowname1"] = "left",
        ["rowname2"] = "right",
        ["rowname3"] = "up"
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
                x = 4,
                y = 4,
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
      name = "youko",
      firstgid = 587,
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
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["rowname0"] = "down",
        ["rowname1"] = "left",
        ["rowname2"] = "right",
        ["rowname3"] = "up"
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
                x = 4,
                y = 4,
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
      name = "Archer",
      firstgid = 599,
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
      firstgid = 623,
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
      firstgid = 635,
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
      firstgid = 659,
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
      firstgid = 683,
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
      firstgid = 695,
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
      firstgid = 719,
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
      firstgid = 743,
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
      firstgid = 767,
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
      firstgid = 775,
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
      firstgid = 803,
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
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["rowname0"] = "down",
        ["rowname1"] = "left",
        ["rowname2"] = "right",
        ["rowname3"] = "up"
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
                x = 16,
                y = 16,
                width = 32,
                height = 32,
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
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "dirt",
      x = 0,
      y = 0,
      width = 18,
      height = 100,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJyll1uugzAMRLP/XbAL+h9lXbeVsHQ4nUDotRS1POL4MR6b1rJs7zXe6/Ve/fjdjvVUPnv347f0/CJlz/iHjrJnQN+v0o+1/0PHduwfx2//QUf506GndD2xbceq+NR15dCS7C1bPu9vwb4x8cG6Sgdjw9zZ9i2cke7xvF33Cp+Fsdo/wx19LJtLb8de5ib5uuOdF67LlqF7Lyz60HEv2V/PBlbZyZro0F9+l860r87ZdD7f6dLLnJZ+xqfjerRzfhIv1Rkb9jp+jEfXuXs716Nz9mpnPPWgl9jfwzmOF/8T71s753y0MzYZT+eXNrH2rLPfnEEMlf3EQw/LuHe87QOxNdrZl1T3jHXVIs8wtlrIB/HmHkBbmbeS0b7xWjYlYUx4Topz4sUS2jrCfdffTBxj2nPF803vMh/kslR/M3+ISXOie4btbXhGrrYe1y910hbXS+0rIcewJowd989ZLjwT0R7POebNof+u24Zr1qC5lPHjvXq/te+YJR+ZR9cP9e86p+xhbM077iNp1vHcw/7DOcjPvZf1aEx5uR/SRvNTiTHKGDbFjjG2kPsTbzhGV9xCW1335uwrXnF9cP7ivdn8Z9/MmWmOuNJjjJWP7mV33E1Mp5ojzma6iHnPO6xl90zigph0H668ee5Ls1Gq3cT37r+pH9uWmXi+8FzMmfVK2DNY26xh87bFeE95ucNF2cI6S9zjmSXJLK6edRxD++QZwL2RmKVd7meMi7Hj/a9wZpqhU58yn5r7e9BhzkwYd62nWDPexFT6LpgJOYHv04fU25OYY8gtq7VResi9rok7O0rIRa191+qqcF8J87Tik7+tjJG7PFEPMcz+fzerUohV6vK3zooe9nBzWum7E/fENF+siOPsvraSd9aCv5E8i872s25sD7nRGGI8zVXmKfZNxs/zoudin+sZi3XD+PlMz8KeNTfd97zLfHedwZ5kXZ6DzVs9nEt8Ow/mduaGcWAumIfCt3upe4kx4DMtqee4x8/qftd/fy8xPsST64wY51zgvPXw7ErIXa4p1sedeHYiVrnuhNj1bM5auhP3cs9iT/uOfWMNr8psvpnhbiae9T0frgrrlfFe7aW0xzz1JOfUY67y7LAixDTz9MSn1s75Mb8+1eNe+nT2KT3MF/P2RPytRV58ag97I/2byR/exX51"
    },
    {
      type = "tilelayer",
      id = 2,
      name = "dirtdeco",
      x = 0,
      y = 0,
      width = 18,
      height = 100,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzNWFsOwyAM6/0vR4809aMSipIQxy7DP9uAJSbkBde1B/cmPf8Au7fbfLK4mzLf/w0zNqbvKA8Ww3yqda3krhDpZcc9XhFXT2Zmj+6eERtXdFh5dzDWheUQcRpGt1234uDND2e8shfV/jP7I3ZBuah9qxIXFR7DGavaNuPmnfOKCzqfcWDzlycLkdnNM0reK1TiN4rhjq6qX+20wQNVf+HFUvV/Myo+jcTOzMvm8jdO5/lZP6ITXRchOw/Ej1TY7Y8ZlL6ajbN6Zv9C7Yestz35Ffyu9MlIj7Gqv0ztQtet8gd6pkx9yvqLjo28Nci5doDcJ6pg77KZn9t5BhVfQXVF94cuFOevfltQQnWfUOSgU2qf8pyYPn72G/YOrtgT+p5SQfbG0rnze/OZXTtgc6LtgytcmDzExKbyLShCVqvVeTzrX9C3tS/uHmr7qmrPKbn5wVd9TVcWK/OUvsCrM8wbwyn7eqDipO4vK/gBUE+v7A=="
    },
    {
      type = "tilelayer",
      id = 3,
      name = "grass",
      x = 0,
      y = 0,
      width = 18,
      height = 100,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJzlmUFv2zAMhXVLcy58bnpee052bnuN7Wvs/P+/MQvgB78wlGynGzZgAoQ2tvREUuQjJV9SSqepd1Nvp95P/TL1l6m/p9v2Y+qvNu489aub09vzVsbkZz8DjM7mDLZ+L3itve9Ets7hHO3dYPMGwevs2WjPTva7t/fgIEtvYxjfut+6xknWAKexZ4PpzLyzjevlnWLn/3dT/zKcj6nvxbaj/VVdRsHB3oqRdXo3rCfDO9k49oP9wr7o9+zsovZGtqtgIJ/a5Szz8pxPkU2xsWsr//P7angqz5t1fPIY6IPfnEUWbMO6Q7r1yUbG48Ntmvf44mxzTPN+5HHESSO2OaV5/9t0u++6LutdRE71AeyKbbF55DOjsxmyYlPed2Jr3V+wPtP9nvF8n2ZfIU53buyahsyDzffrbcX6zvz/pXkuf6TlGHpeeL9mnez7UX5Z+56W/burjMX/a1ia08A6uPHg5DiN9FcM4rwNxpOz+gKO5jSw4HuNVfJNlFvf0sxzylPkQZ9D4Tv/fExxDsrjfcyD4/GJc95pDox4A5wxxdwEz9FL3INf5PUiO6tcXvfc1I7sw0u6zT80eLzEp+RfcsM53dsJHHg18ld47kn+5u71J5+x32viyDf1Z3j/Esi8BmNncqLDfiNOk+J9/gie1ZofX7OJ1huHytg8LuIL3lHnXtN9/cqYg43LexXpSaxTE/bpfk/zGOI8d+/zKgv1SGdzPD9p3epxiCvihlj1ummteA30btJci6ATNZdfE91KfEHdBz8jXykWIz5oRBZqrlptk9ctxSjxTs1f4iCtR2scRW0Y1Ti6r7U8WKuRfF1M3tjCG2BQs+peRPxaanApOY/9qNkxauQvrcHx1y31Kn6KnyNblJ9qTeNBz7ZbOVWxsgzY5ZEaHKxaLvmbDe6Ncu5Sg7/zfM69tfgotbz/ynFal63F0vjiDIZvI5s/55ZyCbKABXd6niWOonsXYhM/VJ6iRlMcn2/gY+xBzHt5dH09M4OlNRhxzrmfuPU5kTnUFF+Cjy3B0nuEqN6iHtAzC/Gu9iHmo/pW/UzvS5AHrqAe477C52juaohFva9AJ2x6kd/+XBA15TBk0nuqUs0Q4ZAjybd6vvD3UKXm63juwq7pfl+XGljkamz4HS78lzjwT7TfdQ/wyLnCY8BHpbPVWgxq2VLttwYDbtU7zq3nFL2zA3NLLeXvEZRDOEOsqYHgbbhD71r5vRZH7+jhDf1esISj+wwXo4/e1y7ZiDsYrVP5H73QubZvR5mHDvrdgPubNTjKxf6enppjqW7VXKHfUuBpzY9L8pzSLb+r/0R32VHTsxn8jD74N98NSvKw53p3pDU0cpIXS/KgExidzCHWNV+X5CF36bchrTXQlT2o4eBv+p0KGfFD1qnphd9pjaF21lqhJI/6cptuzzvIpbKWYqyR+czFZ34BbVIJSA=="
    },
    {
      type = "tilelayer",
      id = 4,
      name = "grassdeco",
      x = 0,
      y = 0,
      width = 18,
      height = 100,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztmFsKxCAMRe3mBXUWPQjKSDExxlRjx/NZanrzLhpjzOcyS3HI9zFt2DmqDYgAnKF+E8NPjjfkS0RKi0RcnrT3D+wYM4n6Wz2/Dv1gM2l3MN9atfrkbqjZjs8k+ifa4e7x+3uz9+NbsQNxvOeLUyNS+2jnerCpnrFcOEIP5v6C3qPMU5t0hGQHOwPlzqdz4fr5BuWnNQdt0pF7nrMTSn9yjDh155IeV2ji4os470bWrKHntGrQoOv88+6J5rxpmFdlb2F6qFqx/VRD4r5JGxrmFYTmfjgcOLyxpkufuPOE+28+Gw17kIPUnPeEXI/EqKcGWr00okOqT1fWNHav0FsPNVtfN2E7Ng=="
    },
    {
      type = "objectgroup",
      id = 5,
      name = "unused",
      visible = false,
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
          gid = 626,
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
          gid = 445,
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
          gid = 626,
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
          gid = 445,
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
          gid = 725,
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
          gid = 725,
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
          gid = 665,
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
          gid = 665,
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
          gid = 626,
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
          gid = 445,
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
          gid = 665,
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
          gid = 665,
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
          gid = 665,
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
          gid = 433,
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
          gid = 433,
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
          gid = 433,
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
          gid = 433,
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
          gid = 767,
          visible = true,
          properties = {}
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
          x = -40,
          y = 744,
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
            { x = 0, y = 0 },
            { x = 0, y = -60 },
            { x = 0, y = -120 }
          },
          properties = {}
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
          type = "PrincessNormalAttack",
          shape = "rectangle",
          x = 144,
          y = -16,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 689,
          visible = true,
          properties = {}
        },
        {
          id = 160,
          name = "",
          type = "",
          shape = "polygon",
          x = 60,
          y = 124,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = -8, y = -8 },
            { x = 44, y = -76 },
            { x = 140, y = -72 },
            { x = 168, y = 12 },
            { x = 76, y = 36 }
          },
          properties = {}
        },
        {
          id = 166,
          name = "",
          type = "",
          shape = "polyline",
          x = 104,
          y = 48,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 124, y = 88 }
          },
          properties = {}
        },
        {
          id = 167,
          name = "",
          type = "",
          shape = "polyline",
          x = 200,
          y = 52,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -148, y = 64 }
          },
          properties = {}
        },
        {
          id = 168,
          name = "",
          type = "",
          shape = "polyline",
          x = 228,
          y = 136,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -176, y = -20 }
          },
          properties = {}
        },
        {
          id = 347,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = -16,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground",
            ["cleartowin"] = true,
            ["musicfile"] = "mus/03 - Mighty Gals 2.vgz"
          }
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
      properties = {},
      objects = {
        {
          id = 152,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 120,
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
      id = 10,
      name = "bosscover",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 154,
          name = "talltree",
          type = "",
          shape = "rectangle",
          x = 60,
          y = 144,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 155,
          name = "talltree",
          type = "",
          shape = "rectangle",
          x = 100,
          y = 72,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 156,
          name = "talltree",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 80,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 157,
          name = "talltree",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 184,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 158,
          name = "talltree",
          type = "",
          shape = "rectangle",
          x = 228,
          y = 152,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 191,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 240,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 291,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 128,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 292,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 88,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 293,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 48,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 294,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 24,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 295,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 56,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 296,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 24,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 297,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 32,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 298,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 56,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 299,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 88,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 300,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 96,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 301,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 136,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 302,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 430,
          visible = true,
          properties = {}
        },
        {
          id = 303,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 136,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 424,
          visible = true,
          properties = {}
        },
        {
          id = 304,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 184,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 427,
          visible = true,
          properties = {}
        },
        {
          id = 308,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 208,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 418,
          visible = true,
          properties = {}
        },
        {
          id = 309,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 56,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 310,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 88,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 311,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 128,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 312,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 40,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 313,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 96,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 314,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 80,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 418,
          visible = true,
          properties = {}
        },
        {
          id = 315,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 88,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 424,
          visible = true,
          properties = {}
        },
        {
          id = 320,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 216,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 321,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 184,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 322,
          name = "bush",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 240,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 418,
          visible = true,
          properties = {}
        },
        {
          id = 323,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 192,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 324,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 176,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 326,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 216,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 327,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 216,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 421,
          visible = true,
          properties = {}
        },
        {
          id = 328,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 232,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 329,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 184,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 330,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 184,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 331,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 176,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 332,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 224,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
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
          type = "Pikeman",
          shape = "rectangle",
          x = 336,
          y = 240,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 196,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 192,
          y = 240,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 197,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -48,
          y = 240,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 198,
          name = "pikemanleader",
          type = "Pikeman",
          shape = "rectangle",
          x = 96,
          y = 240,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 200,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 192,
          y = 200,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 201,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -80,
          y = 208,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 202,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 368,
          y = 208,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 203,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 96,
          y = 200,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 205,
          name = "path",
          type = "",
          shape = "polyline",
          x = 232,
          y = 104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -40, y = 144 },
            { x = -40, y = 544 }
          },
          properties = {}
        },
        {
          id = 206,
          name = "path",
          type = "",
          shape = "polyline",
          x = 40,
          y = 104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 56, y = 144 },
            { x = 56, y = 544 }
          },
          properties = {}
        },
        {
          id = 215,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 256,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 318,
          name = "path",
          type = "",
          shape = "polyline",
          x = 32,
          y = 152,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -80, y = 88 },
            { x = 64, y = 232 },
            { x = 64, y = 552 }
          },
          properties = {}
        },
        {
          id = 319,
          name = "path",
          type = "",
          shape = "polyline",
          x = 136,
          y = 152,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 200, y = 88 },
            { x = 56, y = 232 },
            { x = 56, y = 552 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 12,
      name = "catapults3",
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
          id = 208,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 168,
          y = 336,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 445,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["offscreenshot"] = false
          }
        },
        {
          id = 209,
          name = "operator",
          type = "CatapultOperator",
          shape = "rectangle",
          x = 168,
          y = 304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {
            ["rideid"] = 208
          }
        },
        {
          id = 210,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 120,
          y = 336,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 445,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["offscreenshot"] = false
          }
        },
        {
          id = 211,
          name = "operator",
          type = "CatapultOperator",
          shape = "rectangle",
          x = 120,
          y = 304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {
            ["rideid"] = 210
          }
        },
        {
          id = 212,
          name = "path",
          type = "",
          shape = "polyline",
          x = 72,
          y = 224,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 48, y = 112 },
            { x = 48, y = 160 }
          },
          properties = {}
        },
        {
          id = 213,
          name = "path",
          type = "",
          shape = "polyline",
          x = 248,
          y = 224,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -80, y = 112 },
            { x = -80, y = 160 }
          },
          properties = {}
        },
        {
          id = 214,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 352,
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
          y = 384,
          width = 288,
          height = 112,
          rotation = 0,
          visible = false,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 57,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 144,
          y = 512,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 605,
          visible = true,
          properties = {
            ["pathmode"] = "relative",
            ["pathspeedfunction"] = "abscos"
          }
        },
        {
          id = 58,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 256,
          y = 416,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 605,
          visible = true,
          properties = {
            ["pathmode"] = "relative",
            ["pathspeedfunction"] = "abscos"
          }
        },
        {
          id = 56,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 44,
          y = 440,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 605,
          visible = true,
          properties = {
            ["pathmode"] = "relative",
            ["pathspeedfunction"] = "abscos"
          }
        },
        {
          id = 54,
          name = "path",
          type = "",
          shape = "polyline",
          x = 44,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -12, y = 8 },
            { x = 68, y = 88 },
            { x = 132, y = 88 },
            { x = 212, y = -8 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 84,
          name = "operator",
          type = "CatapultOperator",
          shape = "rectangle",
          x = 48,
          y = 400,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {
            ["rideid"] = 80
          }
        },
        {
          id = 80,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 64,
          y = 420,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 444,
          visible = true,
          properties = {
            ["faceangle"] = 45,
            ["offscreenshot"] = true,
            ["pathid"] = ""
          }
        },
        {
          id = 85,
          name = "operator",
          type = "CatapultOperator",
          shape = "rectangle",
          x = 240,
          y = 400,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {
            ["rideid"] = 81
          }
        },
        {
          id = 81,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 224,
          y = 420,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 446,
          visible = true,
          properties = {
            ["faceangle"] = 135,
            ["offscreenshot"] = true,
            ["pathid"] = ""
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 14,
      name = "deco3",
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
          x = 0,
          y = 384,
          width = 288,
          height = 176,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 45,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 544,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 95,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 488,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 94,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 464,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 49,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 448,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 283,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 496,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 284,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 432,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 285,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 440,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 286,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 528,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 287,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 496,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 288,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 448,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 289,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 512,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 290,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 480,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 306,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 424,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 418,
          visible = true,
          properties = {}
        },
        {
          id = 305,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 432,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 418,
          visible = true,
          properties = {}
        },
        {
          id = 307,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 408,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 427,
          visible = true,
          properties = {}
        },
        {
          id = 335,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 536,
          width = 64,
          height = 48,
          rotation = 0,
          gid = 768,
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
          y = 536,
          width = 64,
          height = 48,
          rotation = 0,
          gid = 767,
          visible = true,
          properties = {
            ["iscover"] = true
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 15,
      name = "swordsmen4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 129,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 560,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 142,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 304,
          y = 560,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 725,
          visible = true,
          properties = {}
        },
        {
          id = 141,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = -16,
          y = 560,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 725,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 16,
      name = "pikemencatapult",
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
          y = 624,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 188,
          name = "path",
          type = "",
          shape = "polyline",
          x = 160,
          y = 584,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 16 },
            { x = -16, y = 128 }
          },
          properties = {}
        },
        {
          id = 128,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 144,
          y = 608,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 445,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["offscreenshot"] = true
          }
        },
        {
          id = 130,
          name = "operator",
          type = "CatapultOperator",
          shape = "rectangle",
          x = 144,
          y = 576,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {
            ["rideid"] = 128
          }
        },
        {
          id = 20,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 216,
          y = 576,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 72,
          y = 576,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 125,
          name = "pikemanleader",
          type = "Pikeman",
          shape = "rectangle",
          x = 216,
          y = 608,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 123,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 216,
          y = 544,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 122,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 72,
          y = 544,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 120,
          name = "pikemanleader",
          type = "Pikeman",
          shape = "rectangle",
          x = 72,
          y = 608,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 118,
          name = "path",
          type = "",
          shape = "polyline",
          x = 216,
          y = 512,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 96 },
            { x = 0, y = 512 }
          },
          properties = {}
        },
        {
          id = 117,
          name = "path",
          type = "",
          shape = "polyline",
          x = 72,
          y = 512,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 96 },
            { x = 0, y = 512 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 17,
      name = "swordsmen3",
      visible = false,
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
          y = 760,
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
      id = 18,
      name = "swordsmen2",
      visible = false,
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
          y = 776,
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
          y = 752,
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
          x = 128,
          y = 752,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 503,
          visible = true,
          properties = {
            ["emotetileid"] = "help",
            ["emotetileset"] = "emotes",
            ["fleeing"] = true,
            ["health"] = 5,
            ["pathfinder"] = "linearDown"
          }
        },
        {
          id = 341,
          name = "",
          type = "",
          shape = "polyline",
          x = 128,
          y = 752,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 112 },
            { x = -8, y = 128 },
            { x = 8, y = 144 },
            { x = 0, y = 160 },
            { x = 0, y = 256 }
          },
          properties = {}
        },
        {
          id = 109,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 0,
          y = 904,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 725,
          visible = true,
          properties = {
            ["firetargetid"] = "340",
            ["pathid"] = "340"
          }
        },
        {
          id = 114,
          name = "swordswoman",
          type = "Swordsman",
          shape = "rectangle",
          x = 144,
          y = 688,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 701,
          visible = true,
          properties = {
            ["defeatitem"] = "ItemWingman",
            ["firetargetid"] = "345",
            ["pathid"] = "345"
          }
        },
        {
          id = 339,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 288,
          y = 888,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 725,
          visible = true,
          properties = {
            ["firetargetid"] = "345",
            ["pathid"] = "345"
          }
        },
        {
          id = 103,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 64,
          y = 744,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 725,
          visible = true,
          properties = {
            ["firetargetid"] = "340",
            ["pathid"] = "340"
          }
        },
        {
          id = 104,
          name = "swordsman",
          type = "Swordsman",
          shape = "rectangle",
          x = 248,
          y = 720,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 725,
          visible = true,
          properties = {
            ["firetargetid"] = "345",
            ["pathid"] = "345"
          }
        },
        {
          id = 344,
          name = "",
          type = "",
          shape = "polyline",
          x = 160,
          y = 752,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -16 },
            { x = 0, y = 112 },
            { x = -8, y = 128 },
            { x = 8, y = 144 },
            { x = 0, y = 160 },
            { x = 0, y = 256 }
          },
          properties = {}
        },
        {
          id = 345,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 736,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 527,
          visible = true,
          properties = {
            ["emotetileid"] = "help",
            ["emotetileset"] = "emotes",
            ["fleeing"] = true,
            ["health"] = 8,
            ["pathfinder"] = "linearDown"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 20,
      name = "catapults2",
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
          id = 76,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 880,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 77,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 96,
          y = 864,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 445,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["offscreenshot"] = true,
            ["pathspeed"] = 120
          }
        },
        {
          id = 78,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 192,
          y = 864,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 445,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["offscreenshot"] = true,
            ["pathspeed"] = 120
          }
        },
        {
          id = 89,
          name = "operator",
          type = "CatapultOperator",
          shape = "rectangle",
          x = 96,
          y = 832,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {
            ["rideid"] = 77
          }
        },
        {
          id = 90,
          name = "operator",
          type = "CatapultOperator",
          shape = "rectangle",
          x = 192,
          y = 832,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {
            ["rideid"] = 78
          }
        },
        {
          id = 91,
          name = "path",
          type = "",
          shape = "polyline",
          x = 112,
          y = 848,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 16 },
            { x = -16, y = 80 }
          },
          properties = {}
        },
        {
          id = 92,
          name = "path",
          type = "",
          shape = "polyline",
          x = 208,
          y = 848,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 16 },
            { x = -16, y = 80 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 21,
      name = "catapults1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 79,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 944,
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
      id = 22,
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
          id = 55,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 960,
          width = 288,
          height = 96,
          rotation = 0,
          visible = false,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 146,
          name = "path",
          type = "",
          shape = "polyline",
          x = 48,
          y = 992,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 16, y = 0 },
            { x = 96, y = 32 },
            { x = 176, y = 16 }
          },
          properties = {}
        },
        {
          id = 147,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 64,
          y = 992,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 605,
          visible = true,
          properties = {
            ["pathmode"] = "relative",
            ["pathspeedfunction"] = "abscos"
          }
        },
        {
          id = 149,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 224,
          y = 1008,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 605,
          visible = true,
          properties = {
            ["pathmode"] = "relative",
            ["pathspeedfunction"] = "abscos"
          }
        },
        {
          id = 189,
          name = "archerf",
          type = "Archer",
          shape = "rectangle",
          x = 144,
          y = 1008,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 749,
          visible = true,
          properties = {
            ["defeatitem"] = "ItemWingman",
            ["pathmode"] = "relative",
            ["pathspeedfunction"] = "abscos"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 23,
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
          id = 50,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 48,
          y = 1104,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 605,
          visible = true,
          properties = {
            ["pathmode"] = "relative",
            ["pathspeedfunction"] = "abscos"
          }
        },
        {
          id = 51,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 248,
          y = 1096,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 605,
          visible = true,
          properties = {
            ["pathmode"] = "relative",
            ["pathspeedfunction"] = "abscos"
          }
        },
        {
          id = 52,
          name = "path",
          type = "",
          shape = "polyline",
          x = 96,
          y = 1096,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -48, y = 8 },
            { x = 52, y = -8 },
            { x = 152, y = 8 }
          },
          properties = {}
        },
        {
          id = 53,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1056,
          width = 288,
          height = 80,
          rotation = 0,
          visible = false,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 148,
          name = "archer",
          type = "Archer",
          shape = "rectangle",
          x = 148,
          y = 1072,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 605,
          visible = true,
          properties = {
            ["pathmode"] = "relative",
            ["pathspeedfunction"] = "abscos"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 24,
      name = "deco2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 47,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1120,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 145,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1024,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 144,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1008,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 48,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1120,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 185,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 1152,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 186,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1152,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 225,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 928,
          width = 288,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 227,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 1040,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 228,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 1088,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 229,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1088,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 230,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1008,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 231,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1024,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 232,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 992,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 233,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1056,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 234,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 1040,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 235,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 1136,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 236,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 1072,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 237,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1152,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 238,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 992,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 239,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 976,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 240,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 1048,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 430,
          visible = true,
          properties = {}
        },
        {
          id = 241,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 1160,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 430,
          visible = true,
          properties = {}
        },
        {
          id = 253,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 1144,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 418,
          visible = true,
          properties = {}
        },
        {
          id = 254,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 1048,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 424,
          visible = true,
          properties = {}
        },
        {
          id = 255,
          name = "",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 1016,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 430,
          visible = true,
          properties = {}
        },
        {
          id = 256,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1072,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 430,
          visible = true,
          properties = {}
        },
        {
          id = 257,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 1040,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 421,
          visible = true,
          properties = {}
        },
        {
          id = 279,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 1008,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 278,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 264,
          y = 1152,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 277,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 264,
          y = 1024,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 276,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 1136,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 275,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 1064,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 274,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 992,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 273,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 976,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 272,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 1104,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 271,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 1152,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 270,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 1072,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 334,
          name = "rock",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 1096,
          width = 64,
          height = 48,
          rotation = 0,
          gid = 767,
          visible = true,
          properties = {
            ["iscover"] = true
          }
        },
        {
          id = 143,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1040,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 25,
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
          id = 25,
          name = "pathfront",
          type = "",
          shape = "polyline",
          x = 104,
          y = 1056,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 48, y = 96 },
            { x = 48, y = 544 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 26,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 328,
          y = 1200,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 152,
          y = 1072,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 288,
          y = 1200,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 152,
          y = 1152,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 42,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1152,
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
          type = "Pikeman",
          shape = "rectangle",
          x = 152,
          y = 1112,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 368,
          y = 1200,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 317,
          name = "pathside",
          type = "",
          shape = "polyline",
          x = 240,
          y = 1104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 48, y = 96 },
            { x = -48, y = 136 },
            { x = -48, y = 496 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "objectgroup",
      id = 26,
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
          id = 5,
          name = "pathside",
          type = "",
          shape = "polyline",
          x = 56,
          y = 1216,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -56, y = 16 },
            { x = 40, y = 56 },
            { x = 40, y = 416 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 6,
          name = "leader",
          type = "Pikeman",
          shape = "rectangle",
          x = -40,
          y = 1232,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 0,
          y = 1232,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 41,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1184,
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
          type = "Pikeman",
          shape = "rectangle",
          x = -80,
          y = 1232,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "leader",
          type = "Pikeman",
          shape = "rectangle",
          x = 136,
          y = 1144,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "pathfront",
          type = "",
          shape = "polyline",
          x = 216,
          y = 1384,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -80, y = -200 },
            { x = -80, y = 248 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 22,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 136,
          y = 1184,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
        },
        {
          id = 33,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 136,
          y = 1104,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {}
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
          id = 35,
          name = "path",
          type = "",
          shape = "polyline",
          x = 144,
          y = 1232,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -16 },
            { x = 0, y = 368 }
          },
          properties = {}
        },
        {
          id = 36,
          name = "leader",
          type = "Pikeman",
          shape = "rectangle",
          x = 112,
          y = 1216,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 37,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 176,
          y = 1216,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
          visible = true,
          properties = {
            ["pathmode"] = "relative"
          }
        },
        {
          id = 38,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 144,
          y = 1216,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 665,
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
          y = 1216,
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
      id = 28,
      name = "deco1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 171,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1520,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 172,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1592,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 173,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 1472,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 174,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1520,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 175,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1344,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 176,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 1616,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 177,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1376,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 178,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 1504,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 179,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1360,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 180,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1504,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 181,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1616,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 182,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 1552,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 183,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 1600,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 184,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 1312,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 187,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1248,
          width = 288,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
        },
        {
          id = 217,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 1568,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 216,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 1408,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 218,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1440,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 219,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1560,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 220,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1456,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 221,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1408,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 222,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1312,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 433,
          visible = true,
          properties = {}
        },
        {
          id = 223,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 1392,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 224,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 1440,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 436,
          visible = true,
          properties = {}
        },
        {
          id = 242,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1552,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 430,
          visible = true,
          properties = {}
        },
        {
          id = 243,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1560,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 430,
          visible = true,
          properties = {}
        },
        {
          id = 244,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 1496,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 430,
          visible = true,
          properties = {}
        },
        {
          id = 245,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 1448,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 430,
          visible = true,
          properties = {}
        },
        {
          id = 246,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 1512,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 427,
          visible = true,
          properties = {}
        },
        {
          id = 247,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1408,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 427,
          visible = true,
          properties = {}
        },
        {
          id = 248,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1464,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 427,
          visible = true,
          properties = {}
        },
        {
          id = 249,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 1584,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 427,
          visible = true,
          properties = {}
        },
        {
          id = 250,
          name = "",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 1432,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 430,
          visible = true,
          properties = {}
        },
        {
          id = 251,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1344,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 427,
          visible = true,
          properties = {}
        },
        {
          id = 252,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1328,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 430,
          visible = true,
          properties = {}
        },
        {
          id = 258,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1520,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 424,
          visible = true,
          properties = {}
        },
        {
          id = 259,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1472,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 424,
          visible = true,
          properties = {}
        },
        {
          id = 260,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1392,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 424,
          visible = true,
          properties = {}
        },
        {
          id = 261,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 1320,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 262,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 1360,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 263,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1376,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 264,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1312,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 265,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 1416,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 266,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 1448,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 267,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 1552,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 268,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1520,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 269,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 1568,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 280,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1448,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 281,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 1504,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        },
        {
          id = 282,
          name = "fire",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 1392,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 438,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 29,
      name = "friends",
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
          type = "Friend",
          shape = "rectangle",
          x = 176,
          y = 1232,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 467,
          visible = true,
          properties = {
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 300
          }
        },
        {
          id = 61,
          name = "",
          type = "Friend",
          shape = "rectangle",
          x = 128,
          y = 1152,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 479,
          visible = true,
          properties = {
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 240
          }
        },
        {
          id = 62,
          name = "",
          type = "Friend",
          shape = "rectangle",
          x = 160,
          y = 1168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 491,
          visible = true,
          properties = {
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 240
          }
        },
        {
          id = 63,
          name = "",
          type = "Friend",
          shape = "rectangle",
          x = 184,
          y = 1144,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 803,
          visible = true,
          properties = {
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 240
          }
        },
        {
          id = 64,
          name = "",
          type = "Friend",
          shape = "rectangle",
          x = 184,
          y = 1192,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 515,
          visible = true,
          properties = {
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 300
          }
        },
        {
          id = 65,
          name = "",
          type = "Friend",
          shape = "rectangle",
          x = 96,
          y = 1168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 527,
          visible = true,
          properties = {
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 240
          }
        },
        {
          id = 66,
          name = "",
          type = "Friend",
          shape = "rectangle",
          x = 112,
          y = 1232,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 539,
          visible = true,
          properties = {
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 300
          }
        },
        {
          id = 69,
          name = "",
          type = "Friend",
          shape = "rectangle",
          x = 96,
          y = 1200,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 551,
          visible = true,
          properties = {
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 300
          }
        },
        {
          id = 70,
          name = "",
          type = "Friend",
          shape = "rectangle",
          x = 144,
          y = 1216,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 563,
          visible = true,
          properties = {
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 300
          }
        },
        {
          id = 71,
          name = "",
          type = "Friend",
          shape = "rectangle",
          x = 112,
          y = 1184,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 575,
          visible = true,
          properties = {
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 240
          }
        },
        {
          id = 72,
          name = "",
          type = "Friend",
          shape = "rectangle",
          x = 176,
          y = 1200,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 587,
          visible = true,
          properties = {
            ["pathfinder"] = "linearDown",
            ["pathmode"] = "relative",
            ["pathspeed"] = 240
          }
        },
        {
          id = 73,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1264,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground",
            ["soundfile"] = "snd/scream.ogg"
          }
        },
        {
          id = 74,
          name = "path",
          type = "",
          shape = "polyline",
          x = 0,
          y = 1232,
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
          y = 1280,
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
          y = 1632,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 775,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
