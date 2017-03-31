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
      name = "infmen",
      firstgid = 133,
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
      firstgid = 223,
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
      firstgid = 224,
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
      firstgid = 248,
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
      firstgid = 280,
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
      firstgid = 400,
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
      firstgid = 535,
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
      firstgid = 551,
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
      firstgid = 7335,
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
      firstgid = 7336,
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
          gid = 184,
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
          gid = 226,
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
          gid = 227,
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
          gid = 226,
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
          gid = 181,
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
          gid = 181,
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
          gid = 181,
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
          gid = 181,
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
          gid = 172,
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
          gid = 172,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 181,
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
          gid = 181,
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
          gid = 97,
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
          gid = 181,
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
          gid = 181,
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
          gid = 181,
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
          gid = 181,
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
          gid = 91,
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
          gid = 225,
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
          gid = 227,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 181,
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
          gid = 181,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 100,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 181,
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
          gid = 181,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 181,
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
          gid = 181,
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
          gid = 181,
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
          gid = 181,
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
          gid = 181,
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
          gid = 181,
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
          gid = 181,
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
          gid = 181,
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
          gid = 181,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 2147483871,
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
          gid = 223,
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
          gid = 88,
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
          gid = 169,
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
          gid = 223,
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
          gid = 169,
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
          gid = 169,
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
          gid = 223,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 2147483871,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 2147483871,
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
          gid = 169,
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
          gid = 169,
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
          gid = 169,
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
          gid = 223,
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
          gid = 328,
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
          gid = 463,
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
          gid = 475,
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
          gid = 478,
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
          gid = 472,
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
          gid = 460,
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
          gid = 469,
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
          gid = 466,
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
          gid = 454,
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
          gid = 457,
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
