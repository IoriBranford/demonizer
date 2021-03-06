return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 15,
  height = 20,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 22,
  nextobjectid = 135,
  properties = {
    ["cameraid"] = 2,
    ["music"] = "mus/tutorial.vgm",
    ["nextmap"] = "demonrealm.lua",
    ["overlaymap"] = "gameplay.lua",
    ["playerid"] = 1,
    ["startbombs"] = 0.6,
    ["winmusic"] = "none"
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
      name = "basic_terrain",
      firstgid = 29,
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
      name = "trees",
      firstgid = 413,
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
      firstgid = 416,
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
      name = "forest",
      firstgid = 419,
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
      firstgid = 483,
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
      name = "Pikeman",
      firstgid = 498,
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
      firstgid = 522,
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
      name = "catapult",
      firstgid = 546,
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
      name = "HeavyMilitia",
      firstgid = 570,
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
      id = 1,
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
      data = "eAGtj0EOw0AIA/P/P/UXzd3qS+qJmAhF6q1IFmCMlz2P40jxKs7J1O/iMz08NVwmN907cIJdgB6ObE2PB5FCP2o0vGO9e/zgAZECLftma3o5b8lom66Z95HV75zy+HEDGZ1Bn4KZPuzSZ6Cv2tJX6KWWfr+R6b2f3pBD763uPn3UuMs9IrPPzq+74Q3qFL5JjRd5/4c3AbyBDk0WvBU/95mzi97wPfXpwFt8h6w/MwNu82mPN/rtQa1/yyvo1ThLOffh1OAHjD1DD3yDDNxJa/RGWmygY64HM2v5UnekFTx7vOP7+jBLQf8M9/RPBd4Kp8dzb/d4+MdMzR71P+MLZ27JhA=="
    },
    {
      type = "tilelayer",
      id = 2,
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
      data = "eAGlj0EOgDAQAvv/r+ojDNFJCKGtRi+7wsDqGP05i3w8WvMKXiU6ZPpe4Y3Id2iyE8nu9OFmE54Jl73obe6ydCWnrqbB+y1x6C3jrO9kXPu6v+nIb/JMeu3+jmm+bvid1ouWnL+3bmnO0KM581oPvOdzX91JdtWnnlmXcitPvp7ZP9zu3of7Oy9oiywr"
    },
    {
      type = "tilelayer",
      id = 3,
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
      data = "eAGl0zsOwkAMhOHcCFEDNaSGXIJHC+H2zFe4RMJLpFGy0v47Y6+zTP1nG2SNNn10wr6iZYA9/8k+wu+iuenN9xaN1KzeZ3SNujXzfUdyd3vNF3eJur7YeyR3l63Mo/XKrOZuvXxldk/dzNUrvl2Wr1rl7rI1G+aqM5fH7D9E7tYd/Zq7OH3C8sXz3kff/ovi+ODUWzNt7X+uM5xzirxJTvt52et++FvXjOFJD+u78mGp1h8yjSaw"
    },
    {
      type = "tilelayer",
      id = 4,
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
      data = "eAFjYBgFwzkEVjPS13fr6GwffX03eGwDxetaCsJ6DZl60eOXlPRFinvRzYXxATeoBsQ="
    },
    {
      type = "tilelayer",
      id = 5,
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
      data = "eAFjYCAfvGUkXy+5Ol8NgJ0wt34g025y9cHsHWo0KI6ekBlWQ82vIPeC8sFA5AVKw4rUOEJXD0vXz0mIa2z5F9lcdHmYHTC/AgCYnQ63"
    },
    {
      type = "objectgroup",
      id = 6,
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
      id = 8,
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
          height = 32,
          rotation = 0,
          visible = true,
          text = "OK! GOOD LUCK!!!",
          fontfamily = "Unifont",
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
      id = 9,
      name = "bomb",
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
          height = 96,
          rotation = 0,
          visible = true,
          text = "${joy_bomb} = BOMB\n\nBlows away enemies AND bullets!\nKeep capturing blue souls to refill!",
          fontfamily = "Unifont",
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
          gid = 548,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
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
          gid = 548,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
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
          gid = 548,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
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
          gid = 548,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
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
          gid = 548,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
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
          gid = 548,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
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
          gid = 548,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
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
          gid = 548,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
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
          gid = 548,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
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
          gid = 548,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["firebullet"] = "",
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 127,
          name = "path",
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
        }
      }
    },
    {
      type = "objectgroup",
      id = 10,
      name = "powergrab",
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
          id = 36,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -8,
          y = 88,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 37,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 248,
          y = 72,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 38,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 248,
          y = 88,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 39,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -32,
          y = 88,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 46,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -56,
          y = 72,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 47,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -56,
          y = 88,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 50,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -8,
          y = 72,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 42,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 296,
          y = 88,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 45,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -80,
          y = 104,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 43,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 248,
          y = 104,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 41,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -8,
          y = 104,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 72,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -56,
          y = 104,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 73,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 272,
          y = 88,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 74,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 320,
          y = 120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 76,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -80,
          y = 120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 77,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 272,
          y = 72,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 79,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 296,
          y = 120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 80,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 320,
          y = 104,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 81,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -56,
          y = 120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 82,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 248,
          y = 56,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 83,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -32,
          y = 72,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 85,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -32,
          y = 104,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 88,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 296,
          y = 104,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 89,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 272,
          y = 104,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 90,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -8,
          y = 56,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 119,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 296,
          y = 72,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 120,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 248,
          y = 120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 121,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -8,
          y = 120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 122,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = 272,
          y = 120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 123,
          name = "pikeman",
          type = "Pikeman",
          shape = "rectangle",
          x = -32,
          y = 120,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 504,
          visible = true,
          properties = {
            ["faceangle"] = 90,
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
          height = 96,
          rotation = 0,
          visible = true,
          text = "POWER GRAB during alt fire ! (${joy_focus})\n\n(WARNING: Teammates doing Power Grab are vulnerable)",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["initiallayer"] = "tutorialtext"
          }
        },
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
            { x = -128, y = 128 },
            { x = -24, y = 232 }
          },
          properties = {}
        },
        {
          id = 128,
          name = "",
          type = "",
          shape = "polyline",
          x = 248,
          y = 120,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -104, y = 104 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 12,
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
          height = 96,
          rotation = 0,
          visible = true,
          text = "Your POWER CIRCLES appear during alt fire (${joy_focus})\n\nAny team member with full power circle will unlock...",
          fontfamily = "Unifont",
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
      id = 21,
      name = "fillbomb",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 133,
          name = "fillbomb",
          type = "Trigger",
          shape = "rectangle",
          x = 320,
          y = 16,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["clearitemstriggerid"] = 10,
            ["clearobjectlayer"] = "tutorialtext"
          }
        },
        {
          id = 134,
          name = "text",
          type = "",
          shape = "text",
          x = 32,
          y = 16,
          width = 176,
          height = 96,
          rotation = 0,
          visible = true,
          text = "Capture enough blue souls to fill a meter and make a BOMB!",
          fontfamily = "Unifont",
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
      id = 13,
      name = "focus",
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
            ["cleartriggerid"] = 133,
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
          height = 152,
          rotation = 0,
          visible = true,
          text = "${joy_focus} = ALT FIRE\n\nYour team will LOCK ON to enemies hit by your targeting beam!",
          fontfamily = "Unifont",
          wrap = true,
          color = { 255, 255, 255 },
          properties = {
            ["initiallayer"] = "tutorialtext"
          }
        },
        {
          id = 40,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 64,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 576,
          visible = true,
          properties = {
            ["pathspeed"] = "360"
          }
        },
        {
          id = 49,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = -24,
          y = 200,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 576,
          visible = true,
          properties = {
            ["pathspeed"] = "360"
          }
        },
        {
          id = 78,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 264,
          y = 200,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 576,
          visible = true,
          properties = {
            ["pathspeed"] = "360"
          }
        },
        {
          id = 84,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 136,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 576,
          visible = true,
          properties = {
            ["pathspeed"] = "360"
          }
        },
        {
          id = 86,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 136,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 576,
          visible = true,
          properties = {
            ["pathspeed"] = "360"
          }
        },
        {
          id = 91,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 64,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 576,
          visible = true,
          properties = {
            ["pathspeed"] = "360"
          }
        },
        {
          id = 48,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = -24,
          y = 168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 576,
          visible = true,
          properties = {
            ["pathspeed"] = "360"
          }
        },
        {
          id = 44,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 104,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 576,
          visible = true,
          properties = {
            ["pathspeed"] = "360"
          }
        },
        {
          id = 71,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = -8,
          y = 104,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 576,
          visible = true,
          properties = {
            ["pathspeed"] = "360"
          }
        },
        {
          id = 75,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 264,
          y = 168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 576,
          visible = true,
          properties = {
            ["pathspeed"] = "360"
          }
        },
        {
          id = 106,
          name = "",
          type = "",
          shape = "polyline",
          x = 0,
          y = 64,
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
          x = -16,
          y = 144,
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
          x = -24,
          y = 184,
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
          y = 64,
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
          x = 256,
          y = 144,
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
          x = 264,
          y = 200,
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
          x = -8,
          y = 104,
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
          x = -24,
          y = 168,
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
          x = 248,
          y = 104,
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
          x = 264,
          y = 168,
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
      id = 14,
      name = "demonize",
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
          height = 136,
          rotation = 0,
          visible = true,
          text = "Capture RED SOUL humans to DEMONIZE and bring them to your side!",
          fontfamily = "Unifont",
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
          gid = 528,
          visible = true,
          properties = {
            ["defeatitem"] = "ItemWingman",
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
          gid = 528,
          visible = true,
          properties = {
            ["defeatitem"] = "ItemWingman",
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
          gid = 504,
          visible = true,
          properties = {
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
          gid = 504,
          visible = true,
          properties = {
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
          gid = 504,
          visible = true,
          properties = {
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
          gid = 504,
          visible = true,
          properties = {
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
          gid = 504,
          visible = true,
          properties = {
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 126,
          name = "path",
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
        }
      }
    },
    {
      type = "objectgroup",
      id = 15,
      name = "shoot_capture",
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
          height = 136,
          rotation = 0,
          visible = true,
          text = "Using the controller:\n${joy_x} = MOVE\n${joy_fire} = FIRE\n\nSHOOT enemies before they shoot you!\nKnock them out and pick them up!",
          fontfamily = "Unifont",
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
          gid = 504,
          visible = true,
          properties = {
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
          gid = 504,
          visible = true,
          properties = {
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
          gid = 504,
          visible = true,
          properties = {
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
          gid = 504,
          visible = true,
          properties = {
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
          gid = 504,
          visible = true,
          properties = {
            ["pathmode"] = "relative",
            ["pathspeed"] = "360"
          }
        },
        {
          id = 23,
          name = "path",
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
            { x = 0, y = 176 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 16,
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
          text = "Welcome to DEMONIZER!",
          fontfamily = "Unifont",
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
      id = 17,
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
      id = 18,
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
      id = 19,
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
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 20,
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
