return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.1",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 36,
  height = 265,
  tilewidth = 8,
  tileheight = 8,
  nextobjectid = 468,
  properties = {
    ["cameraid"] = 7,
    ["music"] = "09 - Blue Sky Laundry.vgm",
    ["nextmap"] = "maps/cave.lua",
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
                properties = {}
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
                properties = {
                  ["sensor"] = true
                }
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
                properties = {
                  ["sensor"] = true
                }
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
                properties = {
                  ["sensor"] = true
                }
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
                properties = {
                  ["sensor"] = true
                }
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
                properties = {
                  ["sensor"] = true
                }
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
                properties = {
                  ["sensor"] = true
                }
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
                properties = {
                  ["sensor"] = true
                }
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
                properties = {
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
                properties = {}
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
                properties = {}
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
                properties = {}
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
                properties = {}
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
                properties = {}
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
                properties = {}
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
      name = "civwomen",
      firstgid = 276,
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
      firstgid = 396,
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
      firstgid = 531,
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
      firstgid = 547,
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
      name = "hud_icons",
      firstgid = 7331,
      filename = "img/hud_icons.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/hud_icons.png",
      imagewidth = 32,
      imageheight = 32,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 4,
      tiles = {}
    },
    {
      name = "bombgauge",
      firstgid = 7335,
      filename = "img/bombgauge.tsx",
      tilewidth = 16,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/bombgauge.png",
      imagewidth = 128,
      imageheight = 64,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {
        ["row_full"] = 1,
        ["row_notfull"] = 0
      },
      terrains = {},
      tilecount = 16,
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
                name = "fill",
                type = "",
                shape = "rectangle",
                x = 6,
                y = 4,
                width = 4,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["color"] = "#ffaadfff",
                  ["direction"] = "up"
                }
              }
            }
          }
        },
        {
          id = 8,
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
            },
            {
              tileid = 15,
              duration = 100
            }
          }
        }
      }
    },
    {
      name = "touchmarkers",
      firstgid = 7351,
      filename = "img/touchmarkers.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/touchmarkers.png",
      imagewidth = 128,
      imageheight = 64,
      tileoffset = {
        x = -32,
        y = 32
      },
      properties = {},
      terrains = {},
      tilecount = 2,
      tiles = {}
    },
    {
      name = "playerhitbox",
      firstgid = 7353,
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
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 7,
          name = "camera",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 1800,
          width = 240,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["pathid"] = 44,
            ["pathtime"] = 60,
            ["script"] = "ShmupCam",
            ["sensor"] = true
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
            ["script"] = "LinearPath"
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
          name = "trigger",
          type = "",
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
            ["collidable"] = true,
            ["sensor"] = true,
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
        ["activatemusic"] = "06 - Approaching.vgm",
        ["activatesound"] = "alarm4.wav"
      },
      objects = {
        {
          id = 436,
          name = "trigger",
          type = "",
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
            ["collidable"] = true,
            ["sensor"] = true,
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
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 288,
          width = 288,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          name = "trigger",
          type = "",
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
            ["collidable"] = true,
            ["sensor"] = true,
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
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 432,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
            ["script"] = "LinearPath"
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
            ["script"] = "LinearPath"
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
            { x = 440, y = 328 }
          },
          properties = {
            ["script"] = "LinearPath"
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
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 480,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
      properties = {},
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
            ["collidable"] = true,
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
            ["collidable"] = true,
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
            ["collidable"] = true,
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
            ["collidable"] = true,
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
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 624,
          width = 288,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 824,
          width = 288,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
            ["script"] = "LinearPath"
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
          id = 272,
          name = "path",
          type = "",
          shape = "polyline",
          x = -48,
          y = 920,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 24, y = -32 },
            { x = 168, y = -32 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
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
            ["script"] = "LinearPath"
          }
        },
        {
          id = 370,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 896,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
            ["pathid"] = 272,
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
            ["pathid"] = 272,
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
            ["pathid"] = 272,
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
            ["pathid"] = 272,
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
            ["script"] = "LinearPath"
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
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 928,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
            ["script"] = "LinearPath"
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
            ["script"] = "LinearPath"
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
            ["script"] = "LinearPath"
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
            ["pathtime"] = 0.5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 391,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 968,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
            { x = -384, y = 224 }
          },
          properties = {
            ["script"] = "LinearPath"
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
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1064,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1016,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
            { x = 416, y = -16 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 239,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1144,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
          name = "trigger",
          type = "",
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
            ["collidable"] = true,
            ["sensor"] = true,
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
          name = "trigger",
          type = "",
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
            ["collidable"] = true,
            ["sensor"] = true,
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
          name = "trigger",
          type = "",
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
            ["collidable"] = true,
            ["sensor"] = true,
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
          name = "trigger",
          type = "",
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
            ["collidable"] = true,
            ["sensor"] = true,
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
            ["pathid"] = 178,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 345
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
            ["script"] = "LinearPath"
          }
        },
        {
          id = 179,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1576,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
            ["pathid"] = 178,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 345
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
            ["pathid"] = 178,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 345
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
            ["pathid"] = 174,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 343
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
            ["pathid"] = 174,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 343
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
            ["pathid"] = 174,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 343
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
            ["script"] = "LinearPath"
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
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 346
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
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 346
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
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 346
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
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 421
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
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 421
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
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 421
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
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 426
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
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 426
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
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 426
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
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 325
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
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 325
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
            ["script"] = "LinearPath"
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
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 325
          }
        },
        {
          id = 115,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1632,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 324
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
            ["script"] = "LinearPath"
          }
        },
        {
          id = 108,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1688,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
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
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 324
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
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman",
            ["vehicleid"] = 324
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
          name = "trigger",
          type = "",
          shape = "polyline",
          x = 0,
          y = 1800,
          width = 0,
          height = 0,
          rotation = 0,
          visible = false,
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
          id = 79,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1904,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 324,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
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
            ["script"] = "LinearPath"
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
          gid = 459,
          visible = true,
          properties = {
            ["pathid"] = 419,
            ["pathtime"] = 0.6,
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
          gid = 471,
          visible = true,
          properties = {
            ["pathid"] = 419,
            ["pathtime"] = 0.9,
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
          gid = 474,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
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
          gid = 468,
          visible = true,
          properties = {
            ["pathid"] = 419,
            ["pathtime"] = 0.9,
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
            ["script"] = "LinearPath"
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
          gid = 456,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.8,
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
          gid = 465,
          visible = true,
          properties = {
            ["pathid"] = 418,
            ["pathtime"] = 0.8,
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
          gid = 462,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.6,
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
          gid = 450,
          visible = true,
          properties = {
            ["pathid"] = 418,
            ["pathtime"] = 0.7,
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
          gid = 453,
          visible = true,
          properties = {
            ["pathid"] = 418,
            ["pathtime"] = 0.7,
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
            ["script"] = "LinearPath"
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
    },
    {
      type = "objectgroup",
      name = "hud",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {
        ["scoreid"] = 318,
        ["script"] = "ShmupStatus"
      },
      objects = {
        {
          id = 318,
          name = "score",
          type = "",
          shape = "rectangle",
          x = 4,
          y = 4,
          width = 232,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ShmupScore",
            ["text"] = "SC00000000 EX01000000",
            ["textalign"] = "left",
            ["textfont"] = "pressstart2p.fnt",
            ["textformat"] = "SC%8d EX%8d"
          }
        },
        {
          id = 319,
          name = "life1",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7331,
          visible = true,
          properties = {}
        },
        {
          id = 442,
          name = "life2",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7331,
          visible = true,
          properties = {}
        },
        {
          id = 443,
          name = "life3",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7331,
          visible = true,
          properties = {}
        },
        {
          id = 444,
          name = "life4",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7331,
          visible = true,
          properties = {}
        },
        {
          id = 445,
          name = "life5",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7331,
          visible = true,
          properties = {}
        },
        {
          id = 446,
          name = "life6",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7331,
          visible = true,
          properties = {}
        },
        {
          id = 447,
          name = "life7",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7331,
          visible = true,
          properties = {}
        },
        {
          id = 448,
          name = "life8",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7331,
          visible = true,
          properties = {}
        },
        {
          id = 449,
          name = "life9",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7331,
          visible = true,
          properties = {}
        },
        {
          id = 460,
          name = "bomb1",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 320,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 7335,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 461,
          name = "bomb2",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 320,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 7335,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 462,
          name = "bomb3",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 320,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 7335,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 466,
          name = "wingleft",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7333,
          visible = true,
          properties = {}
        },
        {
          id = 467,
          name = "wingright",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7334,
          visible = true,
          properties = {}
        },
        {
          id = 464,
          name = "reserves",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 36,
          width = 16,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["text"] = "0",
            ["textalign"] = "center",
            ["textfont"] = "pressstart2p.fnt"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pausemenu",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PauseMenu"
      },
      objects = {
        {
          id = 338,
          name = "pause",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 32,
          width = 208,
          height = 16,
          rotation = 0,
          visible = false,
          properties = {
            ["text"] = "Paused",
            ["textalign"] = "center",
            ["textfont"] = "pressstart2p.fnt"
          }
        },
        {
          id = 339,
          name = "resume",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 112,
          width = 144,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ButtonResume",
            ["text"] = "RESUME",
            ["textalign"] = "center",
            ["textfont"] = "pressstart2p.fnt"
          }
        },
        {
          id = 340,
          name = "restart",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 160,
          width = 144,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ButtonRestart",
            ["text"] = "RESTART",
            ["textalign"] = "center",
            ["textfont"] = "pressstart2p.fnt"
          }
        },
        {
          id = 437,
          name = "title",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 208,
          width = 144,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ButtonTitle",
            ["text"] = "TITLE",
            ["textalign"] = "center",
            ["textfont"] = "pressstart2p.fnt"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "touchcontrols",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "ShmupTouchControls"
      },
      objects = {
        {
          id = 341,
          name = "move",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 7351,
          visible = true,
          properties = {}
        },
        {
          id = 342,
          name = "focus",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 7352,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "curtain",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "Curtain"
      },
      objects = {}
    }
  }
}
