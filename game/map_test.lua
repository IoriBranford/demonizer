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
  nextobjectid = 437,
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
      name = "infwomen",
      firstgid = 48,
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
      firstgid = 123,
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
      firstgid = 213,
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
      firstgid = 214,
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
      firstgid = 238,
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
      firstgid = 244,
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
      firstgid = 364,
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
      firstgid = 499,
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
      firstgid = 7283,
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
      firstgid = 7284,
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
          gid = 174,
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
          gid = 216,
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
          gid = 217,
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
          gid = 216,
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
          gid = 171,
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
          gid = 171,
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
          gid = 171,
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
          gid = 171,
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
          gid = 162,
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
          gid = 162,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 171,
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
          gid = 171,
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
            ["operatorid"] = 260,
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
            ["operatorid"] = 260,
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
            ["operatorid"] = 260,
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
            ["operatorid"] = 260,
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
          gid = 87,
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
          gid = 171,
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
          gid = 171,
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
          gid = 171,
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
          gid = 171,
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
          gid = 81,
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
          gid = 215,
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
          gid = 217,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 171,
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
          gid = 171,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 90,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 171,
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
          gid = 171,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 171,
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
          gid = 171,
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
          gid = 171,
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
          gid = 171,
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
          gid = 171,
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
          gid = 171,
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
          gid = 171,
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
          gid = 171,
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
          gid = 171,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 2147483861,
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
          gid = 213,
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
          gid = 78,
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
          gid = 159,
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
          gid = 213,
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
          gid = 159,
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
          gid = 159,
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
          gid = 213,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 2147483861,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 2147483861,
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
          gid = 159,
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
          gid = 159,
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
          gid = 159,
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
          gid = 213,
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
          gid = 292,
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
          gid = 427,
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
          gid = 439,
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
          gid = 442,
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
          gid = 436,
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
          gid = 424,
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
          gid = 433,
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
          gid = 430,
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
          gid = 418,
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
          gid = 421,
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
          gid = 7283,
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
          gid = 7284,
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
          gid = 7285,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
