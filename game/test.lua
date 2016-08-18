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
  nextobjectid = 341,
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
      imageheight = 80,
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
        ["row_sword"] = 1
      },
      terrains = {},
      tilecount = 5,
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
      firstgid = 243,
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
      firstgid = 363,
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
      firstgid = 498,
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
      firstgid = 7282,
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
      name = "imagefont",
      firstgid = 7283,
      filename = "imagefont.tsx",
      tilewidth = 973,
      tileheight = 17,
      spacing = 0,
      margin = 0,
      image = "imagefont.png",
      imagewidth = 973,
      imageheight = 17,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {
        ["font"] = true,
        ["fontglyphs"] = " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,!?-+/():;%&`'*#=[]\""
      },
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
      properties = {
        ["activatemusic"] = "06 - Approaching.vgm",
        ["activatesound"] = "alarm4.wav"
      },
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
            ["onRemove"] = "endMap",
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 265,
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
          id = 293,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
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
          id = 297,
          name = "",
          type = "",
          shape = "rectangle",
          x = 160,
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
          id = 301,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
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
          id = 303,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
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
        },
        {
          id = 306,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 264,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 312,
            ["pathtime"] = 1,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 307,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 264,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 313,
            ["pathtime"] = 1,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 308,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 264,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 314,
            ["pathtime"] = 1,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 309,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 264,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 315,
            ["pathtime"] = 1,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 310,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 264,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 316,
            ["pathtime"] = 1,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 311,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 264,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 317,
            ["pathtime"] = 1,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 312,
          name = "path",
          type = "",
          shape = "polyline",
          x = 120,
          y = 296,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 24, y = -32 },
            { x = -32, y = 48 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 313,
          name = "path",
          type = "",
          shape = "polyline",
          x = 160,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -16, y = -16 },
            { x = -48, y = 64 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 314,
          name = "path",
          type = "",
          shape = "polyline",
          x = 152,
          y = 296,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = -32 },
            { x = -16, y = 48 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 315,
          name = "path",
          type = "",
          shape = "polyline",
          x = 176,
          y = 280,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -32, y = -16 },
            { x = 0, y = 48 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 316,
          name = "path",
          type = "",
          shape = "polyline",
          x = 192,
          y = 320,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -48, y = -56 },
            { x = 8, y = 8 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 317,
          name = "path",
          type = "",
          shape = "polyline",
          x = 232,
          y = 320,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -88, y = -56 },
            { x = -8, y = 8 }
          },
          properties = {
            ["script"] = "LinearPath"
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
          y = 392,
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
          x = 144,
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
            { x = 24, y = -32 },
            { x = 24, y = 24 }
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
          x = 144,
          y = 464,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 159,
          visible = true,
          properties = {
            ["pathid"] = 281,
            ["pathtime"] = 0.5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 284,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 440,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 281,
            ["pathtime"] = 0.5,
            ["script"] = "NPCArcher"
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
            { x = 24, y = -32 },
            { x = -8, y = 24 }
          },
          properties = {
            ["script"] = "LinearPath"
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
          id = 331,
          name = "firepoint_tl",
          type = "",
          shape = "ellipse",
          x = 40,
          y = 544,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 332,
          name = "firepoint_tr",
          type = "",
          shape = "ellipse",
          x = 232,
          y = 544,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 333,
          name = "firepoint_bl",
          type = "",
          shape = "ellipse",
          x = 40,
          y = 736,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 334,
          name = "firepoint_br",
          type = "",
          shape = "ellipse",
          x = 232,
          y = 736,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 335,
          name = "firepoint_cl",
          type = "",
          shape = "ellipse",
          x = 112,
          y = 672,
          width = 24,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 336,
          name = "firepoint_c",
          type = "",
          shape = "ellipse",
          x = 128,
          y = 672,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["static"] = true
          }
        },
        {
          id = 337,
          name = "firepoint_cr",
          type = "",
          shape = "ellipse",
          x = 152,
          y = 672,
          width = 24,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {
            ["static"] = true
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "knights2",
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
          x = 304,
          y = 872,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 24, y = -32 },
            { x = -40, y = -8 },
            { x = -112, y = -8 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 213,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 864,
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
          id = 216,
          name = "",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 912,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 162,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathtime"] = 1.5,
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 219,
          name = "path",
          type = "",
          shape = "polyline",
          x = -64,
          y = 944,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 24, y = -32 },
            { x = 168, y = -48 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 233,
          name = "",
          type = "",
          shape = "rectangle",
          x = -24,
          y = 896,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 272,
            ["pathtime"] = 1.5,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 234,
          name = "",
          type = "",
          shape = "rectangle",
          x = -64,
          y = 904,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 272,
            ["pathtime"] = 1.5,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 235,
          name = "",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 816,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 273,
            ["pathtime"] = 1.5,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 236,
          name = "",
          type = "",
          shape = "rectangle",
          x = 312,
          y = 824,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 273,
            ["pathtime"] = 1.5,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 273,
          name = "path",
          type = "",
          shape = "polyline",
          x = 288,
          y = 856,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 24, y = -32 },
            { x = -40, y = -8 },
            { x = -112, y = -8 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 272,
          name = "path",
          type = "",
          shape = "polyline",
          x = -48,
          y = 928,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 24, y = -32 },
            { x = 168, y = -48 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 232,
          name = "",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 840,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 81,
          visible = true,
          properties = {
            ["pathid"] = 211,
            ["pathtime"] = 1,
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 327,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 856,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 215,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
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
          id = 221,
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
            { x = -224, y = -16 },
            { x = -208, y = 0 },
            { x = -184, y = 24 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
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
            { x = 0, y = 8 },
            { x = -32, y = 40 }
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
          x = 80,
          y = 984,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 223,
            ["pathtime"] = 2,
            ["script"] = "NPCArcher"
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
            ["pathtime"] = 2,
            ["script"] = "NPCArcher"
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
      name = "windowarchers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
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
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 241,
          name = "trigger",
          type = "",
          shape = "polyline",
          x = 0,
          y = 1032,
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
      name = "knights",
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
          x = -16,
          y = 1184,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 159,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 1.5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 195,
          name = "path",
          type = "",
          shape = "polyline",
          x = -16,
          y = 1184,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 128, y = 0 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 197,
          name = "",
          type = "",
          shape = "rectangle",
          x = 336,
          y = 1168,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 162,
          visible = true,
          properties = {
            ["pathid"] = 271,
            ["pathtime"] = 1.5,
            ["script"] = "NPCSwordsman"
          }
        },
        {
          id = 239,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1120,
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
          id = 271,
          name = "path",
          type = "",
          shape = "polyline",
          x = 336,
          y = 1168,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -144, y = 0 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "Copy of hidingarchers",
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
          y = 1200,
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
            ["script"] = "NPCArcher"
          }
        },
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
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "hidingarchers",
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
          y = 1312,
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
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "diverarchers",
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
          y = 1432,
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
          x = 128,
          y = 1528,
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
      name = "pikes9,10",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 116,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1520,
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
          id = 117,
          name = "pike10",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 1544,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 78,
          visible = true,
          properties = {
            ["pathid"] = 124,
            ["pathtime"] = 2,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 121,
          name = "path9",
          type = "",
          shape = "polyline",
          x = 304,
          y = 1544,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = -104, y = 32 },
            { x = -160, y = 56 },
            { x = -136, y = 120 },
            { x = 0, y = 96 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 124,
          name = "path10",
          type = "",
          shape = "polyline",
          x = -16,
          y = 1544,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 96, y = 32 },
            { x = 152, y = 56 },
            { x = 128, y = 120 },
            { x = 0, y = 96 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 161,
          name = "pike9",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 1544,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 159,
          visible = true,
          properties = {
            ["pathid"] = 121,
            ["pathtime"] = 2,
            ["script"] = "NPCPikeman"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "Copy of pikes3,4,5",
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
          x = -24,
          y = 1608,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 159,
          visible = true,
          properties = {
            ["pathid"] = 178,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 178,
          name = "path3",
          type = "",
          shape = "polyline",
          x = -24,
          y = 1640,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = 104, y = 16 },
            { x = 232, y = 16 },
            { x = 352, y = -32 }
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
          x = -56,
          y = 1592,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 159,
          visible = true,
          properties = {
            ["pathid"] = 178,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 181,
          name = "pike4",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 1600,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 159,
          visible = true,
          properties = {
            ["pathid"] = 178,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 172,
          name = "pike6",
          type = "",
          shape = "rectangle",
          x = 312,
          y = 1576,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 159,
          visible = true,
          properties = {
            ["pathid"] = 174,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 173,
          name = "pike7",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 1568,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 159,
          visible = true,
          properties = {
            ["pathid"] = 174,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 175,
          name = "pike8",
          type = "",
          shape = "rectangle",
          x = 344,
          y = 1560,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 159,
          visible = true,
          properties = {
            ["pathid"] = 174,
            ["pathtime"] = 3,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 174,
          name = "path4",
          type = "",
          shape = "polyline",
          x = 304,
          y = 1656,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = -80 },
            { x = -96, y = -24 },
            { x = -224, y = -24 },
            { x = -344, y = -80 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikes6,7,8",
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
          x = 328,
          y = 1664,
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
          x = 344,
          y = 1656,
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
          y = 1744,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 40, y = -104 },
            { x = -96, y = -72 },
            { x = -224, y = -72 },
            { x = -360, y = -104 }
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
          x = 360,
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
          x = 344,
          y = 1640,
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
      name = "pikes3,4,5",
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
          x = -40,
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
            { x = -32, y = -56 },
            { x = 104, y = -24 },
            { x = 232, y = -24 },
            { x = 368, y = -56 }
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
          y = 1672,
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
          x = -72,
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
          x = -56,
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
          x = -56,
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
      name = "pikes1,2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 65,
          name = "pike2",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1688,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 159,
          visible = true,
          properties = {
            ["pathid"] = 131,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 66,
          name = "pike1",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1704,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 159,
          visible = true,
          properties = {
            ["pathid"] = 128,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 69,
          name = "trigger",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1712,
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
          id = 118,
          name = "pike2b",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1664,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 159,
          visible = true,
          properties = {
            ["pathid"] = 131,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 119,
          name = "pike1b",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1680,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 159,
          visible = true,
          properties = {
            ["pathid"] = 128,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 128,
          name = "path1",
          type = "",
          shape = "polyline",
          x = 232,
          y = 1704,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -8, y = 0 },
            { x = -24, y = 64 },
            { x = -72, y = 112 },
            { x = -136, y = 96 },
            { x = -176, y = 40 },
            { x = -272, y = 0 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 131,
          name = "path2",
          type = "",
          shape = "polyline",
          x = 56,
          y = 1688,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 8, y = 0 },
            { x = 24, y = 64 },
            { x = 72, y = 112 },
            { x = 136, y = 96 },
            { x = 176, y = 40 },
            { x = 272, y = 0 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        }
      }
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
          id = 57,
          name = "",
          type = "",
          shape = "rectangle",
          x = 152,
          y = 1952,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 417,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.7,
            ["script"] = "ShmupNPC"
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
          gid = 423,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.8,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 79,
          name = "",
          type = "",
          shape = "rectangle",
          x = 72,
          y = 1912,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 291,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 85,
          name = "path1",
          type = "",
          shape = "polyline",
          x = 152,
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
          id = 86,
          name = "path2",
          type = "",
          shape = "polyline",
          x = 72,
          y = 1896,
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
          x = 72,
          y = 1944,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 426,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.6,
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
          gid = 429,
          visible = true,
          properties = {
            ["pathid"] = 85,
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
          gid = 438,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.9,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 150,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 1952,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 435,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.9,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 152,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 1920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 441,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
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
          gid = 420,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.7,
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
          gid = 432,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.8,
            ["script"] = "ShmupNPC"
          }
        }
      }
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
          y = 2080,
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
      draworder = "topdown",
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
          x = 0,
          y = 0,
          width = 240,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ShmupScore",
            ["text"] = "SC00000000 EX01000000",
            ["textalign"] = "left",
            ["textfont"] = "imagefont",
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
          gid = 7282,
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
            ["textfont"] = "imagefont"
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
            ["textfont"] = "imagefont"
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
            ["textfont"] = "imagefont"
          }
        }
      }
    }
  }
}
