return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 18,
  height = 100,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 188,
  properties = {
    ["cameraid"] = 1,
    ["music"] = "mus/05 - Twilight Express.vgm",
    ["nextmap"] = "village.lua",
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
      name = "sparks_med",
      firstgid = 28,
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
      name = "demonwomen",
      firstgid = 44,
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
      name = "humanshots",
      firstgid = 83,
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
      name = "basic_terrain",
      firstgid = 115,
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
      firstgid = 499,
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
      name = "trees",
      firstgid = 787,
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
      name = "trees_tall",
      firstgid = 790,
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
                type = "NPCCover",
                shape = "ellipse",
                x = -16,
                y = 40,
                width = 32,
                height = 32,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 3,
                name = "",
                type = "",
                shape = "ellipse",
                x = -10,
                y = 28,
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
      name = "infmen",
      firstgid = 793,
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
      firstgid = 883,
      filename = "img/infwomen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/infwomen.png",
      imagewidth = 432,
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
        ["column_princess"] = 15,
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
      name = "civmen",
      firstgid = 973,
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
    },
    {
      name = "catapult",
      firstgid = 1108,
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
      name = "black_harpy",
      firstgid = 1132,
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
      firstgid = 1144,
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
      firstgid = 1156,
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
      firstgid = 1168,
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
      firstgid = 1180,
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
      firstgid = 1192,
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
      firstgid = 1204,
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
      firstgid = 1216,
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
      firstgid = 1228,
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
      firstgid = 1240,
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
      firstgid = 1252,
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
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Earth",
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
      data = "eJx91lGOq0AMRNHHGthF+Efsf2VvRpqWbk7c+UAJNLTd5aqyz+Pfv+vnen6u19/1e3/+Pfv9f+fZul5ZW9/d+Wa9t75d73ftyTuNu/JZ+z3s3e8e3m/efefM+pV9V249wytn7L49+52r90/u++5DjCnOWhPrdaYn713ZR7yms4h1/084PMcnJ/q74na/4t3nUz09y9rrZK8JG3N7He9n6v7Ts8Z7Dc+L10nc83jPp2e0tq1Pa+P9pJ9y6CHmincdcz3Wsyn/tVY8yl0133OXS36nvlqPm/envNf+cnvdW5/Jl6pVuf8c7zmVb3Koupejctx9y/3XEEe8+r98lGf1NPG3vs1p8sadXxmjHKrnm/POC4uX9VKjxVyN91mx1tcmTZQL1rHedxPrPt7rJg8n3tS/WiN5rs/o0frteqf11b/UX3U48bMYn8T71juKsfUpZnrjeXxiar+eNL/r8fXQenV5Num3e04YyT110Fg736+/ti7Nw5momp/mnO6tN6tbfdIZq3jbF1s/cdfbyvH6b2tpr5e7+rd420emWcde2v5TLrvut9WjnPL65odq0T6ldifvKcbi8BBLDkw812eLvfyctFSuy4di1Xh6tFwoH9Rn8bBf9b9ePGE8zZbyRB1exDPHh++N3zz0t6n/iLWzgVxwLvM81X7rMWm3Wmhs9aXfm0uxKM7OF8Wh/5tX7xvrZm/nGH/1j4nv1kVenKx7bucLe8nU3/VHcXXWmWa0XY+2hnqEM4WcnXz5Hr7XP5rPbp5zBlJTntmeYm81T7WuX4m3vO/37RnOQPWEm1g7T6ku7uOdA/b0+l5nhWkucV7YaUHfvYfvPJ9n3ulN7uw03nx7vklH8uE5PvMqrtZjNyfoXTd7OK/s5sNyWn40n1296kl6mp4nh6Y+7MzRdyZNlgvibF+b9KM/FPupL3/jkzOrfbCeZI+4hv2cK8oXfViM9JnOAvam1qa6sRdO85fcKUaTLh/irmvyAXmovup73/xg8h7rOPUZe/pUh5M9W4eeSw4Y03419Rw9SOz0VvO6jk98yic9vLzqXGDd7mHNGcR55Zumms+Lq3k7g9ifevU8crzcfdizWhIX9WUvdxYTL32iGtAHpjOU99fm/d18Y59VM64ZS87V+8tN97PfTV6uT1ZXaqq5WG97QPmn//cczkbipbfKaTlyE7f1m2aonb8+xye29lix6nkaRy8vP/QL8dMvej41ri66pi+IkRqS412b5oG113/R8TV/"
    },
    {
      type = "tilelayer",
      name = "Grass",
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
      data = "eJylmU9v2zAMxfm1150Dn9ed252TnNNdFftqJ19pFsAf9KzSjuUJMFpY0vPjH5EUM5rZZX76+bnPzzA/4/z8mp8/thwf8/Pb16X5ecqet/n56e/vsibPXQOM3r8z+fcHx8vj5li9cOsrnLPPTb5vErxe1t2E2+Dz4MBlcKyHY/zwPW+BDpQbOJ3jTi4z+//KvqzPzwovY33JOrDB0P2Mh89nvPeA34e/Q+4a48N5jC7Dw+VXe6OX68reT5/Pe+9WbIj87KvlU2xsdff/B8F7Ot4p+C4cz1b8C58dHQMdJce5yncnW/pkZ8Vn8TXWPK2ci975nP09XNFb5++fMo+MT/8/fwe7diL3KO/xAWS5WLEVOlbfYz1r0Rk6mkQf6AaMZN/P1MP5Kk7n2Bcr9sFG6FnXw6n2Yd6jV5UL2RQHTrUf8h6bIyMY0dm5Be+QjfiCTZEz+u7a0LiA/YlJLTiKBZ/8dy0ebA18fksve/kQQ49i6Mi2q+18ZGTbRXmqdWQ+/X9iaW4EK4rPezHUD7MPnap1n45f55Q8NDeCRQy4yv78Lc6yxkSdJ37hi6OVmKrxopfvwFXn+Qsnznxei399VU+dF6k1kIlvtvgkeYPYkazEtBafJH6PVmqdVi55qGwZYziAoZySFbnW5NF8GvloZ6/jjtZx2L+Oc1GtFHGmbsAPo3NIvI9kUi7okXge5ZPHCh/iAD5GTbIlW8SHfIluwIvyG99de49/kUvgF/HvNvjAhVpty1fzdyMbIDP1OjXvlk203o6wqH3qOlExkm3H56jOjHjA+bmBFQ3lgczYoqVOIGYQi7HHlh6jgQ9r/FJ/beGDLcHTGnEvH63riMvUd631j9Y+6CXjpkacPPB7cJC1tfYAhzti5nMkRqvPa81/ZBA3M58jtUYe+LXWAK11r56vZCWX6t1oz+BsUB9o3dCCRQ7kvHOPQ749Ote+QJK9xI+9OuKcohs9E+DW9+5IRu6cyETcmex73QX3U4WndwH1P84rPk0cxb9OtqyzyUm9Lfscd4v7Hmcr9tN8QMyu4/ZaHNcYc/T8KRb9nbo3EdXTFqyp+xE6j+/Q83mv5t+t9E/qe7jOJ1vG46Gax5Z5Xa0TfI/eFjUaa+nBcI9fq6Xrey31FWeVXDja0o/W6gr4ci41lyYrPYWodqs5EdM1hyErONxV1gb+ifxw0p7JZUOmmhNcFAvdv8o9nFfuKMlKDOTBBls49DrQN7pOtuwtbelYB7FAez/4OP2rvTh6B0zCg3iy50wrH+0BUQftzV/YTGvZzInz0JIH6bVpjaB9wxYc5aO+1IqDT2tfvDVuknvqvuaRGkp/XyCmHanpsFOyNj+ucbS/Cl4rjvoQuqn7sC2cki3veUdwsJn2jo/yoe7Fn1vtBY7eV/JzpNemvXp4vYqFW3zIV+TBFhztOehvR/x29qqOYGis1xoT31zrh8BBf4+hNqRnoPUFc2t9D60DyKl5/z8JsNez"
    },
    {
      type = "objectgroup",
      name = "boss_paths",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PathGraph"
      },
      objects = {
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
        }
      }
    },
    {
      type = "objectgroup",
      name = "boss",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 153,
          name = "",
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
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 159,
          name = "boss",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 144,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 934,
          visible = true,
          properties = {
            ["pathid"] = "boss_paths",
            ["pathpicker"] = "random1way",
            ["script"] = "NPCPrincess"
          }
        }
      }
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
          gid = 791,
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
          gid = 791,
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
          gid = 791,
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
          gid = 791,
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
          gid = 791,
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
          id = 137,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 336,
          width = 288,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 84,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 364,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1036,
          visible = true,
          properties = {
            ["leaderid"] = 80,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 80,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 384,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1109,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["script"] = "VehicleCatapult"
          }
        },
        {
          id = 85,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 364,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1036,
          visible = true,
          properties = {
            ["leaderid"] = 81,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 81,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 384,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1111,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["script"] = "VehicleCatapult"
          }
        },
        {
          id = 130,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 352,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1036,
          visible = true,
          properties = {
            ["leaderid"] = 128,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 128,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 384,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1110,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["script"] = "VehicleCatapult"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "swordsmenarchers",
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
          y = 416,
          width = 288,
          height = 80,
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
          y = 720,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 832,
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
          y = 720,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 832,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 46,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 464,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
          visible = true,
          properties = {}
        },
        {
          id = 45,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 20,
          y = 464,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
          visible = true,
          properties = {}
        },
        {
          id = 49,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 468,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
          visible = true,
          properties = {}
        },
        {
          id = 54,
          name = "path",
          type = "",
          shape = "polyline",
          x = 44,
          y = 456,
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
          id = 56,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 44,
          y = 456,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 841,
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
          y = 424,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 841,
          visible = true,
          properties = {
            ["pathid"] = 54,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 58,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 236,
          y = 432,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 841,
          visible = true,
          properties = {
            ["pathid"] = 54,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 93,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 460,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
          visible = true,
          properties = {}
        },
        {
          id = 94,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 480,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
          visible = true,
          properties = {}
        },
        {
          id = 95,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 264,
          y = 456,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikemencatapults",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 117,
          name = "path",
          type = "",
          shape = "polyline",
          x = 80,
          y = 448,
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
          y = 448,
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
          x = 128,
          y = 512,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 117,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 120
          }
        },
        {
          id = 120,
          name = "pikemanleader",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 544,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 117,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 120
          }
        },
        {
          id = 122,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 528,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 117,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 120
          }
        },
        {
          id = 123,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 512,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 118,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 125
          }
        },
        {
          id = 125,
          name = "pikemanleader",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 544,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 118,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 125
          }
        },
        {
          id = 126,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 528,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 118,
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
          y = 544,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 135,
          name = "path",
          type = "",
          shape = "polyline",
          x = 80,
          y = 480,
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
          y = 480,
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
          id = 132,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 464,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1036,
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
          x = 224,
          y = 464,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1036,
          visible = true,
          properties = {
            ["leaderid"] = 134,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 136,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 496,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1110,
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
          id = 134,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 496,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1110,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["pathid"] = 133,
            ["pathspeed"] = 120,
            ["script"] = "VehicleCatapult"
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
          y = 704,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 832,
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
          y = 704,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 832,
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
          y = 672,
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
          y = 1020,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 922,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
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
          y = 880,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 832,
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
          y = 880,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 832,
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
          y = 736,
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
          y = 768,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 832,
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
          y = 784,
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
          y = 768,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 832,
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
          y = 848,
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
          y = 832,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1110,
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
          y = 832,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1110,
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
          y = 800,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1036,
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
          y = 800,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1036,
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
          y = 816,
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
          y = 816,
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
          y = 880,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 1110,
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
          y = 896,
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
          y = 896,
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
          y = 848,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 1036,
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
          y = 960,
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
          y = 1040,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
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
          gid = 788,
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
          gid = 788,
          visible = true,
          properties = {}
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
          y = 992,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 841,
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
          y = 1024,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 841,
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
          y = 1008,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 841,
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
          y = 1100,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 841,
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
          y = 1060,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 841,
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
          y = 1096,
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
          y = 1056,
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
          y = 1128,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
          visible = true,
          properties = {}
        },
        {
          id = 48,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1096,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
          visible = true,
          properties = {}
        },
        {
          id = 96,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1112,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
          visible = true,
          properties = {}
        },
        {
          id = 97,
          name = "tree",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1112,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
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
          y = 1056,
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
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1120,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 27,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1136,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 28,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1152,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 29,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 1088,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 30,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1120,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 31,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 1088,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 32,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 1136,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 25,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 33,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1120,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
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
          y = 1152,
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
          name = "pikewoman",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1088,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 919,
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
          y = 1152,
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
          y = 1168,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 5,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 10,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1184,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 5,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 12,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1168,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 5,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 13,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1184,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 5,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 23,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1184,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 15,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 22,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1168,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 15,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 20,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 1184,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
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
          y = 1168,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
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
          y = 1296,
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
          y = 1184,
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
          y = 1232,
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
          y = 1216,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 35,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 37,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 1216,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 35,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 38,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 1216,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
          visible = true,
          properties = {
            ["pathid"] = 35,
            ["pathmode"] = "relative",
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 39,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 1216,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 829,
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
          y = 1216,
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
          y = 1232,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1132,
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
          y = 1152,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1144,
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
          y = 1136,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1156,
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
          y = 1152,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1168,
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
          x = 224,
          y = 1200,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1180,
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
          y = 1152,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1192,
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
          y = 1232,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1204,
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
          x = 80,
          y = 1200,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1216,
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
          y = 1216,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 1228,
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
          y = 1184,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1240,
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
          y = 1200,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 1252,
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
          y = 1248,
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
          y = 1232,
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
      name = "trees1",
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
          gid = 788,
          visible = true,
          properties = {}
        },
        {
          id = 172,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1552,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
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
          gid = 788,
          visible = true,
          properties = {}
        },
        {
          id = 174,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1424,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
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
          gid = 788,
          visible = true,
          properties = {}
        },
        {
          id = 176,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1632,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
          visible = true,
          properties = {}
        },
        {
          id = 177,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1296,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 788,
          visible = true,
          properties = {}
        },
        {
          id = 178,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 1408,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 791,
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
          gid = 791,
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
          gid = 791,
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
          gid = 791,
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
          gid = 791,
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
          gid = 791,
          visible = true,
          properties = {}
        },
        {
          id = 184,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 1280,
          width = 48,
          height = 80,
          rotation = 0,
          gid = 791,
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
          gid = 788,
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
          gid = 788,
          visible = true,
          properties = {}
        },
        {
          id = 187,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1280,
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
            { x = 0, y = 8 },
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
          y = 1624,
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
