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
  nextobjectid = 316,
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
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      image = "img/playerhitbox.png",
      imagewidth = 8,
      imageheight = 8,
      tileoffset = {
        x = -4,
        y = 4
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
        ["commoncollision"] = 0
      },
      terrains = {},
      tilecount = 4,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "player"
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
        },
        {
          id = 1,
          properties = {
            ["name"] = "wingman"
          }
        },
        {
          id = 2,
          properties = {
            ["name"] = "bombpackage"
          }
        },
        {
          id = 3,
          properties = {
            ["name"] = "bombshrapnel"
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
      name = "demonizing",
      firstgid = 17,
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
      firstgid = 20,
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
      firstgid = 59,
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
        ["commoncollision"] = 0
      },
      terrains = {},
      tilecount = 32,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "pike"
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
          id = 4,
          properties = {
            ["name"] = "sword"
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "arrow"
          }
        },
        {
          id = 9,
          properties = {
            ["name"] = "firearrow"
          },
          animation = {
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
            }
          }
        },
        {
          id = 12,
          properties = {
            ["name"] = "magic"
          }
        },
        {
          id = 16,
          properties = {
            ["name"] = "ballista"
          }
        },
        {
          id = 20,
          properties = {
            ["name"] = "catapult"
          },
          animation = {
            {
              tileid = 20,
              duration = 67
            },
            {
              tileid = 21,
              duration = 67
            },
            {
              tileid = 22,
              duration = 67
            },
            {
              tileid = 23,
              duration = 67
            }
          }
        },
        {
          id = 24,
          properties = {
            ["name"] = "water"
          }
        },
        {
          id = 28,
          properties = {
            ["name"] = "fire"
          },
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
      firstgid = 91,
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
      firstgid = 475,
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
      properties = {},
      terrains = {},
      tilecount = 32,
      tiles = {}
    },
    {
      name = "bushes",
      firstgid = 507,
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
      properties = {},
      terrains = {},
      tilecount = 15,
      tiles = {}
    },
    {
      name = "trees",
      firstgid = 522,
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
      firstgid = 525,
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
      name = "fire",
      firstgid = 528,
      filename = "img/fire.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/fire.png",
      imagewidth = 320,
      imageheight = 64,
      tileoffset = {
        x = -32,
        y = 16
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
      name = "infmen",
      firstgid = 533,
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
      firstgid = 623,
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
      firstgid = 713,
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
      firstgid = 848,
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
      firstgid = 872,
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
      firstgid = 884,
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
      firstgid = 896,
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
      firstgid = 908,
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
      firstgid = 920,
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
      firstgid = 932,
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
      firstgid = 944,
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
      firstgid = 956,
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
      firstgid = 968,
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
      firstgid = 980,
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
      firstgid = 992,
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
      name = "sparks_small",
      firstgid = 1004,
      filename = "img/sparks_small.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/sparks_small.png",
      imagewidth = 128,
      imageheight = 32,
      tileoffset = {
        x = -8,
        y = 8
      },
      properties = {
        ["commonanimation"] = 0
      },
      terrains = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "enemydamage"
          },
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
        },
        {
          id = 8,
          properties = {
            ["name"] = "enemyguard"
          }
        }
      }
    },
    {
      name = "sparks_med",
      firstgid = 1020,
      filename = "img/sparks_med.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/sparks_med.png",
      imagewidth = 192,
      imageheight = 64,
      tileoffset = {
        x = -16,
        y = 16
      },
      properties = {},
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
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
            }
          }
        },
        {
          id = 6,
          properties = {
            ["name"] = "wingmanexplosion"
          },
          animation = {
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
            }
          }
        }
      }
    },
    {
      name = "sparks_huge",
      firstgid = 1032,
      filename = "img/sparks_huge.tsx",
      tilewidth = 96,
      tileheight = 96,
      spacing = 0,
      margin = 0,
      image = "img/sparks_huge.png",
      imagewidth = 480,
      imageheight = 384,
      tileoffset = {
        x = -48,
        y = 48
      },
      properties = {},
      terrains = {},
      tilecount = 20,
      tiles = {
        {
          id = 0,
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
                x = -42,
                y = 54,
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
      name = "particles",
      firstgid = 1052,
      filename = "img/particles.tsx",
      tilewidth = 4,
      tileheight = 4,
      spacing = 0,
      margin = 0,
      image = "img/particles.png",
      imagewidth = 16,
      imageheight = 16,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {
        ["commonanimation"] = 0
      },
      terrains = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "damage"
          },
          animation = {
            {
              tileid = 0,
              duration = 100
            },
            {
              tileid = 1,
              duration = 100
            },
            {
              tileid = 2,
              duration = 100
            },
            {
              tileid = 3,
              duration = 100
            }
          }
        },
        {
          id = 4,
          properties = {
            ["name"] = "guard"
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "powerdot"
          }
        }
      }
    },
    {
      name = "powergauge",
      firstgid = 1068,
      filename = "img/powergauge.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/powergauge.png",
      imagewidth = 64,
      imageheight = 32,
      tileoffset = {
        x = -16,
        y = 16
      },
      properties = {
        ["commoncollision"] = 0
      },
      terrains = {},
      tilecount = 2,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "notfull"
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
                name = "power1",
                type = "",
                shape = "ellipse",
                x = 1,
                y = 16,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 2,
                name = "power2",
                type = "",
                shape = "ellipse",
                x = 5,
                y = 18,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 3,
                name = "power3",
                type = "",
                shape = "ellipse",
                x = 8,
                y = 21,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 4,
                name = "power4",
                type = "",
                shape = "ellipse",
                x = 11,
                y = 24,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 5,
                name = "power5",
                type = "",
                shape = "ellipse",
                x = 13,
                y = 28,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 6,
                name = "power6",
                type = "",
                shape = "ellipse",
                x = 13,
                y = 33,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 7,
                name = "power7",
                type = "",
                shape = "ellipse",
                x = 11,
                y = 37,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 8,
                name = "power8",
                type = "",
                shape = "ellipse",
                x = 8,
                y = 40,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 9,
                name = "power9",
                type = "",
                shape = "ellipse",
                x = 5,
                y = 43,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 10,
                name = "power10",
                type = "",
                shape = "ellipse",
                x = 1,
                y = 45,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 11,
                name = "power18",
                type = "",
                shape = "ellipse",
                x = -11,
                y = 21,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 12,
                name = "power14",
                type = "",
                shape = "ellipse",
                x = -14,
                y = 37,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 13,
                name = "power15",
                type = "",
                shape = "ellipse",
                x = -16,
                y = 33,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 14,
                name = "power16",
                type = "",
                shape = "ellipse",
                x = -16,
                y = 28,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 15,
                name = "power12",
                type = "",
                shape = "ellipse",
                x = -8,
                y = 43,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 16,
                name = "power11",
                type = "",
                shape = "ellipse",
                x = -4,
                y = 45,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 17,
                name = "power13",
                type = "",
                shape = "ellipse",
                x = -11,
                y = 40,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 18,
                name = "power17",
                type = "",
                shape = "ellipse",
                x = -14,
                y = 24,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 19,
                name = "power19",
                type = "",
                shape = "ellipse",
                x = -8,
                y = 18,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 20,
                name = "power20",
                type = "",
                shape = "ellipse",
                x = -4,
                y = 16,
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
          id = 1,
          properties = {
            ["name"] = "full"
          }
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
      width = 18,
      height = 100,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJyll1tuxCAMRZMtwD9i/1ucn3akWD1zYiBMLUWtMsHP62tzHLm8fp9+Hkf9fdr193W935X32XLpCD3fSPjT/6Ej/Onnn75vpV25Kf/Q8Y6jXL6US9+uRDwNesoXvhWc7dJVB7oyfztsvxL/enKmJrG3856bOtARtmwje0d7Re8Cn4GxOD/CHWMMnxv8jbOsTRZrwTcV58OXrnfhq+vS8C7zP37reNr5mSP2POMu8ofnwk74xno0fU+/yS3EGvNI3ytsmJfCRti1v/Sp4lvinv3omtXzE08t0Uvsl8SO88X/iffw27jI8u/60if2nnXS/8wGMRT+Ew/tvD/GvfPtGIitfn7GkvU9cx29SBvGFnnEdQybnAH0lXUL6ecdrwW+WJpiCMnynPEi+YH19Xv330icY/oz43kKecEzK+u/UTzEpDnRM8P+hi1iiLzAeFl36qQv7pc4F0KOYU8YO56fsxzaL/qc9ZnPe48hhsiTrAd5gvnju/g+q0MWI+vo/qH+IjvhD3Nr3vEcyXYd7z2cP9yD/LvPsh+NKT/kBdfJ/GQMMX7Wnbkrye/EB235G+doxi301X1vzp7xivsj7Pndqi+IMXJmtkes+osYixg9y1bcTUxnPUecjXQR8953OvR6ZkZ83gs8h6Nu3vuy3Sjr3Yzv2Yvs42xny7iZ4v3CezF31plwZrC32cN9ocd4z+qywsVxfMbt/cKzZKZrlFeeYz9EDh0TOch3HvaeZzd5zr1h7Ph8TWxmO3Q2p8yn5n5i3rzIuOynez3LNfNNTGX3gpGQE/g9Y8hm+wgD1EduedoboYfc655Y+RFCLmKs2R4yE54LYZ2exOS7lfWv6kQ9o/5Z7aoUYtX+EENP9HCGh23zwEo8E2f7xUycZ8+1J3Wv8sFzkXwxOs++sT++OxJDzKe5yjzFucn8eV+knXbe7ZIXmXfvBbbJfuQcfykH7GfPOMZKG5xJ1uU92LzVzrtd3lNcB3M7a8M8sBasAzFPHz1LjAHbtGQzxzPeuWMf8H/fl5gf4injJuvhvuIdl7/NhHcX9xT7YyXenYhVPishdrt0spdW4lnuXWx37jg29vBTGe03I9zNYmMfeD/cicucsrMf0B/z1E7Nqcdc5d3hiRDTrNNOTG9hfcyvu3o8S3d3n9DDerFuO+K7Fnlx1x/ORsY3kh+CJUtH"
    },
    {
      type = "tilelayer",
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
      data = "eJzNWEsOxSAIrMex9z/gi4sm1vAbmPqcZbUwICB4XXtwt02K/oCqbc//LB8NORmZz3+9vb/1JD+GPY/u7sjK6vLketD0Vr9LvDSukkzLH1mbER9HdKzy5rjN6PQ4aJx6e+te93kcpPWetIVlv+V/xC8oF3ZsRfIiwqO3nD0eN+mcPS7ousWhWr8kWYjMbJ1h8vYQyV8thzO6onG10wcDrP5CyqXofxE+8z4kd2Zeay1/8nRevxU92RqDwjoPJI5Y2B2PFpixan2v6pnjC/Ufsn/tyWdocSwB7bG8+7dyd6H7vPqBnmnlfrL6i4yPpD3IuWaAzBNRVGdZK87X9QoisYLq0uaHLBjnz35bYII1TzBq0Cl3H/OcKn38HDfVGZxhE/qeEoH1xpKZ+aV1y68ZVGvi2gdHuFTqUCU3mW9BGqy7ml3Hrf4FfVv7YvZg+5d195xSmwe+6muysqoyT+kLpHum8sZwil0DLE7s/jKCHw7lJA8="
    },
    {
      type = "tilelayer",
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
      data = "eJzdmctu3DAMRfWrma4Lr5Ouk6zHXXey9WM7dn6vFsCDuSYo+dEs2hIQEtvSFUlRl5TmnlJqlzYsrV/auLT70p6X9p7W8rq0H9avW9qnGzPa+1765Hc/A4zBxkw2/yh4vX0fRLfB4Vzt22TjJsEb7N1s71p7Hu07OOgyWh/69+5Z52hlDnAaezeZzYzrrN8o3xQ7//+0tA/D+bW0b+Lb2f6qLbPg4G/FyDa9G9bF8Frrx3qwXvgX+747v6i/0e1TMGZ7p37pZFwecxPdFBu/9vY/+L3N0Tp93qwRk1dnz5PN5f2Ib5h3SuuYbMSf6ke1+yLvr+mxHnkM+6Sx9xFGJE167Jm7jIt8VhNszfqoz84Ic++Z33PDGclrEvHMUYy8rrpGZwTb/1f5qvWqxRfcsyU59mvrvvUdyXtxqPTN36cNLM1pYL24/uDkfRrZrxjwex/0J2eNBRzNaWDB98rF5Jsot76lB88pT5EHfQ4d7bt/P6c4B8G1HwGOx4eb+KY5MOJJcGaHo1iztBLXEhd5vsjPqpe3PYv6kXV4Tuv8g8DjWleoHtlerT949n3JH5pTIn3xZbY94jzy2c3GRFg3G1vieY1nnd/rXBMwNC+DdYSnm7Re57M8pvNu5R2tNzwXaB98VKuVqUV9/er7sKbRerJviCE/X+7DPs/Nx7zOQ10+2BjPT1q3ehz2FfuGvept01oxirEmPep6bOpTvF+xLRL0ZSw1redFdLoUcBrRhVq2xFE1wW44njNBLWeW4gssasPIj682/iXV82CtpvR1MXnjSF0GRpceNrMWEb+WBC4l57Eee/yoQv4iltkXUe7a0oe11PNXlJ9qovtBz7b3gziKlXXAL0fjVLHIBX9aP3+1wL1Rzt0S+DuP59xb2x8lyeuvHKd12V4s3V+c0YhtdPPn3FIuQRew4E7qMz3T+thSPeBMvZvQM7zi+HwDH+MP9rzXR+fXMzNYWtOwzzn3s299TrxKfz3rUmcpZ+g9QlT3TgEO+139w56P6ltwuhTrA1d0YhO5Trmsdl+BTfj0Ls/+XACWcr1yGDrpPVWpZvCiOZJ8q+cLfw9VEl/HcxfG3ckRHtI7I8YeuTvxWGfH/kvyt93bcD4/y/PUtXBSVPvtwdD7THjsCA7nLngUzCO1lL9HUA7hDLGnBoK34Q69a+V5L47e0SvXUdtt4eg6w8XYA8dmzC0fwbVap/I/dmFzbd2uMg4b9HcD7m/24CgX+3t6ao6tulVzhf6WAk9rftzSp01rftf4IZfpPX8kejaDn7GH+Oa8WtKHNde7I62h0ZO8WNIHm8AYZAx7XfN1SR9yl/42pLUGtrIGNRziTX+nQkfikHlqdhF3WmOon7VWKOmjsdyn9XkHvVTX0h5rZDxjiZnfY0pewg=="
    },
    {
      type = "tilelayer",
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
      data = "eJztmFsOxCAIRe3+N2mizjoaE82YpiAiKs54PptCL8ijrTHGfC6zFIc8H9OG2VF9QATAhvpMDD8531AsESktEnkZ6e8f2DFnEvW3en4d2sFm0u5gsdVqdeRuePMdr0n0T/TD3ePP+2bvx9E8Y+fmO9tR7W1HHiU0S+2jnevBpnrGzsIRejD3F3QfZZ7apCMkP5gNdHY+2YXrGxt0PrU5aJOO3POcnVDGk3PEqTuX9LhCExdf5Hk3smYNPadVgwZd5513TzSfm4Z5VfYWpoeqFdtPkeeu4P5v0vztrWFeQWjuh8OBwy/WdBkTd55w381no2EPcpCa855w1j05aqmBWi/16JDq05U1jf1XaK2HN1833Itm7A=="
    },
    {
      type = "objectgroup",
      name = "boss_paths",
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
      properties = {
        ["activatemusic"] = "mus/03 - Mighty Gals 2.vgm"
      },
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
            ["objectsinitiallayer"] = "ground",
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
          gid = 674,
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
        ["activatesound"] = "snd/alarm4.wav",
        ["fademusic"] = true
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
            ["objectsinitiallayer"] = "ground",
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
          gid = 526,
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
          gid = 526,
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
          gid = 526,
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
          gid = 526,
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
          gid = 526,
          visible = true,
          properties = {}
        },
        {
          id = 191,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 176,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
          visible = true,
          properties = {}
        },
        {
          id = 302,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 152,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 520,
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
          gid = 514,
          visible = true,
          properties = {}
        },
        {
          id = 304,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 517,
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
          gid = 508,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 508,
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
          gid = 514,
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
          id = 208,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 324,
          y = 176,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 851,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = false,
            ["pathid"] = 213,
            ["script"] = "VehicleCatapult"
          }
        },
        {
          id = 209,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 340,
          y = 156,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 776,
          visible = true,
          properties = {
            ["leaderid"] = 208,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 210,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = -36,
          y = 176,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 849,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = false,
            ["pathid"] = 212,
            ["script"] = "VehicleCatapult"
          }
        },
        {
          id = 211,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = -52,
          y = 156,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 776,
          visible = true,
          properties = {
            ["leaderid"] = 210,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 212,
          name = "path",
          type = "",
          shape = "polyline",
          x = -16,
          y = 112,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 64 },
            { x = 112, y = 176 },
            { x = 112, y = 368 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 213,
          name = "path",
          type = "",
          shape = "polyline",
          x = 336,
          y = 112,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 64 },
            { x = -144, y = 176 },
            { x = -144, y = 368 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 214,
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
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
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
          id = 195,
          name = "pikemanleader",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 205,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 196,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 368,
          y = 304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 205,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 197,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = -80,
          y = 304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 206,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 198,
          name = "pikemanleader",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 206,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 200,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 205,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 201,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = -112,
          y = 304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 206,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 202,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 205,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 203,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = -48,
          y = 304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 206,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 205,
          name = "path",
          type = "",
          shape = "polyline",
          x = 192,
          y = 160,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 96, y = 144 },
            { x = -32, y = 144 },
            { x = -32, y = 288 },
            { x = 48, y = 288 },
            { x = 48, y = 400 }
          },
          properties = {
            ["beziercurve"] = true,
            ["script"] = "PathGraph"
          }
        },
        {
          id = 206,
          name = "path",
          type = "",
          shape = "polyline",
          x = 80,
          y = 160,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -80, y = 144 },
            { x = 48, y = 144 },
            { x = 48, y = 288 },
            { x = -32, y = 288 },
            { x = -32, y = 400 }
          },
          properties = {
            ["beziercurve"] = true,
            ["script"] = "PathGraph"
          }
        },
        {
          id = 215,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 336,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "archerscatapults",
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
          y = 384,
          width = 288,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 84,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 400,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 776,
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
          x = 64,
          y = 420,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 849,
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
          x = 240,
          y = 400,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 776,
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
          x = 224,
          y = 420,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 851,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["script"] = "VehicleCatapult"
          }
        },
        {
          id = 57,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 512,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 581,
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
          x = 256,
          y = 416,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 581,
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
          y = 440,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 581,
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
        }
      }
    },
    {
      type = "objectgroup",
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
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 508,
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
          gid = 508,
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
          gid = 517,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "swordsmencatapults",
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
          y = 544,
          width = 288,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 141,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 576,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 572,
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
          y = 576,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 572,
          visible = true,
          properties = {
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 131,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 496,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 776,
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
          x = 224,
          y = 528,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 850,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["pathid"] = 133,
            ["pathspeed"] = 60,
            ["script"] = "VehicleCatapult"
          }
        },
        {
          id = 132,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 496,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 776,
          visible = true,
          properties = {
            ["leaderid"] = 136,
            ["script"] = "ShmupNPC"
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
          id = 136,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 528,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 850,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["pathid"] = 135,
            ["pathspeed"] = 60,
            ["script"] = "VehicleCatapult"
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
          x = 96,
          y = 496,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 112 },
            { x = -64, y = 112 },
            { x = -64, y = 272 },
            { x = 48, y = 272 },
            { x = 48, y = 400 },
            { x = -16, y = 400 }
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
          x = 192,
          y = 496,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 112 },
            { x = 64, y = 112 },
            { x = 64, y = 272 },
            { x = -48, y = 272 },
            { x = -48, y = 400 },
            { x = 16, y = 400 }
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
          y = 480,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 117,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 120,
          name = "pikemanleader",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 608,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 117,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 122,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 544,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 117,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 123,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 544,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 118,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 125,
          name = "pikemanleader",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 608,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 118,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 126,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 480,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 118,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 129,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 656,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 128,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 600,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 850,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["offscreenshot"] = true,
            ["pathid"] = 188,
            ["pathspeed"] = 60,
            ["script"] = "VehicleCatapult"
          }
        },
        {
          id = 130,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 568,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 776,
          visible = true,
          properties = {
            ["leaderid"] = 128,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 188,
          name = "path",
          type = "",
          shape = "polyline",
          x = 160,
          y = 576,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 16 },
            { x = -16, y = 128 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 23,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 512,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 118,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 13,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 512,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 117,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 10,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 576,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 117,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 20,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 576,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 118,
            ["script"] = "NPCPikeman"
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
          y = 752,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 572,
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
          y = 752,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 572,
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
          y = 720,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["objectsinitiallayer"] = "ground",
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
          gid = 662,
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
          y = 928,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 572,
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
          gid = 572,
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
            ["objectsinitiallayer"] = "ground",
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
          y = 816,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 572,
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
          y = 848,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 100,
          name = "swordsman",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 816,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 572,
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
          y = 912,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 77,
          name = "catapult",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 896,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 850,
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
          y = 896,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 850,
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
          y = 864,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 776,
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
          y = 864,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 776,
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
          y = 880,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 16 },
            { x = -16, y = 80 }
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
          y = 880,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = 16 },
            { x = -16, y = 80 }
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
          y = 928,
          width = 72,
          height = 72,
          rotation = 0,
          gid = 850,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 87,
            ["pathspeed"] = 90,
            ["script"] = "VehicleCatapult"
          }
        },
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
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
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
          id = 88,
          name = "operator",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 896,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 776,
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
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
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
          gid = 581,
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
          gid = 581,
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
          x = 48,
          y = 1104,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 581,
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
          x = 248,
          y = 1096,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 581,
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
            { x = -48, y = 8 },
            { x = 52, y = -8 },
            { x = 152, y = 8 }
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
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 148,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 148,
          y = 1072,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 581,
          visible = true,
          properties = {
            ["pathid"] = 52,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
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
          gid = 523,
          visible = true,
          properties = {}
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
          visible = true,
          properties = {}
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
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
          gid = 523,
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
          gid = 526,
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
          gid = 526,
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
          gid = 526,
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
          gid = 526,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 526,
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
          gid = 526,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
          visible = true,
          properties = {}
        },
        {
          id = 240,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1072,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 520,
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
          gid = 520,
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
          gid = 508,
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
          gid = 514,
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
          gid = 520,
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
          gid = 520,
          visible = true,
          properties = {}
        },
        {
          id = 257,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 1048,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 511,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
            { x = -48, y = 112 },
            { x = -48, y = 256 },
            { x = 48, y = 256 },
            { x = 48, y = 400 },
            { x = -48, y = 400 },
            { x = -48, y = 544 },
            { x = 48, y = 544 }
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
          x = 160,
          y = 1152,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
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
          x = 96,
          y = 1136,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
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
          x = 128,
          y = 1152,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
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
          y = 1120,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
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
          y = 1120,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
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
          x = 192,
          y = 1136,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
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
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 189,
          name = "pikewoman",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1120,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 659,
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
      name = "pikemen2b",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 33,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 1216,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 15,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 22,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 1216,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 15,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 15,
          name = "path",
          type = "",
          shape = "polyline",
          x = 256,
          y = 1328,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 32, y = -112 },
            { x = -80, y = -112 },
            { x = -80, y = 16 },
            { x = -176, y = 16 },
            { x = -176, y = 304 }
          },
          properties = {
            ["beziercurve"] = true,
            ["script"] = "PathGraph"
          }
        },
        {
          id = 16,
          name = "leader",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 1216,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 15,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 190,
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
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikemen2a",
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
          x = 56,
          y = 1200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -56, y = 32 },
            { x = 56, y = 32 },
            { x = 56, y = 160 },
            { x = 152, y = 160 },
            { x = 152, y = 448 }
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
          x = -48,
          y = 1232,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 12,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1232,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 41,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1200,
          width = 288,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 30,
          name = "pikeman",
          type = "",
          shape = "rectangle",
          x = -96,
          y = 1232,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
          visible = true,
          properties = {
            ["pathid"] = 5,
            ["script"] = "NPCPikeman"
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
          x = 96,
          y = 1216,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
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
          x = 160,
          y = 1216,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
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
          x = 128,
          y = 1216,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
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
          x = 192,
          y = 1216,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 569,
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
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
          }
        }
      }
    },
    {
      type = "objectgroup",
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 526,
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
          gid = 526,
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
          gid = 526,
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
          gid = 526,
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
          gid = 526,
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
          gid = 526,
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
          gid = 526,
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
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["objectsinitiallayer"] = "ground",
            ["triggertype"] = "activategroup"
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
          gid = 523,
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
          gid = 523,
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
          gid = 526,
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
          gid = 526,
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
          gid = 523,
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
          gid = 523,
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
          gid = 523,
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
          gid = 526,
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
          gid = 526,
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
          gid = 520,
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
          gid = 520,
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
          gid = 520,
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
          gid = 520,
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
          gid = 517,
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
          gid = 517,
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
          gid = 517,
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
          gid = 517,
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
          gid = 520,
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
          gid = 517,
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
          gid = 520,
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
          gid = 514,
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
          gid = 514,
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
          gid = 514,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
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
          gid = 528,
          visible = true,
          properties = {}
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
          x = 176,
          y = 1232,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 872,
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
          gid = 884,
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
          x = 160,
          y = 1168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 896,
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
          x = 192,
          y = 1152,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 908,
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
          x = 184,
          y = 1192,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 920,
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
          x = 96,
          y = 1168,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 932,
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
          gid = 944,
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
          x = 96,
          y = 1200,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 956,
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
          x = 144,
          y = 1216,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 968,
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
          gid = 980,
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
          gid = 992,
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
            ["objectsinitiallayer"] = "ground",
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
