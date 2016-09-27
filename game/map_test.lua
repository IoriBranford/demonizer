return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.17.0",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 36,
  height = 265,
  tilewidth = 8,
  tileheight = 8,
  nextobjectid = 478,
  properties = {
    ["cameraid"] = 7,
    ["music"] = "09 - Blue Sky Laundry.vgm",
    ["playerid"] = 1,
    ["script"] = "ShmupMap"
  },
  tilesets = {
    {
      name = "imp",
      firstgid = 1,
      filename = "imp.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "imp.png",
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
                name = "ally1",
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
                name = "ally2",
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
                name = "ally3",
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
                name = "ally4",
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
                name = "focusally1",
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
                name = "focusally2",
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
                name = "focusally3",
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
                name = "focusally4",
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
              tileid = "0",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            },
            {
              tileid = "2",
              duration = "125"
            }
          }
        }
      }
    },
    {
      name = "demonizing",
      firstgid = 4,
      filename = "demonizing.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "demonizing.png",
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
              tileid = "0",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            },
            {
              tileid = "0",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            },
            {
              tileid = "0",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            },
            {
              tileid = "0",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            },
            {
              tileid = "2",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            },
            {
              tileid = "2",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            },
            {
              tileid = "2",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            },
            {
              tileid = "2",
              duration = "62"
            },
            {
              tileid = "1",
              duration = "62"
            }
          }
        }
      }
    },
    {
      name = "demonwomen",
      firstgid = 7,
      filename = "demonwomen.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "demonwomen.png",
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
              tileid = "0",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            },
            {
              tileid = "2",
              duration = "125"
            }
          }
        }
      }
    },
    {
      name = "demonshots",
      firstgid = 46,
      filename = "demonshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "demonshots.png",
      imagewidth = 32,
      imageheight = 64,
      tileoffset = {
        x = -16,
        y = 8
      },
      properties = {
        ["commoncollision"] = 0,
        ["row_ally"] = 1,
        ["row_bombpackage"] = 2,
        ["row_bombshrapnel"] = 3,
        ["row_player"] = 0
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
      filename = "demonbomb.tsx",
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      image = "demonbomb.png",
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
              tileid = "0",
              duration = "50"
            },
            {
              tileid = "1",
              duration = "50"
            },
            {
              tileid = "2",
              duration = "50"
            },
            {
              tileid = "3",
              duration = "50"
            },
            {
              tileid = "4",
              duration = "50"
            },
            {
              tileid = "5",
              duration = "50"
            },
            {
              tileid = "6",
              duration = "50"
            },
            {
              tileid = "7",
              duration = "50"
            }
          }
        }
      }
    },
    {
      name = "infwomen",
      firstgid = 58,
      filename = "infwomen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "infwomen.png",
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
              tileid = "0",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            },
            {
              tileid = "2",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            }
          }
        }
      }
    },
    {
      name = "infmen",
      firstgid = 133,
      filename = "infmen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "infmen.png",
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
              tileid = "0",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            },
            {
              tileid = "2",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            }
          }
        }
      }
    },
    {
      name = "boat",
      firstgid = 223,
      filename = "boat.tsx",
      tilewidth = 128,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "boat.png",
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
      filename = "ballista.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "ballista.png",
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
              tileid = "16",
              duration = "967"
            },
            {
              tileid = "0",
              duration = "250"
            },
            {
              tileid = "8",
              duration = "500"
            },
            {
              tileid = "0",
              duration = "33"
            }
          }
        }
      }
    },
    {
      name = "humanshots",
      firstgid = 248,
      filename = "humanshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "humanshots.png",
      imagewidth = 32,
      imageheight = 96,
      tileoffset = {
        x = -24,
        y = 8
      },
      properties = {
        ["commoncollision"] = 0,
        ["row_arrow"] = 2,
        ["row_ballista"] = 4,
        ["row_magic"] = 3,
        ["row_pike"] = 0,
        ["row_sword"] = 1,
        ["row_water"] = 5
      },
      terrains = {},
      tilecount = 6,
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
        }
      }
    },
    {
      name = "civwomen",
      firstgid = 254,
      filename = "civwomen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "civwomen.png",
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
              tileid = "0",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            },
            {
              tileid = "2",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            }
          }
        }
      }
    },
    {
      name = "civmen",
      firstgid = 374,
      filename = "civmen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "civmen.png",
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
              tileid = "0",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            },
            {
              tileid = "2",
              duration = "125"
            },
            {
              tileid = "1",
              duration = "125"
            }
          }
        }
      }
    },
    {
      name = "sparks_med",
      firstgid = 509,
      filename = "sparks_med.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "sparks_med.png",
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
              tileid = "0",
              duration = "64"
            },
            {
              tileid = "1",
              duration = "64"
            },
            {
              tileid = "2",
              duration = "64"
            },
            {
              tileid = "3",
              duration = "64"
            },
            {
              tileid = "4",
              duration = "64"
            },
            {
              tileid = "5",
              duration = "64"
            },
            {
              tileid = "6",
              duration = "64"
            },
            {
              tileid = "7",
              duration = "64"
            },
            {
              tileid = "8",
              duration = "64"
            },
            {
              tileid = "9",
              duration = "64"
            }
          }
        }
      }
    },
    {
      name = "test_bank.png",
      firstgid = 525,
      filename = "test_bank.png.tsx",
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      image = "test_bank.png",
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
      firstgid = 7309,
      filename = "hud_icons.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "hud_icons.png",
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
      firstgid = 7313,
      filename = "bombgauge.tsx",
      tilewidth = 16,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "bombgauge.png",
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
              tileid = "8",
              duration = "100"
            },
            {
              tileid = "9",
              duration = "100"
            },
            {
              tileid = "10",
              duration = "100"
            },
            {
              tileid = "11",
              duration = "100"
            },
            {
              tileid = "12",
              duration = "100"
            },
            {
              tileid = "13",
              duration = "100"
            },
            {
              tileid = "14",
              duration = "100"
            },
            {
              tileid = "15",
              duration = "100"
            }
          }
        }
      }
    },
    {
      name = "touchmarkers",
      firstgid = 7329,
      filename = "touchmarkers.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "touchmarkers.png",
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
            ["onDiscard"] = "endMap",
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
          gid = 302,
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
          gid = 437,
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
          gid = 449,
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
          gid = 452,
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
          gid = 446,
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
          gid = 434,
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
          gid = 443,
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
          gid = 440,
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
          gid = 428,
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
          gid = 431,
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
        },
        {
          id = 468,
          name = "",
          type = "",
          shape = "rectangle",
          x = 51,
          y = 1874,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 302,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 469,
          name = "",
          type = "",
          shape = "rectangle",
          x = 47,
          y = 1856,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 302,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 470,
          name = "",
          type = "",
          shape = "rectangle",
          x = 74,
          y = 1847,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 302,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 471,
          name = "",
          type = "",
          shape = "rectangle",
          x = 125,
          y = 1870,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 302,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 472,
          name = "",
          type = "",
          shape = "rectangle",
          x = 153,
          y = 1906,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 302,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 473,
          name = "",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1903,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 302,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 474,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 1862,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 302,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 475,
          name = "",
          type = "",
          shape = "rectangle",
          x = 154,
          y = 1839,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 302,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 476,
          name = "",
          type = "",
          shape = "rectangle",
          x = 121,
          y = 1826,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 302,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 477,
          name = "",
          type = "",
          shape = "rectangle",
          x = 211,
          y = 1808,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 302,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
            ["script"] = "ShmupNPC"
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
          y = 2072,
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
          gid = 7309,
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
          gid = 7309,
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
          gid = 7309,
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
          gid = 7309,
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
          gid = 7309,
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
          gid = 7309,
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
          gid = 7309,
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
          gid = 7309,
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
          gid = 7309,
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
          gid = 7313,
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
          gid = 7313,
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
          gid = 7313,
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
          gid = 7311,
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
          gid = 7312,
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
          gid = 7329,
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
          gid = 7330,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
