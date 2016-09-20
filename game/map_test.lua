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
  nextobjectid = 450,
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
      name = "test_bank.png",
      firstgid = 509,
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
      firstgid = 7293,
      filename = "hud_icons.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "hud_icons.png",
      imagewidth = 16,
      imageheight = 32,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 2,
      tiles = {}
    },
    {
      name = "touchmarkers",
      firstgid = 7295,
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
    },
    {
      name = "sparks_med",
      firstgid = 7297,
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
      draworder = "topdown",
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
          gid = 7293,
          visible = true,
          properties = {}
        },
        {
          id = 438,
          name = "bomb1",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 320,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7294,
          visible = true,
          properties = {}
        },
        {
          id = 439,
          name = "bomb2",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 320,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7294,
          visible = true,
          properties = {}
        },
        {
          id = 440,
          name = "bomb3",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 320,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7294,
          visible = true,
          properties = {}
        },
        {
          id = 441,
          name = "bomb4",
          type = "",
          shape = "rectangle",
          x = 24,
          y = 320,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7294,
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
          gid = 7293,
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
          gid = 7293,
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
          gid = 7293,
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
          gid = 7293,
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
          gid = 7293,
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
          gid = 7293,
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
          gid = 7293,
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
          gid = 7293,
          visible = true,
          properties = {}
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
          visible = true,
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
          gid = 7295,
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
          gid = 7296,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
