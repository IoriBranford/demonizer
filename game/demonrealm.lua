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
  nextobjectid = 153,
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
      name = "playerhitbox",
      firstgid = 4,
      filename = "img/playerhitbox.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/playerhitbox.png",
      imagewidth = 32,
      imageheight = 32,
      tileoffset = {
        x = -16,
        y = 16
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "demonshots",
      firstgid = 5,
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
      firstgid = 9,
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
      name = "demonshothit",
      firstgid = 17,
      filename = "img/demonshothit.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/demonshothit.png",
      imagewidth = 64,
      imageheight = 32,
      tileoffset = {
        x = -8,
        y = 8
      },
      properties = {},
      terrains = {},
      tilecount = 8,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 16
            },
            {
              tileid = 1,
              duration = 16
            },
            {
              tileid = 2,
              duration = 16
            },
            {
              tileid = 3,
              duration = 16
            },
            {
              tileid = 4,
              duration = 16
            },
            {
              tileid = 5,
              duration = 16
            },
            {
              tileid = 6,
              duration = 16
            },
            {
              tileid = 7,
              duration = 16
            }
          }
        }
      }
    },
    {
      name = "demonizing",
      firstgid = 25,
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
      firstgid = 28,
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
      firstgid = 67,
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
      firstgid = 451,
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
      firstgid = 739,
      filename = "img/humanshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/humanshots.png",
      imagewidth = 128,
      imageheight = 128,
      tileoffset = {
        x = -24,
        y = 8
      },
      properties = {
        ["commoncollision"] = 0,
        ["row_arrow"] = 2,
        ["row_ballista"] = 4,
        ["row_catapult"] = 5,
        ["row_fire"] = 7,
        ["row_magic"] = 3,
        ["row_pike"] = 0,
        ["row_sword"] = 1,
        ["row_water"] = 6
      },
      terrains = {},
      tilecount = 32,
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
          id = 20,
          animation = {
            {
              tileid = 20,
              duration = 67
            },
            {
              tileid = 21,
              duration = 67
            }
          }
        },
        {
          id = 28,
          animation = {
            {
              tileid = 28,
              duration = 67
            },
            {
              tileid = 29,
              duration = 67
            },
            {
              tileid = 30,
              duration = 67
            },
            {
              tileid = 31,
              duration = 67
            }
          }
        }
      }
    },
    {
      name = "infmen",
      firstgid = 771,
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
    },
    {
      name = "infwomen",
      firstgid = 861,
      filename = "img/infwomen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/infwomen.png",
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
      name = "demonshothit",
      firstgid = 936,
      filename = "img/demonshothit.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/demonshothit.png",
      imagewidth = 64,
      imageheight = 32,
      tileoffset = {
        x = -8,
        y = 8
      },
      properties = {},
      terrains = {},
      tilecount = 8,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 16
            },
            {
              tileid = 1,
              duration = 16
            },
            {
              tileid = 2,
              duration = 16
            },
            {
              tileid = 3,
              duration = 16
            },
            {
              tileid = 4,
              duration = 16
            },
            {
              tileid = 5,
              duration = 16
            },
            {
              tileid = 6,
              duration = 16
            },
            {
              tileid = 7,
              duration = 16
            }
          }
        }
      }
    },
    {
      name = "trees",
      firstgid = 944,
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
                type = "NPCCover",
                shape = "ellipse",
                x = -20,
                y = 24,
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
      name = "black_harpy",
      firstgid = 947,
      filename = "img/friend/black_harpy.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/friend/black_harpy.png",
      imagewidth = 192,
      imageheight = 256,
      tileoffset = {
        x = -32,
        y = 32
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
                x = -16,
                y = 48,
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
      firstgid = 959,
      filename = "img/friend/devil_bug.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/friend/devil_bug.png",
      imagewidth = 96,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
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
                x = -12,
                y = 20,
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
      firstgid = 971,
      filename = "img/friend/ghost.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/friend/ghost.png",
      imagewidth = 96,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
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
                x = -12,
                y = 20,
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
      firstgid = 983,
      filename = "img/friend/goblin.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/friend/goblin.png",
      imagewidth = 96,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
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
                x = -12,
                y = 20,
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
      name = "harpy",
      firstgid = 995,
      filename = "img/friend/harpy.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/friend/harpy.png",
      imagewidth = 192,
      imageheight = 256,
      tileoffset = {
        x = -32,
        y = 32
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
                x = -16,
                y = 48,
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
      firstgid = 1007,
      filename = "img/friend/holstaurus.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/friend/holstaurus.png",
      imagewidth = 96,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
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
                x = -12,
                y = 20,
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
      name = "honey_bee",
      firstgid = 1019,
      filename = "img/friend/honey_bee.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/friend/honey_bee.png",
      imagewidth = 192,
      imageheight = 256,
      tileoffset = {
        x = -32,
        y = 32
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
                x = -16,
                y = 48,
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
      firstgid = 1031,
      filename = "img/friend/siren.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/friend/siren.png",
      imagewidth = 192,
      imageheight = 256,
      tileoffset = {
        x = -32,
        y = 32
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
                x = -16,
                y = 48,
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
      firstgid = 1043,
      filename = "img/friend/werebat.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/friend/werebat.png",
      imagewidth = 192,
      imageheight = 256,
      tileoffset = {
        x = -32,
        y = 32
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
                x = -16,
                y = 48,
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
      firstgid = 1055,
      filename = "img/friend/weresheep.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/friend/weresheep.png",
      imagewidth = 96,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
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
                x = -12,
                y = 20,
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
      firstgid = 1067,
      filename = "img/friend/youko.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/friend/youko.png",
      imagewidth = 96,
      imageheight = 128,
      tileoffset = {
        x = -16,
        y = 16
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
                x = -12,
                y = 20,
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
      name = "catapult",
      firstgid = 1079,
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
      properties = {
        ["column_angle0"] = 0,
        ["column_angle135"] = 3,
        ["column_angle180"] = 4,
        ["column_angle225"] = 5,
        ["column_angle270"] = 6,
        ["column_angle315"] = 7,
        ["column_angle45"] = 1,
        ["column_angle90"] = 2,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_empty"] = 2,
        ["row_windup"] = 0
      },
      terrains = {},
      tilecount = 24,
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
                x = -18,
                y = 54,
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
        }
      }
    },
    {
      name = "sparks_med",
      firstgid = 1103,
      filename = "img/sparks_med.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/sparks_med.png",
      imagewidth = 1024,
      imageheight = 64,
      tileoffset = {
        x = -32,
        y = 32
      },
      properties = {
        ["row_explosion"] = "0"
      },
      terrains = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 64
            },
            {
              tileid = 1,
              duration = 64
            },
            {
              tileid = 2,
              duration = 64
            },
            {
              tileid = 3,
              duration = 64
            },
            {
              tileid = 4,
              duration = 64
            },
            {
              tileid = 5,
              duration = 64
            },
            {
              tileid = 6,
              duration = 64
            },
            {
              tileid = 7,
              duration = 64
            },
            {
              tileid = 8,
              duration = 64
            },
            {
              tileid = 9,
              duration = 64
            }
          }
        }
      }
    },
    {
      name = "civmen",
      firstgid = 1119,
      filename = "img/civmen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/civmen.png",
      imagewidth = 648,
      imageheight = 160,
      tileoffset = {
        x = -12,
        y = 16
      },
      properties = {
        ["column_civ1"] = 0,
        ["column_civ2"] = 3,
        ["column_civ3"] = 6,
        ["column_civ4"] = 9,
        ["column_civ5"] = 12,
        ["column_civ6"] = 15,
        ["column_civ7"] = 18,
        ["column_civ8"] = 21,
        ["column_civ9"] = 24,
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_down"] = 2,
        ["row_ko"] = 4,
        ["row_left"] = 3,
        ["row_right"] = 1,
        ["row_up"] = 0
      },
      terrains = {},
      tilecount = 135,
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
      data = "eJyF1kGS40gMQ1F7o/D9r6hb2JueihlF/3oF1SwUliVlJgkCIM/H4/H553o9H4/349/r6//537Ov++P599l1Xd8dWfd1/+Lba+31fd99fXtmj+vdFc+1X+8/rOuz4/k97n5z3Xf/V2JrDu/k2H2b+/H8e/X/K//7bfHtup5zvRPrM/Fe332yj3itXMS69wuH1/MnJ/p7ndv9inefr3qay7XXyV4LG2O7rp5/XetZz2uu5efr+T2O8q7xNEdr2/ocz5+1M4fyuRxqvuXw57HrcT1b8V/vike5q+abd7nkOvXVehx8v+K+9pfb78f32OsRaqValfuv5/eYyjc5VN3LUTnuvuV+c9ELljeVj/Ksnib+1rcxLW+88yvPKIfq+cZ854XFy3qp0WKuxo+RV/PpGXKrXLCO9b6Ds64c5GUxWt6jX7vvSQzNqVh8OLOxGvPSX3W4+FmMT877rXcUY+tTzPTG8/ETU/v10vxdj6+H1qs/xKN+u+fCSO6pg5515/v119alcTgTVfNrzuneerO61SedsV7Pn/j12d1spbeV4/Xf1tJeL3f1b/G2j6xZx17a/lMu+9611aOc8vrND9WifUrtLu8pxuJQ75cza97SW6qJxc+lpXJdPhSrnqdHy4XyQX0WD/tV7/XihfGaLeWJOqw+lu91llrnNw79bfUfsXY2kAvOZeZT7bceS7vVQs9WX/q9sRSL4ux8URx637j6v2e1jmuO8Vf/WHy3LvKivW/NQs4X9pLV3/VHcXXWWTPaXY+2hnqEM4WcXb58jPX6R+O5m+ecgdSUOdtT7K3Gqdb1K/GW913fnuEMVE/o981BT6kurvovjyn/qw3r1to7Qywt6LvHWGd+5nynN7lzp/HzJr+lI/nwev6Mq7haj7s5Qe8qb+/mv/W+nJYfjeeuXvUkPU3Pk0OrDztz9JulyfeIzXlI/14zmrypLsXujk/OrPbBepI9onV3NnCv5cNipM90FrA3tTbVjb1wzV9ypxgtXXZdc10+IA/VV33vNz9Y3mMdV5+xp686nOzZOjQvOeCZ9qvVc/QgsdNbjevz+InPcZOzs2PnAutWnNRw82+ev2nqJP67HuYMYn/q1XzkeLlbXtpjxUV92cudxcRLn3iPGJY29X/50e/v5hv7rJrxnWfJuZMcygM9YOVaTuiT1ZWaaizW2x5Q/un/zcPZSLz0VjktRw4wbv3WDHXnr+X+6lHOIfbSnqOXlx/6hfjpF81PjauLvtMXxEgNyfG+W/OAc44+YS/R417Edud7S5/1E+tuH+qe5dTywNfY35wXh4th67q0KIeNZ+FXHempjaEx91e86h3FrOvbK62VXuc+xaq6Usf6oB77f3NPuaovNxa52LpWm/Jfbyk3xVZc9B3zPdnfHuCM0/Vrrlu42UdWX106Kc/6ezx3nZa36P2ti97ofNa6LN8wvsb1Zh/9w/qXP+W3fd++4zxkb26sy6fbF+68eNW13G+czkKrPsbh7OQ3arO562HFYWnEfPvd0rQ9rDUop1qDxvHbPLhisk/YE5a2Vs9Sr2pfLIuv/nnnw+LRtcYlvs45qxcWm/aL5TnV9Zv7u966fFduysnqtzmWx2qsZztr2d+7d/vG8k9nv/JRr1NrrcPyXXNaPnA3RzRuOaEXrj5cbolVOduziv3q9f5ffVkPaS+oZlvz+poeYZ88wGbhaVyLi/puMbRvlIPNoVz+uv4ADWCXVg=="
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
      data = "eJztmstu2zAQRef36qwLr5Ou266trNNuJWsrW79aDcoD3jBSxGGCAgVEgHCix/VwXrwz9GRm3TKvyxyWOS5zWuYs127p7/sy+3StT8/wDpP7PDOm94f0fJfwr+nzlq6N6f4o711Ftqtcm+W9m/zveF+W+Uvmg3w/svSCyXd1aX1Tms/2erwkrF7kH9L3PYgMfcK5p3u/7e04Jwx0wXP6HXeR6+sKhsp0S/N55V6fMLZk0efRWfmc3ztt3DvGvxk/Pwnn8ZOwhg9ifV/mD8u5pQXLMb5ZjjdyQBm7e4NYcYzBcuxFcZCHvDQmvCjOxXKuQ5738sDW8DzTW84n/rmXB7ZwRsHw6fZ6sr82rLWb47A3kH87yzm4dn3YS7HYdyLrw17gdOlzCsji42LZ5mC9l/+3xtnyfoYvuizR2Din99mTWFtUnjU9+2fUD324jnwt2GkO4pAvsFeLvX24brAzfoc/R3RMjMIH4ENRe6mONY/BVSK5Ayx4Gbk16s8+fH3wJHCiutb4AiuaxzSnwjHxw1bdsKZo3mG4buCKs2VfbPEhjXU+o/sha4NPoquWmNc9Q3l2rTxuL98X2Jd131CuWyOH1hlaSzherc3Yu7ARdQQ5sdaHyF/sNeBEdUyO1xgHL+KHcHL4P7K1cil88SYzGmPlfortIzIpp5vsdU6kFqzRE+tRrkFtF8llyg3Ri/pjxGZny7lH696WGCWXss+38DrWhl5aMFQmYhNu2MrnZ8u9gGheBYO4gmuQX2uxqNGJA/SsvKzG9uRT4p0+B+uL+iH5EKyWOEUmjQlwa/0ZPet+fLM4Ryx7IcQrMRapCciH5Gjio5W3TIF3jnGMYxzjGB8f1Pplb4naYq3nxDtPMsnhuu8rv1zbN503Kl/UXgF1zKNljsGZhuIoD2Zv5ZyAd7TPiCylPPSV2MPov8P/BrkOj1vr8W3177l+kuucA5zs/+31q/+s+dHWO/gWE34DF1Fuu8VvqVvhQp3lHqfyEvC2aiN6ePgvXBE76jzZW5shn/KiCMdHH2Xtj3/sYWgfAP1Fa1Pl8moHOGsNVhmLcG/6tdTxezzzLO8iD2siP9ScPVAnIQ/xT21LvqnBIU9Rd8GhqZtqbH2xXI+S87T/U9uvK/UDl8fPa3uZ1DnIor2aaK8FLGoUrZmjZzJa31KjtPYyy7MGly8SFxfLdS32pzaN9rTwYWJLfTMSX6pbPb8Hc08m+jXaT6WfTozVrE3PqvT3AcR+bf+Qfp/6M++Sk2vsz3mD+o32IfHrGv3o7yrKszNk2sPRno/GhJ4TXStwWBt5j1xBno6coapMa7/9iJzpwpnU1uBG+8bEBWvBnyN9Ej3fUd/G7i39Q415fCKKo7FOL6mlD4nt8b/omRU46oPERcu5OTpBnrkRh/4sa2rpjXJGCB9s0Q049Pwi8VkOuCn50TGjZwXke903iI1I31fPqOHByqfgnXDxkptrjac9Uc3N5BL2Se5rb1DPhciJ2FzPivT3b8hNDBM/nUw46h9WjjJb"
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
      data = "eJzt2rkOwjAQBFArP8DRcrQcLUcJ1EANqYEa+P+KaUZaWQkoXiOCNE+aBmdJ5GCa3bIIYYJMkRkyR/bIATkiA2SIjJBxtGZrbsgCWSIrZI2ckDNSVtzDrtmaJxK74LNrzT3s2id3XPOouce7NRERERERERERERERERGRf9YrQuhn6IWyb+zFvrEX+8a/tsEzbAv/PrMf791n9uO9+8x+vHef2Y/Phfu9S/hOW2vnH5qytXb+oSlb22T+IWZrPfMP35id0P9PtQ5quxmeg3M9qWeCONeTeiaIcz2pZyKWeiZi3t917vflPRd8X95zwffVlnPRVi8gUCcN"
    },
    {
      type = "objectgroup",
      name = "preboss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["activatemusic"] = "mus/03 - Mighty Gals 2.vgm",
        ["activatesound"] = "snd/alarm4.wav"
      },
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
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "archers3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 137,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 352,
          width = 288,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 95,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 264,
          y = 400,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 945,
          visible = true,
          properties = {}
        },
        {
          id = 94,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 52,
          y = 416,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 945,
          visible = true,
          properties = {}
        },
        {
          id = 93,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 156,
          y = 400,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 945,
          visible = true,
          properties = {}
        },
        {
          id = 58,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 236,
          y = 376,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 819,
          visible = true,
          properties = {
            ["pathid"] = 54,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 57,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 140,
          y = 368,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 819,
          visible = true,
          properties = {
            ["pathid"] = 54,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 56,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 44,
          y = 400,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 819,
          visible = true,
          properties = {
            ["pathid"] = 54,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 54,
          name = "path",
          type = "",
          shape = "polyline",
          x = 44,
          y = 400,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 96, y = -16 },
            { x = 192, y = -16 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 49,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 408,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 945,
          visible = true,
          properties = {}
        },
        {
          id = 45,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 20,
          y = 408,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 945,
          visible = true,
          properties = {}
        },
        {
          id = 46,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 124,
          y = 408,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 945,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "catapults3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 133,
          name = "path",
          type = "",
          shape = "polyline",
          x = 208,
          y = 416,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 16 },
            { x = -16, y = 96 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 135,
          name = "path",
          type = "",
          shape = "polyline",
          x = 112,
          y = 416,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 16 },
            { x = -16, y = 96 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 136,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 432,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1081,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["pathid"] = 135,
            ["pathspeed"] = 120,
            ["script"] = "VehicleCatapult"
          }
        },
        {
          id = 132,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 432,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1182,
          visible = true,
          properties = {
            ["leaderid"] = 136,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 131,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 432,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1182,
          visible = true,
          properties = {
            ["leaderid"] = 134,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 134,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 432,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1081,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["pathid"] = 133,
            ["pathspeed"] = 120,
            ["script"] = "VehicleCatapult"
          }
        },
        {
          id = 139,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 448,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 128,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 440,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1081,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["pathid"] = 138,
            ["pathspeed"] = 120,
            ["script"] = "VehicleCatapult"
          }
        },
        {
          id = 138,
          name = "path",
          type = "",
          shape = "polyline",
          x = 160,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 0 },
            { x = -16, y = 56 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 130,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 408,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1182,
          visible = true,
          properties = {
            ["leaderid"] = 128,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 82,
          name = "path",
          type = "",
          shape = "polyline",
          x = 32,
          y = 480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -32, y = -16 },
            { x = 32, y = 48 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 83,
          name = "path",
          type = "",
          shape = "polyline",
          x = 288,
          y = 480,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -16 },
            { x = -64, y = 48 }
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
          x = -32,
          y = 432,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1182,
          visible = true,
          properties = {
            ["leaderid"] = 80,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 85,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 432,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1182,
          visible = true,
          properties = {
            ["leaderid"] = 81,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 80,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 448,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1080,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["pathid"] = 82,
            ["pathspeed"] = 120,
            ["script"] = "VehicleCatapult"
          }
        },
        {
          id = 81,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 448,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1082,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["pathid"] = 83,
            ["pathspeed"] = 120,
            ["script"] = "VehicleCatapult"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "swordsmen5",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 140,
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
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 141,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 688,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 810,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 142,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 688,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 810,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 151,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = -32,
          y = 672,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 810,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 150,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 672,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 810,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikemen4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 116,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 480,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 117,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 120
          }
        },
        {
          id = 117,
          name = "path",
          type = "",
          shape = "polyline",
          x = 80,
          y = 416,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 112 },
            { x = -80, y = 192 },
            { x = 80, y = 336 },
            { x = 0, y = 416 }
          },
          properties = {
            ["beziercurve"] = true,
            ["script"] = "PathGraph"
          }
        },
        {
          id = 118,
          name = "path",
          type = "",
          shape = "polyline",
          x = 208,
          y = 416,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 112 },
            { x = 80, y = 192 },
            { x = -80, y = 336 },
            { x = 0, y = 416 }
          },
          properties = {
            ["beziercurve"] = true,
            ["script"] = "PathGraph"
          }
        },
        {
          id = 119,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 496,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 117,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 120
          }
        },
        {
          id = 120,
          name = "pikemanleader",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 512,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 117,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 120
          }
        },
        {
          id = 121,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 480,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 117,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 120
          }
        },
        {
          id = 122,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 496,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 117,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 120
          }
        },
        {
          id = 123,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 496,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 118,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 125
          }
        },
        {
          id = 124,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 480,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 118,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 125
          }
        },
        {
          id = 125,
          name = "pikemanleader",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 512,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 118,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 125
          }
        },
        {
          id = 126,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 496,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 118,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 125
          }
        },
        {
          id = 127,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 480,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 118,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 125
          }
        },
        {
          id = 129,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 512,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "swordsmen4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 107,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 720,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 810,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 106,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = -12,
          y = 720,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 810,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 101,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = -12,
          y = 848,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 810,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 102,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 848,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 810,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 113,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 688,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 114,
          name = "swordswoman",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1024,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 894,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "swordsmen3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 108,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 1040,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 810,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 109,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = -12,
          y = 1040,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 810,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 110,
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
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "swordsmen2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 103,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = -12,
          y = 928,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 810,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 104,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 928,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 810,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 105,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 784,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "swordsmen1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 98,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 800,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 810,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 99,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 816,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 100,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 800,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 810,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "catapults2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
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
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 77,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 864,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1081,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["pathid"] = 91,
            ["pathspeed"] = 120,
            ["script"] = "VehicleCatapult"
          }
        },
        {
          id = 78,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 864,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1081,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["pathid"] = 92,
            ["pathspeed"] = 120,
            ["script"] = "VehicleCatapult"
          }
        },
        {
          id = 89,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 832,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1182,
          visible = true,
          properties = {
            ["leaderid"] = 77,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 90,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 832,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1182,
          visible = true,
          properties = {
            ["leaderid"] = 78,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 91,
          name = "path",
          type = "",
          shape = "polyline",
          x = 96,
          y = 848,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 16 },
            { x = -16, y = 112 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 92,
          name = "path",
          type = "",
          shape = "polyline",
          x = 224,
          y = 848,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 16 },
            { x = -16, y = 112 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "catapults1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 75,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 912,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1081,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 87,
            ["pathspeed"] = 120,
            ["script"] = "VehicleCatapult"
          }
        },
        {
          id = 79,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 928,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 87,
          name = "path",
          type = "",
          shape = "polyline",
          x = 160,
          y = 928,
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
          id = 88,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 880,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1182,
          visible = true,
          properties = {
            ["leaderid"] = 75,
            ["script"] = "ShmupNPC"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "archers2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 55,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 992,
          width = 288,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 143,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1072,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 945,
          visible = true,
          properties = {}
        },
        {
          id = 144,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1040,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 945,
          visible = true,
          properties = {}
        },
        {
          id = 145,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1056,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 945,
          visible = true,
          properties = {}
        },
        {
          id = 146,
          name = "path",
          type = "",
          shape = "polyline",
          x = 48,
          y = 1024,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 16, y = 0 },
            { x = 96, y = 32 },
            { x = 176, y = 16 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 147,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1024,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 819,
          visible = true,
          properties = {
            ["pathid"] = 146,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 148,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1056,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 819,
          visible = true,
          properties = {
            ["pathid"] = 146,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 149,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1040,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 819,
          visible = true,
          properties = {
            ["pathid"] = 146,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "archers1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 50,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 1132,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 819,
          visible = true,
          properties = {
            ["pathid"] = 52,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 51,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 216,
          y = 1092,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 819,
          visible = true,
          properties = {
            ["pathid"] = 52,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 52,
          name = "path",
          type = "",
          shape = "polyline",
          x = 96,
          y = 1128,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 8 },
            { x = 120, y = -12 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 53,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1088,
          width = 288,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 47,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1160,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 945,
          visible = true,
          properties = {}
        },
        {
          id = 48,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1128,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 945,
          visible = true,
          properties = {}
        },
        {
          id = 96,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1144,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 945,
          visible = true,
          properties = {}
        },
        {
          id = 97,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1144,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 945,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikemen3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 25,
          name = "path",
          type = "",
          shape = "polyline",
          x = 144,
          y = 1080,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 112 },
            { x = -80, y = 192 },
            { x = 80, y = 336 },
            { x = 0, y = 416 }
          },
          properties = {
            ["beziercurve"] = true,
            ["script"] = "PathGraph"
          }
        },
        {
          id = 26,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1144,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 27,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1160,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 28,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1176,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 29,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 1112,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 30,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1144,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 31,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 1112,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 32,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 1160,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 33,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1144,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 42,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1176,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 43,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1112,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 891,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikemen2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 5,
          name = "path",
          type = "",
          shape = "polyline",
          x = 120,
          y = 1192,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -56, y = 32 },
            { x = 40, y = 112 },
            { x = -72, y = 416 }
          },
          properties = {
            ["beziercurve"] = true,
            ["script"] = "PathGraph"
          }
        },
        {
          id = 6,
          name = "leader",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1208,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 5,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1224,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 5,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1208,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 5,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 13,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1224,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 5,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1224,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 15,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1208,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 15,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1224,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 15,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 16,
          name = "leader",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1208,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 15,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 15,
          name = "path",
          type = "",
          shape = "polyline",
          x = 192,
          y = 1336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 32, y = -112 },
            { x = -64, y = -32 },
            { x = 48, y = 272 }
          },
          properties = {
            ["beziercurve"] = true,
            ["script"] = "PathGraph"
          }
        },
        {
          id = 41,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1224,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikemen1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 35,
          name = "path",
          type = "",
          shape = "polyline",
          x = 144,
          y = 1256,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -16 },
            { x = 0, y = 368 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 36,
          name = "leader",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 1240,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 35,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 1240,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 35,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 1240,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 35,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 1240,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 807,
          visible = true,
          properties = {
            ["pathid"] = 35,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 40,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1240,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
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
      properties = {
        ["activatesound"] = "snd/scream.wav"
      },
      objects = {
        {
          id = 60,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1256,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 947,
          visible = true,
          properties = {
            ["pathid"] = 74,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linearDown",
            ["pathspeed"] = 300,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 61,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 1176,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 959,
          visible = true,
          properties = {
            ["pathid"] = 74,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linearDown",
            ["pathspeed"] = 240,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 62,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 1160,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 971,
          visible = true,
          properties = {
            ["pathid"] = 74,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linearDown",
            ["pathspeed"] = 240,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 63,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1176,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 983,
          visible = true,
          properties = {
            ["pathid"] = 74,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linearDown",
            ["pathspeed"] = 240,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 64,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1240,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 995,
          visible = true,
          properties = {
            ["pathid"] = 74,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linearDown",
            ["pathspeed"] = 300,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 65,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1176,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1007,
          visible = true,
          properties = {
            ["pathid"] = 74,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linearDown",
            ["pathspeed"] = 240,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 66,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1256,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1019,
          visible = true,
          properties = {
            ["pathid"] = 74,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linearDown",
            ["pathspeed"] = 300,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 69,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1240,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1031,
          visible = true,
          properties = {
            ["pathid"] = 74,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linearDown",
            ["pathspeed"] = 300,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 70,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 1240,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1043,
          visible = true,
          properties = {
            ["pathid"] = 74,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linearDown",
            ["pathspeed"] = 300,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 71,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1208,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1055,
          visible = true,
          properties = {
            ["pathid"] = 74,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linearDown",
            ["pathspeed"] = 240,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 72,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 1224,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1067,
          visible = true,
          properties = {
            ["pathid"] = 74,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linearDown",
            ["pathspeed"] = 240,
            ["script"] = "ShmupFriend"
          }
        },
        {
          id = 73,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1272,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 74,
          name = "path",
          type = "",
          shape = "polyline",
          x = 0,
          y = 1256,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 832 }
          },
          properties = {
            ["script"] = "PathGraph"
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
          y = 1304,
          width = 240,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {
            ["pathid"] = 2,
            ["pathmode"] = "relative",
            ["pathspeed"] = 30
          }
        },
        {
          id = 2,
          name = "path",
          type = "",
          shape = "polyline",
          x = 24,
          y = 1304,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = -1304 }
          },
          properties = {
            ["script"] = "PathGraph"
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
          y = 1656,
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
