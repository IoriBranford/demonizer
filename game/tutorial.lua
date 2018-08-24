return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.1.6",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 15,
  height = 20,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 126,
  properties = {
    ["cameraid"] = 2,
    ["music"] = "mus/04 - Pick Me Up Boy!.vgz",
    ["nextmap"] = "demonrealm.lua",
    ["overlaymap"] = "gameplay.lua",
    ["playerid"] = 1,
    ["startbombs"] = 0
  },
  tilesets = {
    {
      name = "player",
      firstgid = 1,
      filename = "img/player.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
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
          id = 4,
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
          id = 7,
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
          id = 12,
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
          id = 15,
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
          id = 20,
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
          id = 26,
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
        }
      }
    },
    {
      name = "basic_terrain",
      firstgid = 29,
      filename = "img/basic_terrain.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
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
      name = "trees",
      firstgid = 413,
      filename = "img/trees.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
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
      firstgid = 416,
      filename = "img/trees_tall.tsx",
      tilewidth = 48,
      tileheight = 80,
      spacing = 0,
      margin = 0,
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
      name = "forest",
      firstgid = 419,
      filename = "img/forest.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
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
      firstgid = 451,
      filename = "img/bushes.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
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
      name = "Pikeman",
      firstgid = 466,
      filename = "img/human/enemy/Pikeman.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
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
      firstgid = 490,
      filename = "img/human/enemy/PikemanF.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
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
      name = "catapult",
      firstgid = 514,
      filename = "img/catapult.tsx",
      tilewidth = 72,
      tileheight = 72,
      spacing = 0,
      margin = 0,
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
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "dirt",
      x = 0,
      y = 0,
      width = 15,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJyVk1EOAyEIBbn/nbzF8k84SW3iJFO62aYkRFcZlIebEVHb1/Y849uv7a31Pmt1xtBeyeH7fLfmZpmX4nIwqZzEwebhGZmn1pZYzqVG1zad+FYejDu38qCPNUjFmrU28wzrMNlUPPeEnXmIwVZ8amHt7u5tNsXMfvg899nnuseu2T2ibuvsPpLX74Px0h52jXXuPN+Y85udb8C831rfsOyht7U2Q36shrufrsG6xeCtrf9D69HxbfNfL93VOZ7MNZqvH9y/9gJnbsmE"
    },
    {
      type = "tilelayer",
      name = "dirtdeco",
      x = 0,
      y = 0,
      width = 15,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJytkcENwDAIA9l/1TBEvxXKGUPrDxEQg03EHXnJHVFzceC9Qb5i3alyT3fOEonX4aC/yk/lf+3b3OWr9y6H8sDZt+shn1x9dBPizmBuqpGGTpuaM8l3fmzuOK3/hQdoiywr"
    },
    {
      type = "tilelayer",
      name = "grass",
      x = 0,
      y = 0,
      width = 15,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJylksEOwiAQRPePjOfas3rW/gSUq8DfdycMKScjI8kkbMJjZmE3m19XV3FdRDa7NoF9/ckm1+J6Cmw0rWf0+3EFm88N32ott+IL7i34gt2t5VYzq/0m8rP9gkXmKPj2t6oCC99AXvHFG2OuZuby7lqt/S34X3N3bidbyMP79sW/c5VcsHOmUefhDugx7FeeKzwb6V/snLFMpWHf84XBB/UBMo0msA=="
    },
    {
      type = "tilelayer",
      name = "grassdeco",
      x = 0,
      y = 0,
      width = 15,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYBgFwxmsZqSvfevobN9IBaB4XUtBWK8hUy96/JKSvkhxL7q5MD4AN6gGxA=="
    },
    {
      type = "tilelayer",
      name = "bushes",
      x = 0,
      y = 0,
      width = 15,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJxjYCAfnGWkQDOZ4NQA2AkDF8i0m1x9QxWA4ujICPIzKB8MRF6gFJAaR+jqYen6OAnmYMu/yOaiy6PnHQBocAy3"
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
          id = 2,
          name = "camera",
          type = "Camera",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 240,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "enemypath",
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
          id = 23,
          name = "",
          type = "",
          shape = "polyline",
          x = 120,
          y = -16,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 160 }
          },
          properties = {}
        },
        {
          id = 106,
          name = "",
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
            { x = 72, y = 80 }
          },
          properties = {}
        },
        {
          id = 107,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -8 },
            { x = 72, y = 32 }
          },
          properties = {}
        },
        {
          id = 108,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 248,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 16 },
            { x = 72, y = 24 }
          },
          properties = {}
        },
        {
          id = 109,
          name = "",
          type = "",
          shape = "polyline",
          x = 240,
          y = 128,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -72, y = 80 }
          },
          properties = {}
        },
        {
          id = 110,
          name = "",
          type = "",
          shape = "polyline",
          x = 240,
          y = 208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -8 },
            { x = -72, y = 32 }
          },
          properties = {}
        },
        {
          id = 111,
          name = "",
          type = "",
          shape = "polyline",
          x = 240,
          y = 264,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -72, y = 8 }
          },
          properties = {}
        },
        {
          id = 113,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 168,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 72, y = 56 }
          },
          properties = {}
        },
        {
          id = 114,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 232,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 72, y = 24 }
          },
          properties = {}
        },
        {
          id = 115,
          name = "",
          type = "",
          shape = "polyline",
          x = 240,
          y = 168,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -72, y = 56 }
          },
          properties = {}
        },
        {
          id = 116,
          name = "",
          type = "",
          shape = "polyline",
          x = 240,
          y = 232,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -72, y = 24 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "goodluck",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 16,
          name = "text",
          type = "",
          shape = "text",
          x = 32,
          y = 16,
          width = 176,
          height = 8,
          rotation = 0,
          visible = true,
          text = "OK ! GOOD LUCK !!",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["initiallayer"] = "tutorialtext"
          }
        },
        {
          id = 17,
          name = "goodluck",
          type = "Trigger",
          shape = "rectangle",
          x = 392,
          y = 0,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["clearobjectlayer"] = "tutorialtext",
            ["musicfade"] = true
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "bomb",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 10,
          name = "bomb",
          type = "Trigger",
          shape = "rectangle",
          x = 352,
          y = 0,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["clearobjectlayer"] = "tutorialtext",
            ["cleartowin"] = true,
            ["cleartriggerid"] = 17,
            ["playerrestrictfire"] = "none"
          }
        },
        {
          id = 15,
          name = "text",
          type = "",
          shape = "text",
          x = 32,
          y = 16,
          width = 176,
          height = 48,
          rotation = 0,
          visible = true,
          text = "Tap BUTTON 3: BOMB !\nDeals area damage and captures humans\n\nRECHARGE by capturing and holding blue souls",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["initiallayer"] = "tutorialtext"
          }
        },
        {
          id = 92,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 120,
          y = -24,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 516,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 95,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 72,
          y = -24,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 516,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 97,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 168,
          y = -24,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 516,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 99,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 144,
          y = -80,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 516,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 100,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 192,
          y = -80,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 516,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 101,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 48,
          y = -80,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 516,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 102,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 96,
          y = -80,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 516,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 103,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 120,
          y = -136,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 516,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 104,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 72,
          y = -136,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 516,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 105,
          name = "catapult",
          type = "Catapult",
          shape = "rectangle",
          x = 168,
          y = -136,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 516,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "powergrab",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 36,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 96,
          y = -40,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 37,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 144,
          y = -56,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 38,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 144,
          y = -40,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 39,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 72,
          y = -40,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 46,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 120,
          y = -56,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 47,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 48,
          y = -40,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 50,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 96,
          y = -56,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 42,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 192,
          y = -40,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 45,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 120,
          y = -40,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 43,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 144,
          y = -24,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 41,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 96,
          y = -24,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 72,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 48,
          y = -24,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 73,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 168,
          y = -40,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 74,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 216,
          y = -8,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 76,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 24,
          y = -8,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 77,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 168,
          y = -56,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 79,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 192,
          y = -8,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 80,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 120,
          y = -24,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 81,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 48,
          y = -8,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 82,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 144,
          y = -72,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 83,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 72,
          y = -56,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 85,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 72,
          y = -24,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 88,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 192,
          y = -24,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 89,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 168,
          y = -24,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 90,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 96,
          y = -72,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 119,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 120,
          y = -8,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 120,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 144,
          y = -8,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 121,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 96,
          y = -8,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 122,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 168,
          y = -8,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 123,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 72,
          y = -8,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "powergrab_path",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 112,
          name = "powergrab",
          type = "Trigger",
          shape = "rectangle",
          x = 336,
          y = 0,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["clearitemstriggerid"] = 10,
            ["clearobjectlayer"] = "tutorialtext",
            ["playerrestrictmove"] = "x"
          }
        },
        {
          id = 125,
          name = "text",
          type = "",
          shape = "text",
          x = 32,
          y = 16,
          width = 176,
          height = 56,
          rotation = 0,
          visible = true,
          text = "Hold BUTTON 2:\nPOWER GRAB humans from long range !\n\n(WARNING: Teammates doing Power Grab are vulnerable)",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["initiallayer"] = "tutorialtext"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "powergrab_path",
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
          id = 124,
          name = "path",
          type = "",
          shape = "polyline",
          x = 120,
          y = -8,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 240 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "powerup",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 118,
          name = "powerup",
          type = "Trigger",
          shape = "rectangle",
          x = 320,
          y = 0,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["clearitemstriggerid"] = 112,
            ["clearobjectlayer"] = "tutorialtext"
          }
        },
        {
          id = 117,
          name = "text",
          type = "",
          shape = "text",
          x = 32,
          y = 16,
          width = 176,
          height = 56,
          rotation = 0,
          visible = true,
          text = "BUTTON 2 also shows BLUE SOUL humans captured\n\nAny team member with full circle of 20 will unlock...",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["initiallayer"] = "tutorialtext"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "focus",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 7,
          name = "focus",
          type = "Trigger",
          shape = "rectangle",
          x = 304,
          y = 0,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["clearobjectlayer"] = "tutorialtext",
            ["cleartriggerid"] = 118,
            ["playerrestrictfire"] = "focus",
            ["playerrestrictmove"] = "y",
            ["wingmenrestrictcapture"] = true
          }
        },
        {
          id = 13,
          name = "text",
          type = "",
          shape = "text",
          x = 32,
          y = 16,
          width = 176,
          height = 56,
          rotation = 0,
          visible = true,
          text = "Hold BUTTON 2: FOCUS\n\nFriends LOCK-ON enemy when shooting\n\nMOVE SLOW for precise dodging",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["initiallayer"] = "tutorialtext"
          }
        },
        {
          id = 40,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 0,
          y = 128,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 49,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 0,
          y = 264,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 78,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 240,
          y = 264,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 84,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 0,
          y = 200,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 86,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 240,
          y = 200,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 91,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 240,
          y = 128,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 48,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 0,
          y = 232,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 44,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 240,
          y = 168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 71,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 0,
          y = 168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 75,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 240,
          y = 232,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathspeed"] = "360"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "demonize",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 6,
          name = "demonize",
          type = "Trigger",
          shape = "rectangle",
          x = 288,
          y = 0,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["clearitemstriggerid"] = 7,
            ["clearobjectlayer"] = "tutorialtext"
          }
        },
        {
          id = 12,
          name = "text",
          type = "",
          shape = "text",
          x = 32,
          y = 16,
          width = 176,
          height = 48,
          rotation = 0,
          visible = true,
          text = "Capture RED SOUL humans to DEMONIZE !\n\nUp to 4 teammates can shoot and capture with you",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["initiallayer"] = "tutorialtext"
          }
        },
        {
          id = 24,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 96,
          y = -32,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 496,
          visible = true,
          properties = {
            ["defeatitem"] = "ItemWingman",
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 25,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 144,
          y = -32,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 496,
          visible = true,
          properties = {
            ["defeatitem"] = "ItemWingman",
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 66,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 168,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 67,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 72,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 68,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 96,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 69,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 144,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 70,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 120,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "shoot_capture",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 5,
          name = "shoot_capture",
          type = "Trigger",
          shape = "rectangle",
          x = 272,
          y = 0,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["clearitemstriggerid"] = 6,
            ["clearobjectlayer"] = "tutorialtext"
          }
        },
        {
          id = 11,
          name = "text",
          type = "",
          shape = "text",
          x = 32,
          y = 16,
          width = 176,
          height = 48,
          rotation = 0,
          visible = true,
          text = "Move JOYSTICK: MOVE\nHold BUTTON 1: FIRE\n\nSHOOT enemy then move to CAPTURE humans for points towards 1UP",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["initiallayer"] = "tutorialtext"
          }
        },
        {
          id = 18,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 72,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 19,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 96,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 20,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 120,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 21,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 168,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 22,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 144,
          y = -16,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["firebullet"] = "",
            ["pathid"] = "enemypath",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "welcome",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 3,
          name = "text",
          type = "",
          shape = "text",
          x = 32,
          y = 16,
          width = 176,
          height = 24,
          rotation = 0,
          visible = true,
          text = "Welcome to DEMONIZER !",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["initiallayer"] = "tutorialtext"
          }
        },
        {
          id = 4,
          name = "welcome",
          type = "Trigger",
          shape = "rectangle",
          x = 8,
          y = 0,
          width = 224,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["playerrestrictfire"] = "none",
            ["playerrestrictmove"] = "none",
            ["waittriggerid"] = "5",
            ["waittriggertime"] = 3
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
          x = 120,
          y = 352,
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
      name = "tutorialtext",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {}
    }
  }
}
