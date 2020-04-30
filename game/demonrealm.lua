return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.3",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 18,
  height = 170,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 768,
  nextobjectid = 572,
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
      imageheight = 384,
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
      tilecount = 15,
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
                x = 16,
                y = 56,
                width = 60,
                height = 60,
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
                y = 72,
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
        },
        {
          id = 10,
          type = "FireExtinguished_Ground",
          properties = {
            ["name"] = "ground_extinguished"
          },
          animation = {
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
            }
          }
        },
        {
          id = 11,
          type = "FireExtinguished_Ground"
        },
        {
          id = 12,
          type = "FireExtinguished_Ground"
        },
        {
          id = 13,
          type = "FireExtinguished_Ground"
        },
        {
          id = 14,
          type = "FireExtinguished_Ground"
        }
      }
    },
    {
      name = "catapult",
      firstgid = 485,
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
      firstgid = 509,
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
      firstgid = 521,
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
      firstgid = 533,
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
      firstgid = 545,
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
      firstgid = 557,
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
      firstgid = 569,
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
      firstgid = 581,
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
      firstgid = 593,
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
      firstgid = 605,
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
      firstgid = 617,
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
      firstgid = 629,
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
      firstgid = 641,
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
      firstgid = 665,
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
      firstgid = 677,
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
      firstgid = 701,
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
      firstgid = 725,
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
      firstgid = 737,
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
      firstgid = 761,
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
      firstgid = 785,
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
      firstgid = 809,
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
      firstgid = 817,
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
      name = "arachne",
      firstgid = 845,
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
      firstgid = 857,
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
      firstgid = 869,
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
      firstgid = 881,
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
      firstgid = 893,
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
      data = "eAGd1NFtXEEMQ1H330W6SP6DVOCC4gv4AITwdoHkYyANRVKct04+Pz4+fn6dH1/n93df/fV9D6/HqTb/810/v2rzqnO90sSPR1d/dc143JoHH7Ucnct98kmDXz7vkqPafDPF4b1avObtkq27bKvFyQunyoe+3TsPD6umjc83z/p9qzud7HnwhtHhVsP2ne750sfr8Amvj2tPcz4w2bxhPdLzqW8Wnwe/doTLsxoecer32Flt3smT73Lr8RaXR4b18caw1dx8vOVZfn14mur6tHvv/9uvr++4XmG+y2aLI9vy43R4peVRTUPnXeH1/Gm7h7vzcjdTd3e9PfHThtXzlaUathyaZtvjrPf2ZeHH8+beDGZ8vaW73WFOeH3eHbvNZY3HQ45mHdy0HdxwWD0+/fo1p5MjLW6Vh2o3XTgffHmqzVSaaj727E69Pd3x691VPnl1wvXpFqN/wvJZL/5xvQEnX3vUZuF2+iZ2VmHVjhxpYPDNwpOHGtds++Z5yx4HZpd/+2b0uz+NHLsHN8z/G3FxquniwWHeLJ8dVV5qGnpe3evXX8+bvkpPV40vq/vTt+ITv3mV1nvcZeJDE4+PDHJW10eWvPjwbXZ9zPh1d+Syoz128WnWkbUqQzj/Kq03hPExq65n3PVpLh8u77za3z1N2t0Vv3uczenOL588aOnC5LWLj51VfnF4quXSr18ae7y/evfZE9+udHiwsqePd33i2uF74PPpnq89vMxVmavt5meHez71dCp/NU7nvkkWlV6lqeYV72aWgYe8afhU09HHqXfH42UfL/NqGK94e8drbnZ3dMejrbY7XWfn8c3j7Kz7Zm5nfDUvnHBecPvyb8YrXP5me5rJw8c+O7p38otjrxpuZ3PHfvu6y0VT1fPYb4JfLYNZdxhdVfY85d45fTUcT46q/N5azUtNxwdHTvvvHL6Z0uK1N19Zm4U117dje5r1ib/fpX122L017b4Hlw8vWcLTdMz06xOGG04Dt8fM26pmVfnxXr05bpz01c766HHkgW9tRycv+3aeBw7ezvV47ar3FvPufHAvJ20Y/d0Xzr+8PH0Hu9Lhent3b0zX4eWerj4fet6y8AuvXzwsfRhePh0Y/t5xefJNJ2ez9Q/nXU3TnH9zh46v3fbGo7WzGq/Z6mB4e5cjLD+e3dcjnjmf9vCyMw0PGhyzavwOrzTusjRb7vrwCsOppqGvdvrbyLsdOJvNu/Dtjcvb36mc4fHzrdpbH2f9+cXlU7V3M9WH81mOXep6yVPtxLFXHjnpcdeHJi5+etzmnc3HL8zeNPXp4stQj1/Vm+/dO+So2gvDkS+9nfy755/GvHunGRzWnV9936fa3PurOHT2mKXpdOfzSlOueHnVx48rb7OO38ps57RhPGTejHzC8luPZpuxu3mZ+OHRV+3AxwmH6avtydO3iZ/P1e23yIcmXnde9PnmE888Dj59PHnwwurpqzB8Va71sMM++moHztNeOvfmsCq9anazlMmOaidPvvTVPHBo5ILT7R5+eYT7DjJVF8+rO8zdjnx4vuLtu+LGS69vXi9L83J0lwvmvvq04TQ7y6MThqOa0W2G+B17m/HAky8cVk2zur7R7sKBxa2n0e/+MuYTRhe2mczy0ber3g5ZzPOKIxPuYvX3G8kSH7d+73J6l7w43pRXJ95md5etutr6OOHy0Ifl765Xw/VqWD5pyy5Xc8fO5mHd6XFWt98333aE2R/G04xvPquPx4O+Gi4HLVyW1S4WzuvJIz/8eO3vhD1lXy/Z8whfn3bZTYMP717vzd03D498683jx6PPH7cZv80U3y4VT+XHw7u6pymHt9BU4/GnyQs3jPdmMm9GB3Nvr7mdcTrd7aEL874wv4naLHw57XLS28Pb/t3JryqH3fzT7b769vDdneuXvhmsXt608uirzatpq7TVsKp3qeH69Dy2yhK2mexMX1910sSvdnB5VeWzi5Yfjb28ePgmVf1y+efTnF+1HXT28vC93PHydszSwvh23/fF2cybK5yOp5pPM/zuzdbvyTdenHTxcdanead5O+KkswNXjWuWJlzutKuP17057vrwinNxmdLl0z2fuytdM3w+spgt7q38Nlu6e5c/r+beD+8u12rvTjrvyY/WLH04bx7hsjXvjqM2l7G+08w8Dd3i13c92r957V7vnefvLXGd3SdHHnGrnd0rM+9ypIv3pE8bF18Nl2kxu/OVcX3t52uvu/dUZWsWD1evtp9vu/DDeeBU01XtdN+czbo3y6PTjvBOfbP6Km21WacdnTC89ZLhavHhtPDNpJdBjZv/5pCrmV4eFV5tr5Nvx3uqnbC49Kq5HN3ziksDc3/yyS88H/vT8Q3zHlmrcmyN2yx+Rx669tgVFn/1ervj8uDXfd8eTndrXLoqP543z9W7x/NN+IXV94ad0zxV37L9Tr48wnDy5hGur8ZJx6N7vffwkZH2yQfXW1R+W/nc6veQfT3rZa2W6erd7a7GS7v9+tM8VZl9p/bSVvOupoW/8tlMfGi6d9J685NPWDtXXw9rB109T9it7b9v7N653Hf3zZOn7/KvPu1IK0PV7/Zu/9MsbbmqeeZT/8R9h9nfu3yvsHeap5lvJNc7j/I+eYStT17/65OXb7OevfHV7ld4Pt6Vnt8r/hOepndXecn37ntcr77H6vJz7tvufb3S8IqXZxXWHf9VvvjNaPXu6pN+Z/b7NvG3725XtVx/AaPo57E="
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
      data = "eAHFkAtuFUEQA3P/y8GRwIpKKpnumd0ExEqhPy675/Hx8fHx4/cf30+aqjBvdFhqRV5HbgZMT473HYIGS2Xf/N+Yk00+9zoXPXv3zPbRd+3Mbe78E/f2RrJv+WRud7M34761zLd7Yfx1njX6ZD7h4LfaGcxUfJl7h/bd39d+z9PNkx5t8vDWUyWXemJv2ncynnib8UxPvb0VPfzJg9b/vz07j36r3CQ73JaHZnbKjd4ZmXsX75MsM51hLXn5uG/NfWd8uv58Cx4qXNctr7lt3vzb3fD2uOfG0x186navtSm7mc6yp7V4+VrLjJcKw4w3Mxq7U4XtevJYm+5bT09279s7cf17JoZctM5F3/bormR5d+rhc4M/+Dd34znx3KFyo6t157lvD/ONcTae1G1vZupzj5vUcO4zk9/7aE++J74nTN/iXb33TO4TNj5zeJ1Hb86+3sOnOq85z+43v7PS46Had+udFbZn/GR3Rb9VfDcOHb7fk33v8KTi8+5Nn+ztBtl9n/3pzo3ZMu2b3mafe94y7dBO1Xc3Lozz3cfD/CTLfPf2uw/nj3u3nfXu+U1TFqzfMHHW8aROLDuq+a2f2O2mM9rXM+y2R6fCUdn/q7r9Rt/fmH6TPa15dp49Ww9v3Xndbxw5zWeOdtJhXNPn2+59qp//PmHM3/rknTLzW046+f7Nzfc8ebJzBkzXEzPd6R3+7On7BnOYJ1x4svoeWdRwE8Mu+saQ8aSS94SdmM2fPb+1fe3p+Tv8LauzM7cnc7/99n/dPHectTGwVN/y29zDPq2Tl/dEax1ty28+3Mkz3YjHOfTU6Nv3hInXnHtys9vebX5jyEmFoXo3cd6l9z203vUMt9XmeVv29PHSm0/PXxg+e/FRYZ7W9nE/+9aciUbFB8Oe+W09+ftWsqfd6Wby+0bP+Lc9+lfr9Obe+bY1793zlmkXbdvjcw3bN2/+8BPjnXvfS2/NvTW/Kfues/vq11k9fyW3f0cyptyJg7WGd9rxvjD5M+OeDPit2mPm5o/vifeUQ0aYjeMGrN/YvdnWmGGYqdt99NQb4+wbS+5TDn57R24nizy/xd63PXn4mMl3RYO91fB4yNk8cJt+2yefG2Qxx8suPXtqdv211jO8c9lR47npT9lwp6zo/Ubz6aPDoHmXDPbp3354k0lPBneZt3rjNj33Ni23/J6Jyy6Mufimz8yUFY+ZKcO7N6x9b/p+Z89bFm+jhsPr3eb/X/vb21rv+fRufv/G3HTfCgtPJTec2ezNw011ypq4267vwzufHpa5K96/UZPNvSnvpE38tuM3tE5+9I2J56R1JuyTTNi8g7c4b9o5d/J5N/mdnx6Gt7T+diaH3Mkfxnr69jFP/m3XHt9orTOs29dczzfWufbefGad8cbnjFOffN9oFu10+6R1Xs8n7+1tnXWa+86UzW91DjtqNLKozU/7aecsZ6TnHnXTe/923t6VHGvuTzem93rnnpxkT3v0rtNbJr937uOfMtjDwlD9jqc7e9xP/ujZ5483sEtlZy89NRzftENL7TxmM+lvORMfz1vfdr/ze+bOV/2d55ns7G75vwCPceGL"
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
      data = "eAHt2LuS7EQQBNDrATaBjbABG7ABlwsuj///DeoMmxM1PS3dliYCazuiV1I/srOyHtLsxw8fPnxdfav+ffWV9m0t+q76N9X/qP5T9d/f+l91hWde38OEYf+f1e1x/bI6PP3Ht/6xrpmr26f2VY1kLQ6w4Li3z/5/qn9W/fPqv1aftZ9r8JfqX1R3/m/V2eUKy37ze/tr6qH9UE/24YYPXHxgatFwq/uu0TiOl71soGtwYWqe2eisYNftbdzZ9Mg4reAYs4+dwYn9o0YZj+3x29+1lzYwnY9bt6Med1sw8NDpgg9MnFfiMRj22ufKR7GRHsa7/fX41Ky3Lr5iC73EJi6JBdjxfXzU4zt+st6ZrnBg4ObqjNjW88f8OI4HXuGTOPScOXjG+TRj0dM43MwZd4ZxuOwRV8Ezb4z/dXM46zD6+o5Bkx4js/gxJn4yF63wT1zV7aUGC+57e1fgXYH/FFCftuqr9fi/Xc9/1cbUpufZ9RE46ou6k++CXjtXkVI31CM1SI2Fmfdb3S632AYntS/1fRmkFsY2XPo74gyGtXDUQzh5J9ft6eY9mnfOFV1yIBy+p+8rfNgFw3vmFT55x9Boxqe/k1dii0YzHHaLL7Y7yztzlkfJMbbN1oSv9yicvfPidzGYXJudh5dYxW2mI5zkhXXO3Ftnztpuf/Tz3YOLebHovq+rx9u3q3V8OsY8HmzV7U9e5N1fQ/dmrfkZ19gLh8Zsmulcw7dvR3xn+uX7gB+CA2umTepLfLFnt3Ocpx9xYtss7uMrduMFD6fxvBq6f6fP4gdObEq87X1PRYeZH/peZ/7fLbG31cGz3O3zs9wI3/iPJmMswM03/SzegpFr9KInH8XP8ZUYGWP/UzzDD5bY4dMRo4ZuPoe/F6fWBMsa9oafOQ2XvRy9LXhbE13YBWfMdzEmhnGd5UwNP7wDrRX34/q8T8yNXGvozjd20/yovuBr7YiV3AoPGow6Rhv24mktf3T7wje1cpbLzrLfXuucM8ZW91POGX3uLHP24uR+9EMN3X/bmtM7X/M5Cw4MfTyrhm449NNn9cCaYLEbp1ltssZ+/aglhmZcjvaNcznvynfaiPX+/JoCqXWvoCQPxfIrTf7AEPdb9aN3RE3vtuDIY7kx1pbdjcOEeE9tgSOHxlwdtjw9Rht71Zfk/BlOwUgdSK6qrbP68UTibYAucnf8tkiNmNWGGZb1yd0xfvrcbO/eWGrw3vzKeHTiq1canfIu2Or+ahzGJpp7v6zqW0sfGj7iUOzt1fCHDTsP+OT96PoKHxrbn2vdnm7sEtPswudMTtTyewuO/fCi1X3B4g195JP9eV+ezXdHRWc4+tX3ZfJSPdx7v9fUUotGS4sPFuH0qe+Eg+3TKXl7NccCmO/fKzGdGoYDrV/1lzi8GoOxh7/kxKt+F4timT5b9as699xIDSm40w1O4jm/x3A7wyt1Xq5rtFKHxt8H5o5a32ed2PZuHN+P5vZa5yJuNGPbW1+xKxj53SGGM8bG1e+O+Nr6xLAxuJ5XY8keevYY9vsrmHW71OjrbD213f3ZHO11MN87q7bUcQ8tWHTF6ZXGPlrTaq8lFsR4+hgTqalHdTVaOitn4r+99RGzhqctMe4sXQ7yMz2iSc/HPc61/KHFBng4qhF5p291z+89nurxsIVn8Hw/6Z7Dc9VmBwWPzfJbjIslmFfe8bXt1uDgw7Ye193vKzy7fskVB/A7nrTs+PV42BKbwRrxt9q9wis4ybscmrrC16lXMHW47Bc7aXDU/bGWhVdqrnW0TM1Qd9ieZp7esI70gJtYwR2ma1qfj0aZG69ZGwzceo7gZGy0LTGw1Vy0hsXW5F+P5WjKth6T8HEffVBD92YPX7CFZnD1rpGzc25+v9XQQ6OZc2CxVz9b92vL/f9O8gveGYzolvjpmu3xdmZvMBI7zr7SgmE/3ZwdP67iBWP0xVHM2TPW3WiQPLFmq36UB/F39tTyhxZu8ovfe8w9LDx46Bh0EsM95g62PkzZJ07EG208X+HDZrawCRacI61rerfZK6dhiSU5fsU2+ctPOqyxTtTQUsOHTXSC02tHPS43OGxJjXD1fFZvduGTdzMM3M5olPjJNwM8tp3FSY1ki/3w8IK3yidc7OMjHFx1Y6s40SX7ceF7+pzRObEMx/nyK1zYdcZffI6HLh/iqzP61Lbb9wiNoy1uOtxVPtEZTnRhFwxYKzoHg69h2M+W5JjrCk58Rdu8+2Cyj0Y4fqp+hIs9NIDpPrqwCx9jR1jJy6xTc9zjEbti75H/4eAdH+d8V+Nd95w1e6/BMe9stjhTDwc45mOn+1kMwIlvshYXOJ5jW657OMnx2GFdt9FzMMJ15BNfOVfM4ADP86iL5/AecXDJ+pwFAx+x5Kpbk3XOGv0PBw9rzccGmNaGg2drzDvH2h7fedcnhoNjrb3OgOVKI/PwzI+21dD9fyrWpcOx1zU2BYPNs2+z1LCcHc1dwyV4/NBtqseHlryKPc50T4vwCK8jnHCKBnSOtuyDAXPPppq6t46Fv/00tTff+TNdavqpdax/AZR5OQc="
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
      data = "eAHtmQEOwyAIRd3x1+3QK1lICCHFVqxov0ljVxU+D6s2KyVn+bxK2farprz3fnRlLBTHqFLLb5Q+y+93IC+dqwh+bINrK+asz0jzjLqz8oQuEAABEOhNAGu2T/juc4Y+W/gK5+1B8y/qPB5lZ16af+XgEJPBu9/7I9WZtBzppLaze0rP9S7yXWjVOVMOvRyjHQRAII5A69oSp2RtS2f3phlo8B6HOTRDtqARBEAABEAABEAgEwH6Pu9xhlrxzJkpb9DybAL8/fNsCogeBNYlQO94xn30qiZrzbpqKyrr8uwzWgvFlEFDFFvLzpX45H9I1hySObR88jPpW95ze2Rt6ZT2ZUzyOd/LmLy+PMara2PW/qQWz4fXHmnL8yXbvdh1zHKsvPf0e3lnW2SH+tb65XG96kgdmpH+fSaGlrHaD/H+AT3IJZY="
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
      data = "eAHtWItuHCEMvPz/17Rpk6rvTwtWNMpoZBsbUHtNF4ljjV9j42Xhbrcz7ePD7fY4+qfRK+3DkPN0vo75b6N/H/3z6E+jP4/+ZfSoeTos+2Po/hz91+i/EzueThUD6+KZY1QMzOOcRf4Q4yxn8K3+MI8R9izP3cYYO2uufhhjd80Zg9UG8gkfbDtbc0/OclOpO/jKxqzuNAa1w3zmIVbkXmPI+NCBvVkdKB+2sV6wszKa7atdGbgy4GcA75q+s7702x7oyet7HNnAfFceete4lwE+C6xYQs2sfNfV3z3uz15tK+4KfeL7VfFzSgbr6sXP54RMDliid5vPESYbycGON1b8Q28my/47dwDY98bOHcDTx9wMe8ZnntnjOGGfx4wPHsv/i8+cE90Dub6zeyDiRk50D+T6zu4EsNMdsxi6tqIY1M7OPYXzmt1T1KfSnFflgWZflTX07rlmi31V1rCaR+DEqGvp7buQnY2MIfvuqE+1y3zlKc0+lWc0+B7vmrsy8KcywDWt+34XA2pa9/2unRPy2O929mfDgf1uZ38+Ec97t4E63K1By5PV4T3VoJ2dZ+fnbH1Rg3Z23jk/I8c731LgvMd3/V7ybDlCrpGvndFyfbX/MwM7+wZnbGffYDv2jG/rKjbTt8b7WuUu8ar19mv6q82LAe9sZ3+MYvgb+6MX08oaeTGdrJ/VNeP18Wwwf3aOwPp4dmwO/FPniA62CBPmK9hW1t3DuLrujNHsnmpeja/Y9mp8xU6k08WJ/2RUr4sT+2ik561xFMNsntdYccMP6lD5kW0Pt/lBHXr8yJbNA0dnT4+wcrx8r4zkK1j5XlmRPx1rZI9jjWR0nvOgvA7NeejomSxjwDvVtWHyjAHvlM1nddSptex/SPOT5Z9jnH3nzFbUOMbV75zGHP1vHGHgeY6Zn1mm+qy4qnqe3Eksu7iAxXDieWXtgGNnvZArw7GKBTjwXikNH5VRMSg9s6G+lZ7pM199K82ys2fFofRMn/mKQ2mW9Z7Vt9KeTjSnvpWO9Gxe/c7ozJb6ndGZrR0cancVR4aB33eVU/9GRxii+WwvivxF8x4ezKn/2Tz46ktp7EOQ52+tnicUA9P6fedvLZ8n4EdxgMaouKDnjYzD+EZjVFyvnPpvBwesejlkHNUYZzlciRHYMOK+AuzVEdheAIVGK98="
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
      data = "eAHtmIluFTEMRcv//wOIHcr6icSqjnp75dhJBhUEb6Q0z/F27TieTO9f3N19GePrGO/H+DDGxzE+jZE9n8f6/RiuE7Ivx/qrMb6N8X2MH2P8HGPlQWcFA/bwB/16+HozxtsxsAcG5b0TTJk/jRF76Cgvcsbj/lgHo+YM3uqsGCM2sGC7s4OcYvT9q/Y87CuGqA3ymdmu9lwxhBz57OoOP7NY4Vd15zG4LeUrj1jJvcdQ8dEJe8RK7tXHjI/tmY7bmNH4nvFv67cM/O8Z4Kzpma1yMpPnrK2e2V35CtONt5cB3qV7Wo/S1IDeBR6567+ogXWN55FcPQsdmtWz0Nm5yuee0NlhX7P49Z5QyYUP9jWLX+8RlVyF1f3H/Xv2uKzKuX+/D4Yuj8uyns3cvzPezlqFPexUfOV12Cu+8nawP6fs767v2XcgMWlOvAdqfVffBNjanXVfuz5e5aWKAUzod98pyGez9o3qOwVfmY1Y07zOZNRXt4dhw79zsau+Vvbw9DvX9zLru2CqZt/LrO+i7z5ZZ1Y+a9nsPl1G+c670bcMPGcGtKa7nlnh0pr2vl/pBS96kz7R77qep/LZb/rdlf4cdul3VX/O/N/W9jJAHV6pwfBIHe7WoKOl/qr7s+s4TQ3G3dnvzy5b0dRg3J2v3J/J8em7FIzkuHqXItvN/2KeI2Zy3cXf8cl1J3fj/10ZuNI3NJIrfUPt0Dc4b8rb/a19beVbwu3zvte+tvItgR1iCP3TJ4uBM7vTH7MYOLM7/ZGYiOekfrKYTuoni4n6Ad+fmHV/Mv/Kr+4Ruj+ZHeVfvUdgfxVbt++r2E72PcN4su+OMezG4zX+sLr+N+xmNb5u4VEyq3G4pzhVbxcnfdT1Kpzg1Zk+OtPL9lhxY0vrMOP7Hjtu/FCHzsePz44bP9Sh813fsYKDnu58p8NehhUc9HT9rszkw06HNWT0u3JFPnRmj8c6k8vWNQ8eayafrWkeMn63BgbNQ6fjfMXAmXKZFVoxcKZCjzrKbKzknxipo8xOl3+NsXrPZbZ1TWM8fc95zLP/G6vf7LfHfPp/Y2w7LtZ3Z8e1qx/yikV/7+6dYtHfJ3sHjtP9Ig/gON0vcHCunMZPN4ODc+V0px989+30io2Qcd9Or9pBznE4jVw3Ow6nO/3gu2+nV2yEjPt2urPjfjt6Zs/9dvTMDuunONBnvoKjwqDn3eXwzVxh0PPucuj7PPM3W3d96Jk/X+ddi17M7stp+hA6+q7V+4T7cpo+hB191+p9Ar7jgGZ2XOj57DigmR2X6zvtOVzFoXayHCqO1Rg9h4EtHjCexAg2Zr5XHiyv/wUbM98r6xaeSmqtPeXsUb8AlWVWhQ=="
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
      data = "eAHt1TsKgDAMAFC9//1cvIw4CHVpCQla5bmotPn0EXFZXAQIECBAgAABAgTqBfa1PudfMrY27fMb56uuX52vyiTTVya2qn95vi+QnaNsfEQwUiuyN9JDZO/Vw3XvxW5F/6ZRrdF6r0drBAg8K+B7fdZbtbvAOX8zzeBMvdylcm+zOedOI5oAAQIECBAgQIAAAQIECBAgQIAAAQIE/ihwALV6EuQ="
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
          gid = 668,
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
          gid = 487,
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
          gid = 668,
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
          gid = 487,
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
          gid = 767,
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
          gid = 767,
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
          gid = 707,
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
          gid = 707,
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
          gid = 668,
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
          gid = 487,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 809,
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
          gid = 743,
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
          gid = 767,
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
          gid = 767,
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
      properties = {
        ["script"] = "BulletLayer"
      },
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
          gid = 817,
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
      name = "Amy: Ange?",
      visible = false,
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
          height = 88,
          rotation = 0,
          visible = true,
          text = "Ange? Is that you?\nWhat happened to you?\nWhy are you doing this to us?",
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
          gid = 731,
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
      name = "Ange: Amelia...",
      visible = false,
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
          text = "Amelia?! ... I'm too late. You're cursed now.\nI've failed as your sister...I'm so sorry.",
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
      name = "Amy: What curse?",
      visible = false,
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
          height = 88,
          rotation = 0,
          visible = true,
          text = "Cursed? What curse?!\nWe were all so happy living together--\nHow can it be a curse?",
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
      name = "Ange: The demon curse",
      visible = false,
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
          text = "The demon curse on this land since our Kingdom's beginning!\nWe've already lost too many girls like you!",
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
      name = "Amy: Then leave!",
      visible = false,
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
          text = "If you don't want to be like us, why don't you leave us alone? Why don't you go somewhere else?!",
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
      name = "Ange: We can't!",
      visible = false,
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
          text = "We have nowhere else.\nWe have no choice!\n\nAmelia, I love you.\nGod rest your soul!",
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
          gid = 899,
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
          gid = 899,
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
          gid = 899,
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
          gid = 899,
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
          gid = 487,
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
          gid = 668,
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
          gid = 647,
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
          gid = 647,
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
          gid = 647,
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
          gid = 668,
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
          gid = 486,
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
          gid = 668,
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
          gid = 488,
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
          gid = 810,
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
          gid = 809,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 487,
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
          gid = 668,
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
          gid = 487,
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
          gid = 668,
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
          gid = 647,
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
          gid = 647,
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
          gid = 791,
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
          gid = 809,
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
          gid = 899,
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
          gid = 899,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 486,
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
          gid = 668,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 488,
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
          gid = 668,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          y = 1248,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["activateobjectslayer"] = "ground"
          }
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
          gid = 743,
          visible = true,
          properties = {}
        },
        {
          id = 468,
          name = "",
          type = "",
          shape = "rectangle",
          x = 264,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 767,
          visible = true,
          properties = {}
        },
        {
          id = 469,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 1256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 767,
          visible = true,
          properties = {}
        },
        {
          id = 570,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1248,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 767,
          visible = true,
          properties = {}
        },
        {
          id = 571,
          name = "",
          type = "",
          shape = "rectangle",
          x = 296,
          y = 1240,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 767,
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
          y = 1336,
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
          y = 1336,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 767,
          visible = true,
          properties = {}
        },
        {
          id = 460,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1336,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 767,
          visible = true,
          properties = {}
        },
        {
          id = 463,
          name = "",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 1504,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 767,
          visible = true,
          properties = {}
        },
        {
          id = 464,
          name = "",
          type = "",
          shape = "rectangle",
          x = 296,
          y = 1512,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 767,
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
          gid = 767,
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
          gid = 767,
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
          y = 1248,
          width = 16,
          height = 192,
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
          gid = 487,
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
          gid = 884,
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
          gid = 647,
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
          gid = 647,
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
          gid = 487,
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
          gid = 487,
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
          gid = 668,
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
          gid = 668,
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
          gid = 487,
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
          gid = 668,
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
          gid = 487,
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
          gid = 668,
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
          gid = 545,
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
          gid = 767,
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
          gid = 767,
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
          gid = 569,
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
          gid = 647,
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
          gid = 647,
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
          gid = 647,
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
          gid = 647,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 845,
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
          gid = 869,
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
          gid = 707,
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
          gid = 683,
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
          gid = 545,
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
          gid = 857,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 707,
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
          gid = 521,
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
          gid = 533,
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
          gid = 707,
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
          gid = 707,
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
          gid = 569,
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
          gid = 707,
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
          gid = 617,
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
          gid = 707,
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
          gid = 509,
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
          gid = 557,
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
          gid = 581,
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
          gid = 593,
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
          gid = 605,
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
