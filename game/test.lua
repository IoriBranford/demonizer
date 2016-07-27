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
  nextobjectid = 325,
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
      name = "humanshots",
      firstgid = 214,
      filename = "humanshots.tsx",
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
      firstgid = 218,
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
      firstgid = 338,
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
      firstgid = 473,
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
      firstgid = 7257,
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
      firstgid = 7258,
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
            ["script"] = "NPCSwordsman"
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
            ["script"] = "NPCSwordsman"
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
          x = -40,
          y = 1704,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher",
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
            { x = 104, y = -16 },
            { x = 232, y = -16 },
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
          name = "archer5",
          type = "",
          shape = "rectangle",
          x = -72,
          y = 1688,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher",
            ["vehicleid"] = 324
          }
        },
        {
          id = 112,
          name = "archer4",
          type = "",
          shape = "rectangle",
          x = -56,
          y = 1696,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 171,
          visible = true,
          properties = {
            ["pathid"] = 104,
            ["pathtime"] = 3,
            ["script"] = "NPCArcher",
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
            ["pathid"] = 128,
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
            ["pathid"] = 128,
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
          gid = 392,
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
          gid = 398,
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
          gid = 266,
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
          gid = 401,
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
          gid = 404,
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
          gid = 413,
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
          gid = 410,
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
          gid = 416,
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
          gid = 395,
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
          gid = 407,
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
          gid = 7257,
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
