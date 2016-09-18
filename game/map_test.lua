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
  nextobjectid = 438,
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
      imageheight = 32,
      tileoffset = {
        x = -16,
        y = 8
      },
      properties = {
        ["commoncollision"] = 0,
        ["row_ally"] = 1,
        ["row_player"] = 0
      },
      terrains = {},
      tilecount = 2,
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
      firstgid = 48,
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
      firstgid = 56,
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
      firstgid = 131,
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
      firstgid = 221,
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
      firstgid = 222,
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
      firstgid = 246,
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
      firstgid = 252,
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
      firstgid = 372,
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
      firstgid = 507,
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
      name = "life",
      firstgid = 7291,
      filename = "life.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "life.png",
      imagewidth = 16,
      imageheight = 16,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "touchmarkers",
      firstgid = 7292,
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
      firstgid = 7294,
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
          gid = 182,
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
          gid = 224,
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
          gid = 225,
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
          gid = 224,
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
          gid = 179,
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
          gid = 179,
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
          gid = 179,
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
          gid = 179,
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
          gid = 170,
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
          gid = 170,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 179,
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
          gid = 179,
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
          gid = 95,
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
          gid = 179,
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
          gid = 179,
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
          gid = 179,
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
          gid = 179,
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
          gid = 89,
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
          gid = 223,
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
          gid = 225,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 179,
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
          gid = 179,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 98,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 179,
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
          gid = 179,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 179,
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
          gid = 179,
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
          gid = 179,
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
          gid = 179,
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
          gid = 179,
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
          gid = 179,
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
          gid = 179,
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
          gid = 179,
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
          gid = 179,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 2147483869,
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
          gid = 221,
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
          gid = 86,
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
          gid = 167,
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
          gid = 221,
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
          gid = 167,
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
          gid = 167,
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
          gid = 221,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 2147483869,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 2147483869,
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
          gid = 167,
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
          gid = 167,
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
          gid = 167,
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
          gid = 221,
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
          gid = 300,
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
          gid = 435,
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
          gid = 447,
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
          gid = 450,
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
          gid = 444,
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
          gid = 432,
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
          gid = 441,
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
          gid = 438,
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
          gid = 426,
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
          gid = 429,
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
        ["script"] = "ShmupHUD"
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
          name = "life",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 7291,
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
          gid = 7292,
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
          gid = 7293,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
