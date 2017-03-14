return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 18,
  height = 140,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 40,
  properties = {
    ["cameraid"] = 1,
    ["music"] = "mus/05 - Twilight Express.vgm",
    ["overlaymap"] = "gameui.lua",
    ["playerid"] = 3,
    ["script"] = "ShmupMap"
  },
  tilesets = {
    {
      name = "imp",
      firstgid = 1,
      filename = "img/imp.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/imp.png",
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
                properties = {
                  ["collidable"] = true
                }
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
                properties = {}
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
                properties = {}
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
                properties = {}
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
                properties = {}
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
                properties = {}
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
                properties = {}
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
                properties = {}
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
                properties = {}
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
            }
          }
        }
      }
    },
    {
      name = "demonshots",
      firstgid = 4,
      filename = "img/demonshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/demonshots.png",
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
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        }
      }
    },
    {
      name = "demonbomb",
      firstgid = 8,
      filename = "img/demonbomb.tsx",
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      image = "img/demonbomb.png",
      imagewidth = 512,
      imageheight = 256,
      tileoffset = {
        x = -64,
        y = 128
      },
      properties = {},
      terrains = {},
      tilecount = 8,
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
                x = -64,
                y = 128,
                width = 128,
                height = 128,
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
              duration = 50
            },
            {
              tileid = 1,
              duration = 50
            },
            {
              tileid = 2,
              duration = 50
            },
            {
              tileid = 3,
              duration = 50
            },
            {
              tileid = 4,
              duration = 50
            },
            {
              tileid = 5,
              duration = 50
            },
            {
              tileid = 6,
              duration = 50
            },
            {
              tileid = 7,
              duration = 50
            }
          }
        }
      }
    },
    {
      name = "demonizing",
      firstgid = 16,
      filename = "img/demonizing.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/demonizing.png",
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
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            }
          }
        }
      }
    },
    {
      name = "demonwomen",
      firstgid = 19,
      filename = "img/demonwomen.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/demonwomen.png",
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
            }
          }
        }
      }
    },
    {
      name = "basic_terrain",
      firstgid = 58,
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
          id = 300,
          terrain = { 10, 10, 10, -1 }
        },
        {
          id = 301,
          terrain = { 10, 10, -1, 10 }
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
      firstgid = 442,
      filename = "img/forest.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/forest.png",
      imagewidth = 192,
      imageheight = 384,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 288,
      tiles = {}
    },
    {
      name = "humanshots",
      firstgid = 730,
      filename = "img/humanshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/humanshots.png",
      imagewidth = 128,
      imageheight = 112,
      tileoffset = {
        x = -24,
        y = 8
      },
      properties = {
        ["commoncollision"] = 0,
        ["row_arrow"] = 2,
        ["row_ballista"] = 4,
        ["row_fire"] = 6,
        ["row_magic"] = 3,
        ["row_pike"] = 0,
        ["row_sword"] = 1,
        ["row_water"] = 5
      },
      terrains = {},
      tilecount = 28,
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
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 24,
          animation = {
            {
              tileid = 24,
              duration = 67
            },
            {
              tileid = 25,
              duration = 67
            },
            {
              tileid = 26,
              duration = 67
            },
            {
              tileid = 27,
              duration = 67
            }
          }
        }
      }
    },
    {
      name = "infmen",
      firstgid = 758,
      filename = "img/infmen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/infmen.png",
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
      name = "Earth",
      x = 0,
      y = 0,
      width = 18,
      height = 140,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJyF1luuo0oQRFHmP0TPwv5H3G6pkfZZJ/D9QH4AVVmR8cjXcRyfP9f153r/u/7+fv377+/3M//d1zv37vfOvHM/d797P997V57pvnc993oXa/e9i+dbd5955f4n69619QzvnLHr9uxnrv6+8rvPXuyx9rnvifV9pivPfbKOeK2ziHW/Lxyu4zcn+nnv2/WKd/9f/fQs91ov1lrYWNv7+Hmmrr/+637v8X/xerHv6/hZT89ob9uf9sbfSz/l0MWe936fY/fj/m/Vf98rHuWumu+5yyXfU1/tx8nzq+57fbl9/7Y/y5eqVbl/HT9rKt/kUHUvR+W465b777GPePV7+SjP6mnib39b0/LGJ79yj3Konm/NT15YvOyXGi3marz/FWt9bWmiXLCP9b6Tvc7jZ9/k4eJN/as9kuf6jB6t397PtL/6l/qrDhc/i/GL/b5lRzG2P8VMb3wdvzE1r5fmnzK+HlqvLs+WfrvmwkjuqYPu9eT79df2pXU4E1Xza87p2nqzutUnnbGKt7nY/om73laO13/bS7Ne7urf4m2OrFnHLG3+lMve993qUU55ffNDtWhOqd3lPcVYHC72kgOL5/pssZefS0vlunwoVt1Pj5YL5YP6LB7mVb/rxQvjNVvKE3X4YT9rvHjf/VuH/rbyR6ydDeSCc5nnqfbbj6XdaqF7qy/93lqKRXF2vigO/d66+rt7naztHOOn/rH4bl/kxYv7ntv5wixZ+a4/iquzzprRnjLaHuoRzhRydvnyOd7XP1rP0zznDKSmPLOZYrZap1rXr8Rb3vf9ZoYzUD3hZK8nT6kuzuMnB8z0+l5nhTWXOC88aUHfPcd7ns8zP+lN7jxpvPX2fEtH8uE6ftdVXO3H05ygd52s4bzyNB+W0/Kj9Tz1q56kp+l5cmjlsDNHn1maLBfE2Vxb+tEfiv3K5W98cmY1B+tJZsRnrOdcUb7ow2Kkz3QWMJvam+rGLFzzl9wpRkuXF/ve1/IBeai+6nvf/GB5j31cOWOmrz68WLN96LnkgHuaVytz9CCx01ut63P8xqd80sPLq84F9u0c95xBnFe+aar1vLlatzOI+dSr55Hj5e7FmtWSuKgvs9xZTLz0iWpAH1hnKO8/D88/zTfmrJrxnnvJuXp/uel65t3ycn2yulJTrcV+mwHln/7fczgbiZfeKqflyMm+7d+aoZ789Tp+Y2vGilXP03308vJDvxA//aLnU+Pqovf0BTFSQ3K899Y84JyjT5glelyf/eZ7S5/1E/tuDnXNcmp54DXW98yLw8WwfV1alMPWs/CrjvTU1vBiveW/rU/M+n6z0l7pda5TrKordawP6rH/N/eUq/pya5GL7Wu1Kf/1lnJTbMVF3/G8L9Y3A5xx+v6a6xZu5sjK1aWT8qyf57H7tLxF729f9Ebns/Zl+Yb1ta436+gf9r/8Kb/NfXPHechsbq3Lp5sLT168+lrut05nodUf63B28hm12bPrYcVhacTz9rmlaTOsPSin2oPW8W0eXDWZE2bC0tbKLPWq9sWy+OqfTz4sHn3XusTXOWdlYbFpXizPqa7ffH/K1uW7clNOVr89Y3msxrq3s5b5fh6/a+36xcjZr3zU69Ra+7B81zMtH3iaI1q3nNALVw6XW2JVznavYr+y3t8rl/WQD9+bv3qI/Fw5ebLnwtO6Fhf13WJobry4Lzfuuv4DLo5N5w=="
    },
    {
      type = "tilelayer",
      name = "Grass",
      x = 0,
      y = 0,
      width = 18,
      height = 140,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztmrtyGzEMRflpG9cZ1XHqOLXkOkmrRytZ35vFhGf2mLFWBO1JFc5wZFtaCMTj4gL0uZSym/dx3od5n+Z9nvdVf7vUn1/mva9/29fP8Ayb9/nMqT5/qJ/fVfnH+nqpfzvV90967ijdjvrbVc9d9HvIm+b9U/tB348ue8nku3b1fOe6n8vr9aPK2kv/Q/2+B+mwr3Je6nu/yt9rU2VgCz7n73iRXp/fkGGdLnU/v/Hevsq4pYs/j83az8V7n26893/9m/X9g+R8+SBZh3fK+jbvp7Jgy4iskPG1LPkGBrS5e2+RKyHjUJbcy8pBH3DpVOVl5WzLgnXos4YDt1bgzL4seBKvU8nn8Kbqg4zY4a/H8seHvX4LOdQG8HdXFgzuPR/+sizqzlT6z4e/kLOrr+eELrG2ZfE5stbw/9balKWeEYuhSzY3NvV5ahJny+rzlp3jNRuHscJGcRb8dE3KAS/w14i/Y4Vt8DNxRzxnbEyOwgfgQ1l/2cbGMbhKBjuQBS8DW7PxHCvOB09CzlRytnZ+ISuLY8ZUOCZxOGobzpTFHVbYBq54LUssjsSQc53XbD3kbPBJbDWS864Z5tm9+oS/oi5Ql103zHV79HCf4V4i5PX6jNqFj+gjwMTeGAK/qDXIydoYjHeOIy8Th3By+D+6jXIpYvGinc2xtp7i+4xO5nTn8hoT6QV77MR5zDXo7TJYZm6IXRyPGZ9tyoI97nt7dWnl0LNeB2TE4mzYZUSGdSI34YajfP5alllAFleRQV7BNcDXXln06OQBdjYv6/E9eEq+M+fgfFPJxSF4iKyRPEUn5wRye+MZO7seX0qeI7azEPKVHMv0BOAhGE1+TGWMt6APckb6ODALzhk2Gunj6AHRJ+SM9AX2ObO+DM+03801svxwK12u2tl8hyeA8dgni2fmPcbWrN9DjnGCOM7oEgv7EDMj/QD6gMue747OSODP2GeEa7g/JT+y8Wyu4VkCvKEnx9o8h69Sn6fSj83Mmolj+O5o70VuocuoHOb2cLHQbZTTueZksDkWeQoXp4ZlY9FymB0R2yP9YFtPp5LnQMwC8NNInsaiFlK7RjAeOfAMc5cMB2fWgn3hvWBajyziGEx2X+lZ25qtnKPMV+BT7gnuzRXo2elFfeflO6seOeiPTXz35Rq9di7nuO+d8Bt6rvU7zk3XG3izZa7lq2uWz8U5sfu9uR2zNevC8+ab1JBb9qFmcQbqX4ur2OiWnK0+iyyfC74KNq7pc9Cz6MOZiKF7nAN9fDa+u+WJa7EDdlH3qO/wHvy/pot1IpfwT5unvX2O7YPNjR89mOiz+Sy7kp+1IAt+ao7wXh71nllme9cQ+mVwfluWeMT/zt/MTIsYJrccmz06cSbb1vf3yLynE7jqeSq4Y15/T47vqoxl5H7v/JBcdTzzLNjT4/8WE496hcP0nAuft7N0bI1O9+R45uOc8D3RGja3ZwP3wArXr947VOv01v9+ZDgiPbd9jdzs3Ji84CzEc2ZO4vsdxzZ+H5kfOueJiawc5/oo94Wvkl8ZnG/lOAbJi5F5CzZBn2y/gxy4JWeaynhfQA8/2hdwLuzSm5/tcu+U7QlY4L3rBrmRmft6BsAdgfkUd05PdT/qZ37nnqntJ8FmsIQ6yfueDfpeCEzE574r8v+/eXbhe8mdNrzzN6QZYog="
    },
    {
      type = "tilelayer",
      name = "Trees",
      x = 0,
      y = 0,
      width = 18,
      height = 140,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztmj1Pw0AQRFEKCG2ANkDLRxmoA3VIHagD//8fsCc00siyDb63lizkJ22DcXy5yczuRdkvTk7WUddRN1G3Uduol6jXqFXURdRl1FXjmt/zEXUXdR/1EPUYtYt6i9q3PMOv+T1fUU0O8bf3jmf4td84xv98djyj79rMzMzMEM4iR5ZR5xV5sol7nqKeG9k7lK6sHkpXVg9lSFb3MUZWE70Kp4uf1yB6FdRviV4F9VuiV0H9dgq4L4hW7guilfuCaOW+IFqN4Qvtdy3STPtdizTTftcizWgOSTO639IsC5pjguSYsnAJc8zPHiTH/OxB8LPH1Jj7VztZ/Us5RlGOUZRj1OfKsVq9hXKsVu+C50at3gXPDYLnhs8eQ/Hc8NmjlrIWnz1qKWvJmMnLWjJmj0NSrh6TeuAKZqFYwyx0X5AsHMMXBPcFnTMF8ZZ7nHjLPU685R4n3vrP525B5xZ5jM4t8hidW+QxSub5fZP0OtskzXdJ+XyAmosj1HxqzN+39ON5OJUck2Y0x6QZzTFpRvu7NKOzszQj/d3nMdJXfR4jfXWMeSzjs1zIyOdCRj4XppLP8indZ/mU7rN8SvdZPqX7nP29KDm/+73k/O73kvO730tme7+XzPZjnAvm/GlHvYei3kP7snoP7cvqPfQ7LZFx3i3Qz3W2XvKFzyBDfCK95Ivm77v63oM/S3rJF83fd/W9h7ZnyRfN33f1vQc9y9fXttau7G8+y9fXtta/Zr+v7xvxy2jF"
    },
    {
      type = "objectgroup",
      name = "enemy4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 24,
          name = "trigger",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1728,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 25,
          name = "path",
          type = "",
          shape = "polyline",
          x = 144,
          y = 1664,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 176 },
            { x = 0, y = -272 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 26,
          name = "leader",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1664,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathtime"] = 7,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 27,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 1680,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 26,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 28,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 1680,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 26,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 29,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1696,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 26,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 30,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1712,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 26,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 31,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 1696,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 26,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 32,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1664,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 26,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 33,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1664,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 26,
            ["script"] = "NPCPikeman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "enemy3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 14,
          name = "trigger",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1776,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 15,
          name = "path",
          type = "",
          shape = "polyline",
          x = 192,
          y = 1728,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 64, y = 0 },
            { x = 0, y = 176 },
            { x = 0, y = -272 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 16,
          name = "leader",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1728,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["pathid"] = 15,
            ["pathtime"] = 7,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1760,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 16,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1744,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 16,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1744,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 16,
            ["script"] = "NPCPikeman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "enemy2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 4,
          name = "trigger",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1824,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 5,
          name = "path",
          type = "",
          shape = "polyline",
          x = 96,
          y = 1776,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -64, y = 0 },
            { x = 0, y = 176 },
            { x = 0, y = -272 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 6,
          name = "leader",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 1776,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["pathid"] = 5,
            ["pathtime"] = 7,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 1808,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 6,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 1792,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 6,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 13,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1792,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 6,
            ["script"] = "NPCPikeman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "enemy1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 34,
          name = "trigger",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1872,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 35,
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
            { x = 0, y = 176 },
            { x = 0, y = -336 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 36,
          name = "leader",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1824,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["pathid"] = 35,
            ["pathtime"] = 7,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1856,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 36,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 1840,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 36,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 1840,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 794,
          visible = true,
          properties = {
            ["leaderid"] = 36,
            ["script"] = "NPCPikeman"
          }
        }
      }
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
          name = "camera",
          type = "Camera",
          shape = "rectangle",
          x = 24,
          y = 1920,
          width = 240,
          height = 320,
          rotation = 0,
          visible = false,
          properties = {
            ["pathid"] = 2,
            ["pathtime"] = 60
          }
        },
        {
          id = 2,
          name = "path",
          type = "",
          shape = "polyline",
          x = 24,
          y = 1920,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = -1920 }
          },
          properties = {
            ["script"] = "LinearPath"
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
      name = "player",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 2272,
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
    }
  }
}
