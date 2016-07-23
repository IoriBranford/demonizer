return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.16.2",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 36,
  height = 265,
  tilewidth = 8,
  tileheight = 8,
  nextobjectid = 321,
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
      name = "humanshots",
      firstgid = 213,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "humanshots.png",
      imagewidth = 16,
      imageheight = 64,
      tileoffset = {
        x = -8,
        y = 8
      },
      properties = {
        ["commoncollision"] = 0,
        ["row_arrow"] = 2,
        ["row_magic"] = 3,
        ["row_pike"] = 0,
        ["row_sword"] = 1
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
      firstgid = 217,
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
      firstgid = 337,
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
      firstgid = 472,
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
      firstgid = 7256,
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
      firstgid = 7257,
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
            ["script"] = "NPCKnight"
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
            ["script"] = "NPCKnight"
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
            ["script"] = "NPCKnight"
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
            ["script"] = "NPCKnight"
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
            ["script"] = "NPCKnight"
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
            ["script"] = "NPCKnight"
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
      name = "archers9,10",
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
          name = "archer10",
          type = "",
          shape = "rectangle",
          x = -16,
          y = 1544,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 90,
          visible = true,
          properties = {
            ["pathid"] = 124,
            ["pathtime"] = 2,
            ["script"] = "NPCArcher"
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
          name = "archer9",
          type = "",
          shape = "rectangle",
          x = 304,
          y = 1544,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 121,
            ["pathtime"] = 2,
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "Copy of archers3,4,5",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 177,
          name = "archer3",
          type = "",
          shape = "rectangle",
          x = -24,
          y = 1608,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 178,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher"
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
          name = "archer5",
          type = "",
          shape = "rectangle",
          x = -56,
          y = 1592,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 178,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 181,
          name = "archer4",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 1600,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 178,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 172,
          name = "archer6",
          type = "",
          shape = "rectangle",
          x = 312,
          y = 1576,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 174,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 173,
          name = "archer7",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 1568,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 174,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 175,
          name = "archer8",
          type = "",
          shape = "rectangle",
          x = 344,
          y = 1560,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 174,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher"
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
      name = "archers6,7,8",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 113,
          name = "archer6",
          type = "",
          shape = "rectangle",
          x = 312,
          y = 1664,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 68,
          name = "archer7",
          type = "",
          shape = "rectangle",
          x = 328,
          y = 1656,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher"
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
            { x = 8, y = -80 },
            { x = -96, y = -24 },
            { x = -224, y = -24 },
            { x = -344, y = -80 }
          },
          properties = {
            ["script"] = "LinearPath"
          }
        },
        {
          id = 114,
          name = "archer8",
          type = "",
          shape = "rectangle",
          x = 344,
          y = 1648,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 106,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher"
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
        }
      }
    },
    {
      type = "objectgroup",
      name = "archers3,4,5",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 67,
          name = "archer3",
          type = "",
          shape = "rectangle",
          x = -24,
          y = 1704,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher"
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
          name = "archer5",
          type = "",
          shape = "rectangle",
          x = -56,
          y = 1688,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 112,
          name = "archer4",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 1696,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "archers1,2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 65,
          name = "archer2",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1688,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 131,
            ["pathtime"] = 4,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 66,
          name = "archer1",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1704,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = "128",
            ["pathtime"] = 4,
            ["script"] = "NPCArcher"
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
          name = "archer2b",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 1664,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 131,
            ["pathtime"] = 4,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 119,
          name = "archer1b",
          type = "",
          shape = "rectangle",
          x = 224,
          y = 1680,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = "128",
            ["pathtime"] = 4,
            ["script"] = "NPCArcher"
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
          gid = 391,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.69999999999999996,
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
          gid = 397,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.80000000000000004,
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
          gid = 265,
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
          gid = 400,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.59999999999999998,
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
          gid = 403,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.59999999999999998,
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
          gid = 412,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.90000000000000002,
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
          gid = 409,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.90000000000000002,
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
          gid = 415,
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
          gid = 394,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.69999999999999996,
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
          gid = 406,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.80000000000000004,
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
      name = "hud",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
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
          width = 120,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["text"] = "SC        0",
            ["textalign"] = "left",
            ["textfont"] = "imagefont"
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
          gid = 7256,
          visible = true,
          properties = {}
        },
        {
          id = 320,
          name = "extendscore",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 0,
          width = 120,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["text"] = "EX 1000000",
            ["textalign"] = "right",
            ["textfont"] = "imagefont"
          }
        }
      }
    }
  }
}
