return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 36,
  height = 265,
  tilewidth = 8,
  tileheight = 8,
  nextobjectid = 468,
  properties = {
    ["cameraid"] = 7,
    ["delayinitobjects"] = true,
    ["music"] = "mus/09 - Blue Sky Laundry.vgm",
    ["overlaymap"] = "gameui.lua",
    ["playerid"] = 1,
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
      name = "demonizing",
      firstgid = 4,
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
      firstgid = 7,
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
      name = "demonshots",
      firstgid = 46,
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
      firstgid = 50,
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
      name = "infwomen",
      firstgid = 58,
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
      name = "infmen",
      firstgid = 148,
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
      name = "boat",
      firstgid = 238,
      filename = "img/boat.tsx",
      tilewidth = 128,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/boat.png",
      imagewidth = 128,
      imageheight = 64,
      tileoffset = {
        x = -64,
        y = 64
      },
      properties = {},
      terrains = {},
      tilecount = 1,
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
                id = 6,
                name = "",
                type = "",
                shape = "rectangle",
                x = -64,
                y = 64,
                width = 112,
                height = 48,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              },
              {
                id = 8,
                name = "",
                type = "",
                shape = "ellipse",
                x = 16,
                y = 64,
                width = 48,
                height = 48,
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
      name = "ballista",
      firstgid = 239,
      filename = "img/ballista.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/ballista.png",
      imagewidth = 512,
      imageheight = 192,
      tileoffset = {
        x = -32,
        y = 32
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
                x = -24,
                y = 40,
                width = 48,
                height = 48,
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
              duration = 967
            },
            {
              tileid = 0,
              duration = 250
            },
            {
              tileid = 8,
              duration = 500
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
      name = "humanshots",
      firstgid = 263,
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
      name = "civwomen",
      firstgid = 295,
      filename = "img/civwomen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/civwomen.png",
      imagewidth = 576,
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
        ["commonanimation"] = 0,
        ["commoncollision"] = 0,
        ["row_down"] = 2,
        ["row_ko"] = 4,
        ["row_left"] = 3,
        ["row_right"] = 1,
        ["row_up"] = 0
      },
      terrains = {},
      tilecount = 120,
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
      firstgid = 415,
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
      name = "sparks_med",
      firstgid = 550,
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
      name = "test_bank.png",
      firstgid = 566,
      filename = "img/test_bank.png.tsx",
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      image = "img/test_bank.png",
      imagewidth = 1024,
      imageheight = 424,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 6784,
      tiles = {}
    },
    {
      name = "playerhitbox",
      firstgid = 7350,
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
      name = "demonshothit",
      firstgid = 7351,
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
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 36,
      height = 265,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "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"
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
          id = 7,
          name = "camera",
          type = "Camera",
          shape = "rectangle",
          x = 24,
          y = 1800,
          width = 240,
          height = 320,
          rotation = 0,
          visible = false,
          properties = {
            ["pathid"] = 44,
            ["pathspeed"] = 30
          }
        },
        {
          id = 44,
          name = "path",
          type = "",
          shape = "polyline",
          x = 24,
          y = 1800,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = -1800 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
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
          id = 261,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 136,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 199,
          visible = true,
          properties = {
            ["onDiscard"] = "playerVictory",
            ["script"] = "NPCHero"
          }
        },
        {
          id = 265,
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
        ["activatemusic"] = "mus/06 - Approaching.vgm",
        ["activatesound"] = "snd/alarm4.wav"
      },
      objects = {
        {
          id = 436,
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
      name = "roofballistae",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 405,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 241,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 407,
          name = "",
          type = "",
          shape = "rectangle",
          x = 248,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 242,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 408,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 320,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 241,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 409,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 288,
          width = 288,
          height = 56,
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
      name = "roofarchers2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 290,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 336,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 294,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 352,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 300,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 328,
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
          id = 302,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 336,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 305,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 352,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "knights3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 278,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 432,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 279,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 464,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 187,
          visible = true,
          properties = {
            ["pathid"] = 288,
            ["pathtime"] = 0.5,
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 281,
          name = "path",
          type = "",
          shape = "polyline",
          x = 120,
          y = 496,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 32, y = -32 },
            { x = 32, y = 8 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 282,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 464,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 187,
          visible = true,
          properties = {
            ["pathid"] = 281,
            ["pathtime"] = 0.5,
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 288,
          name = "path",
          type = "",
          shape = "polyline",
          x = 120,
          y = 496,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 16, y = -32 },
            { x = 16, y = 8 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikes5",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 394,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 424,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 395,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 400,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 396,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 448,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 397,
          name = "path",
          type = "",
          shape = "polyline",
          x = 16,
          y = 368,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 104 },
            { x = 0, y = 160 },
            { x = 80, y = 160 },
            { x = 248, y = 160 },
            { x = 288, y = 200 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 399,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 472,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 400,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 480,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 401,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 376,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 402,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 352,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 403,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 328,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 404,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 304,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 435,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 592,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 434,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 592,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "unusedmagefirepoints",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["static"] = true
      },
      objects = {
        {
          id = 331,
          name = "firepoint_tl",
          type = "",
          shape = "ellipse",
          x = 36.6863,
          y = 552,
          width = 16,
          height = 16,
          rotation = 315,
          visible = true,
          properties = {
            ["aimatplayer"] = false,
            ["collidable"] = false,
            ["script"] = "VehicleFountain"
          }
        },
        {
          id = 332,
          name = "firepoint_tr",
          type = "",
          shape = "ellipse",
          x = 240,
          y = 563.314,
          width = 16,
          height = 16,
          rotation = 225,
          visible = true,
          properties = {
            ["aimatplayer"] = false,
            ["collidable"] = false,
            ["script"] = "VehicleFountain"
          }
        },
        {
          id = 333,
          name = "firepoint_bl",
          type = "",
          shape = "ellipse",
          x = 38.202,
          y = 749.657,
          width = 16,
          height = 16,
          rotation = 285,
          visible = true,
          properties = {
            ["aimatplayer"] = false,
            ["collidable"] = false,
            ["script"] = "VehicleFountain"
          }
        },
        {
          id = 334,
          name = "firepoint_br",
          type = "",
          shape = "ellipse",
          x = 234.343,
          y = 753.798,
          width = 16,
          height = 16,
          rotation = 255,
          visible = true,
          properties = {
            ["aimatplayer"] = false,
            ["collidable"] = false,
            ["script"] = "VehicleFountain"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "mage",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 260,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 640,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 103,
          visible = true,
          properties = {
            ["firepointid_bl"] = 333,
            ["firepointid_br"] = 334,
            ["firepointid_c"] = 336,
            ["firepointid_cl"] = 335,
            ["firepointid_cr"] = 337,
            ["firepointid_tl"] = 331,
            ["firepointid_tr"] = 332,
            ["kolaunch"] = true,
            ["onKO"] = "unpauseCamera",
            ["script"] = "NPCMage"
          }
        },
        {
          id = 264,
          name = "trigger",
          type = "",
          shape = "polyline",
          x = 0,
          y = 536,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 268,
          name = "pause",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 536,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["triggertype"] = "pausecamera"
          }
        },
        {
          id = 335,
          name = "firepoint_cl",
          type = "",
          shape = "ellipse",
          x = 140.392,
          y = 688.392,
          width = 24,
          height = 24,
          rotation = 150,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["fireinterval"] = 0.25,
            ["operatorid"] = 260,
            ["script"] = "VehicleFountain"
          }
        },
        {
          id = 336,
          name = "firepoint_c",
          type = "",
          shape = "ellipse",
          x = 160,
          y = 672,
          width = 32,
          height = 32,
          rotation = 90,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["fireinterval"] = 0.25,
            ["operatorid"] = 260,
            ["script"] = "VehicleFountain"
          }
        },
        {
          id = 337,
          name = "firepoint_cr",
          type = "",
          shape = "ellipse",
          x = 159.608,
          y = 667.608,
          width = 24,
          height = 24,
          rotation = 30,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["fireinterval"] = 0.25,
            ["operatorid"] = 260,
            ["script"] = "VehicleFountain"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "fountainarchers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 415,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 680,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 413,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 736,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 412,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 736,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 414,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 680,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 416,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 624,
          width = 288,
          height = 128,
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
      name = "knightsballistae",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 213,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 824,
          width = 288,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 232,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 856,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 97,
          visible = true,
          properties = {
            ["pathid"] = 366,
            ["pathtime"] = 0.25,
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 327,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 848,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 240,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 361,
          name = "",
          type = "",
          shape = "rectangle",
          x = 264,
          y = 848,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 242,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 366,
          name = "",
          type = "",
          shape = "polyline",
          x = 144,
          y = 856,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = 48 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikes4",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 219,
          name = "path",
          type = "",
          shape = "polyline",
          x = -24,
          y = 944,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -24 },
            { x = 144, y = -24 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 370,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 896,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 371,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -24,
          y = 888,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 372,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -48,
          y = 888,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 373,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 888,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 374,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -96,
          y = 888,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 378,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -48,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 379,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -24,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 380,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -96,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 381,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "roofarchers1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 224,
          name = "path",
          type = "",
          shape = "polyline",
          x = 208,
          y = 952,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = 0, y = 8 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 227,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["pathid"] = 224,
            ["pathtime"] = 0.25,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 393,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 928,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 223,
          name = "path",
          type = "",
          shape = "polyline",
          x = 304,
          y = 1000,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -208, y = -16 },
            { x = -192, y = 8 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 225,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 984,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["pathid"] = 223,
            ["pathtime"] = 0.25,
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikes3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 211,
          name = "path",
          type = "",
          shape = "polyline",
          x = 320,
          y = 928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -48, y = -8 },
            { x = -48, y = 112 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 388,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 896,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 211,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 383,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 952,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 273,
            ["pathmode"] = "relative",
            ["pathtime"] = 0.5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 386,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 211,
            ["pathmode"] = "relative",
            ["pathtime"] = 1,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 273,
          name = "path",
          type = "",
          shape = "polyline",
          x = 216,
          y = 928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 24, y = 24 },
            { x = 24, y = 56 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 385,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 928,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 273,
            ["pathmode"] = "relative",
            ["pathtime"] = 0.5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 391,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 968,
          width = 288,
          height = 8,
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
      name = "pikes2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 356,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1008,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 271,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 355,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 984,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 271,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 353,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1032,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 271,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 271,
          name = "path",
          type = "",
          shape = "polyline",
          x = 272,
          y = 952,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 104 },
            { x = 0, y = 208 },
            { x = -80, y = 208 },
            { x = -144, y = 224 },
            { x = -288, y = 224 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 354,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 1056,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 271,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 390,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1064,
          width = 288,
          height = 8,
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
      name = "windowarcher2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 221,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1016,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 240,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1056,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 106,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 428,
          name = "",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 429,
          name = "",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 430,
          name = "",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 431,
          name = "",
          type = "",
          shape = "rectangle",
          x = -88,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "windowarchers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 241,
          name = "trigger",
          type = "",
          shape = "polyline",
          x = 0,
          y = 1104,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 237,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1120,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 238,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 1120,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikes",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 186,
          name = "",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 195,
          name = "path",
          type = "",
          shape = "polyline",
          x = -16,
          y = 1192,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 152, y = 0 },
            { x = 216, y = -16 },
            { x = 320, y = -16 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 239,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1144,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 350,
          name = "",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 351,
          name = "",
          type = "",
          shape = "rectangle",
          x = -88,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 352,
          name = "",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 1192,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "busharchers3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 250,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 1248,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 251,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1248,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 392,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1216,
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
      name = "busharchers2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 244,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1264,
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
          id = 248,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1296,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 252,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 1280,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "busharchers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 243,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1336,
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
          id = 245,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 1368,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 246,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1352,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 247,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 1368,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "waterarchers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 253,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1440,
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
          id = 256,
          name = "",
          type = "",
          shape = "rectangle",
          x = 56,
          y = 1512,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 258,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 1456,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 196,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "waterpikes3",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 177,
          name = "pike3",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 1584,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 345,
            ["pathid"] = 178,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 345
          }
        },
        {
          id = 178,
          name = "path3",
          type = "",
          shape = "polyline",
          x = -24,
          y = 1632,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -32, y = -72 },
            { x = 104, y = -40 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 179,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1576,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 180,
          name = "pike5",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 1568,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 345,
            ["pathid"] = 178,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 345
          }
        },
        {
          id = 181,
          name = "pike4",
          type = "",
          shape = "rectangle",
          x = -56,
          y = 1576,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 345,
            ["pathid"] = 178,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 345
          }
        },
        {
          id = 172,
          name = "pike6",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 1584,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 343,
            ["pathid"] = 174,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 343
          }
        },
        {
          id = 173,
          name = "pike7",
          type = "",
          shape = "rectangle",
          x = 344,
          y = 1576,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 343,
            ["pathid"] = 174,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 343
          }
        },
        {
          id = 175,
          name = "pike8",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 1568,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 343,
            ["pathid"] = 174,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 343
          }
        },
        {
          id = 174,
          name = "path4",
          type = "",
          shape = "polyline",
          x = 304,
          y = 1648,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 40, y = -88 },
            { x = -96, y = -56 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 343,
          name = "",
          type = "",
          shape = "rectangle",
          x = 344,
          y = 1560,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 2147483886,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 174,
            ["pathtime"] = 1,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 345,
          name = "",
          type = "",
          shape = "rectangle",
          x = -56,
          y = 1560,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 178,
            ["pathtime"] = 1,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 117,
          name = "pike10",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1536,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 94,
          visible = true,
          properties = {
            ["leaderid"] = 346,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 346
          }
        },
        {
          id = 161,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 1552,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 346,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 346
          }
        },
        {
          id = 346,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1528,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 347,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 1552,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 346,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 346
          }
        },
        {
          id = 420,
          name = "pike3",
          type = "",
          shape = "rectangle",
          x = -56,
          y = 1704,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 421,
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 421
          }
        },
        {
          id = 421,
          name = "",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 1680,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 104,
            ["pathtime"] = 5,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 422,
          name = "pike4",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 1696,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 421,
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 421
          }
        },
        {
          id = 423,
          name = "pike5",
          type = "",
          shape = "rectangle",
          x = -88,
          y = 1688,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 421,
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 421
          }
        },
        {
          id = 424,
          name = "pike7",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 1640,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 426,
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 426
          }
        },
        {
          id = 425,
          name = "pike8",
          type = "",
          shape = "rectangle",
          x = 376,
          y = 1632,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 426,
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 426
          }
        },
        {
          id = 426,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 1624,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 2147483886,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 106,
            ["pathtime"] = 5,
            ["script"] = "ShmupVehicle"
          }
        },
        {
          id = 427,
          name = "pike6",
          type = "",
          shape = "rectangle",
          x = 344,
          y = 1648,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 426,
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 426
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "waterpikes2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 113,
          name = "pike6",
          type = "",
          shape = "rectangle",
          x = 344,
          y = 1648,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 325,
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 325
          }
        },
        {
          id = 68,
          name = "pike7",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 1640,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 325,
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 325
          }
        },
        {
          id = 106,
          name = "path4",
          type = "",
          shape = "polyline",
          x = 304,
          y = 1728,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 56, y = -104 },
            { x = -96, y = -72 },
            { x = -224, y = -72 },
            { x = -376, y = -104 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 114,
          name = "pike8",
          type = "",
          shape = "rectangle",
          x = 376,
          y = 1632,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 325,
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 325
          }
        },
        {
          id = 115,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1632,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 325,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 1624,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 2147483886,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 106,
            ["pathtime"] = 5,
            ["script"] = "ShmupVehicle"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "waterpikes",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 67,
          name = "pike3",
          type = "",
          shape = "rectangle",
          x = -56,
          y = 1704,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 324,
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 324
          }
        },
        {
          id = 104,
          name = "path3",
          type = "",
          shape = "polyline",
          x = -24,
          y = 1736,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -48, y = -56 },
            { x = 104, y = -24 },
            { x = 232, y = -24 },
            { x = 384, y = -56 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 108,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1688,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 111,
          name = "pike5",
          type = "",
          shape = "rectangle",
          x = -88,
          y = 1688,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 324,
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 324
          }
        },
        {
          id = 112,
          name = "pike4",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 1696,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {
            ["leaderid"] = 324,
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 324
          }
        },
        {
          id = 324,
          name = "",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 1680,
          width = 128,
          height = 64,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 104,
            ["pathtime"] = 5,
            ["script"] = "ShmupVehicle"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "unusedcivilians",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      name = "civilians",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 43,
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1800,
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
          id = 79,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1904,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 343,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 86,
          name = "path2",
          type = "",
          shape = "polyline",
          x = 64,
          y = 1888,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 8 },
            { x = -8, y = -56 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 132,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 478,
          visible = true,
          properties = {
            ["pathid"] = 419,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 136,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 1944,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 490,
          visible = true,
          properties = {
            ["pathid"] = 419,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 152,
          name = "",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 1912,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 493,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 150,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 1936,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 487,
          visible = true,
          properties = {
            ["pathid"] = 419,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 85,
          name = "path1",
          type = "",
          shape = "polyline",
          x = 144,
          y = 1968,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = 32, y = -56 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 77,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 1960,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 475,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 160,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 1960,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 484,
          visible = true,
          properties = {
            ["pathid"] = 418,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 133,
          name = "",
          type = "",
          shape = "rectangle",
          x = 136,
          y = 1944,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 481,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 57,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 1952,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 469,
          visible = true,
          properties = {
            ["pathid"] = 418,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 158,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 1952,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 472,
          visible = true,
          properties = {
            ["pathid"] = 418,
            ["pathmode"] = "relative",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 418,
          name = "path1",
          type = "",
          shape = "polyline",
          x = 176,
          y = 1968,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = 32, y = -56 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 419,
          name = "path2",
          type = "",
          shape = "polyline",
          x = 88,
          y = 1904,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 8 },
            { x = -8, y = -56 }
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
      draworder = "index",
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
          id = 1,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 2152,
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
      name = "npcshots",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {},
      objects = {}
    }
  }
}
