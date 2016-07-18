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
                x = -8,
                y = 56,
                width = 16,
                height = 16,
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
      name = "impshot",
      firstgid = 4,
      filename = "impshot.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "impshot.png",
      imagewidth = 32,
      imageheight = 16,
      tileoffset = {
        x = -16,
        y = 8
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
      name = "demonizing",
      firstgid = 5,
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
      firstgid = 8,
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
        ["row_knight1"] = 8,
        ["row_knight2"] = 9,
        ["row_mage"] = 11,
        ["row_priest"] = 10
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
      name = "infwomen",
      firstgid = 47,
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
        ["column_knight1"] = 0,
        ["column_knight2"] = 3,
        ["column_mage"] = 9,
        ["column_priest"] = 6,
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
      firstgid = 122,
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
        ["column_knight1"] = 0,
        ["column_knight2"] = 3,
        ["column_mage"] = 9,
        ["column_priest"] = 6,
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
      name = "knightshot",
      firstgid = 212,
      filename = "knightshot.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "knightshot.png",
      imagewidth = 16,
      imageheight = 16,
      tileoffset = {
        x = -8,
        y = 8
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
                id = 1,
                name = "",
                type = "",
                shape = "ellipse",
                x = -4,
                y = 12,
                width = 8,
                height = 8,
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
      name = "archershot",
      firstgid = 213,
      filename = "archershot.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "archershot.png",
      imagewidth = 32,
      imageheight = 16,
      tileoffset = {
        x = -16,
        y = 8
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
                id = 1,
                name = "",
                type = "",
                shape = "ellipse",
                x = 4,
                y = 12,
                width = 8,
                height = 8,
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
      name = "mageshot",
      firstgid = 214,
      filename = "mageshot.tsx",
      tilewidth = 16,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      image = "mageshot.png",
      imagewidth = 16,
      imageheight = 8,
      tileoffset = {
        x = 0,
        y = 0
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
                id = 2,
                name = "",
                type = "",
                shape = "ellipse",
                x = 8,
                y = 2,
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
      firstgid = 215,
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
      firstgid = 335,
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
      firstgid = 470,
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
      firstgid = 7254,
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
      firstgid = 7255,
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
        ["fontglyphs"] = " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,!?-+/():;%&`'*#=[]\\\""
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
          gid = 173,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 161,
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
          gid = 158,
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
          gid = 170,
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
          gid = 86,
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
          gid = 161,
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
            { x = 168, y = -32 }
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
          gid = 170,
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
          x = -56,
          y = 896,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = 344,
          y = 824,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          gid = 170,
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
            { x = 168, y = -32 }
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
          gid = 80,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 158,
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
          gid = 161,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 170,
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
          gid = 89,
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
          gid = 170,
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
          x = -8,
          y = 1616,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = -48,
          y = 1600,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = -24,
          y = 1600,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = 296,
          y = 1584,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = 312,
          y = 1568,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = 336,
          y = 1568,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = 296,
          y = 1664,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = 312,
          y = 1648,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = 336,
          y = 1648,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = -8,
          y = 1704,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = -48,
          y = 1688,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = -24,
          y = 1688,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = 72,
          y = 1680,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = 216,
          y = 1696,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = 48,
          y = 1680,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          x = 240,
          y = 1696,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 170,
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
          gid = 389,
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
          gid = 395,
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
          gid = 263,
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
          gid = 398,
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
          gid = 401,
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
          gid = 410,
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
          gid = 407,
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
          gid = 413,
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
          gid = 392,
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
          gid = 404,
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
          gid = 7254,
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
