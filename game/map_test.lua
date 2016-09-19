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
      imageheight = 48,
      tileoffset = {
        x = -16,
        y = 8
      },
      properties = {
        ["commoncollision"] = 0,
        ["row_ally"] = 1,
        ["row_bombshrapnel"] = 2,
        ["row_player"] = 0
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
      firstgid = 49,
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
      firstgid = 57,
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
      firstgid = 132,
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
      firstgid = 222,
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
      firstgid = 223,
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
      firstgid = 247,
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
      firstgid = 253,
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
      firstgid = 373,
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
      firstgid = 508,
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
      firstgid = 7292,
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
      firstgid = 7293,
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
      firstgid = 7295,
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
          gid = 183,
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
          gid = 225,
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
          gid = 226,
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
          gid = 225,
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
          gid = 180,
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
          gid = 180,
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
          gid = 180,
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
          gid = 180,
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
          gid = 171,
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
          gid = 171,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 180,
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
          gid = 180,
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
          gid = 96,
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
          gid = 180,
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
          gid = 180,
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
          gid = 180,
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
          gid = 180,
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
          gid = 90,
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
          gid = 224,
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
          gid = 226,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 180,
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
          gid = 180,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 99,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 180,
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
          gid = 180,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 180,
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
          gid = 180,
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
          gid = 180,
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
          gid = 180,
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
          gid = 180,
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
          gid = 180,
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
          gid = 180,
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
          gid = 180,
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
          gid = 180,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 2147483870,
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
          gid = 222,
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
          gid = 87,
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
          gid = 168,
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
          gid = 222,
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
          gid = 168,
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
          gid = 168,
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
          gid = 222,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 2147483870,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 2147483870,
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
          gid = 168,
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
          gid = 168,
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
          gid = 168,
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
          gid = 222,
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
          gid = 301,
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
          gid = 436,
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
          gid = 448,
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
          gid = 451,
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
          gid = 445,
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
          gid = 433,
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
          gid = 442,
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
          gid = 439,
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
          gid = 427,
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
          gid = 430,
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
          gid = 7292,
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
          gid = 7293,
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
          gid = 7294,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
