return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.16.1",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 36,
  height = 265,
  tilewidth = 8,
  tileheight = 8,
  nextobjectid = 182,
  properties = {
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
        ["row_priest"] = 10,
        ["row_wizard"] = 11
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
        ["column_priest"] = 6,
        ["column_wizard"] = 9,
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
        ["column_priest"] = 6,
        ["column_wizard"] = 9,
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
      firstgid = 197,
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
      firstgid = 198,
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
      name = "civwomen",
      firstgid = 199,
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
      firstgid = 319,
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
      firstgid = 454,
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
            ["dynamic"] = true,
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
          visible = false,
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
      name = "archers9,10",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["dynamic"] = true
      },
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
            { x = -232, y = 56 },
            { x = -112, y = 96 },
            { x = 0, y = 96 }
          },
          properties = {
            ["script"] = "BezierPath"
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
            { x = 224, y = 56 },
            { x = 104, y = 96 },
            { x = 0, y = 96 }
          },
          properties = {
            ["script"] = "BezierPath"
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
          gid = 164,
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
      properties = {
        ["dynamic"] = true
      },
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
          gid = 164,
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
            ["script"] = "BezierPath"
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
          gid = 164,
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
          gid = 164,
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
          gid = 164,
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
          gid = 164,
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
          gid = 164,
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
            ["script"] = "BezierPath"
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
      properties = {
        ["dynamic"] = true
      },
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
          gid = 164,
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
          gid = 164,
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
            ["script"] = "BezierPath"
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
          gid = 164,
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
      properties = {
        ["dynamic"] = true
      },
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
          gid = 164,
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
            ["script"] = "BezierPath"
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
          gid = 164,
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
          gid = 164,
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
      properties = {
        ["dynamic"] = true
      },
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
          gid = 164,
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
          gid = 164,
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
          gid = 164,
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
          gid = 164,
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
            ["script"] = "BezierPath"
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
            ["script"] = "BezierPath"
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
      properties = {
        ["dynamic"] = true
      },
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
          gid = 373,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.69999999999999996,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 76,
          name = "",
          type = "",
          shape = "rectangle",
          x = 104,
          y = 1952,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 376,
          visible = true,
          properties = {
            ["pathid"] = 86,
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
          gid = 379,
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
          x = 80,
          y = 1920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 247,
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
            { x = -16, y = -16 },
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
            { x = 16, y = 48 },
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
          gid = 382,
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
          gid = 385,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.59999999999999998,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 134,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1968,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 388,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.80000000000000004,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 135,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 1968,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 391,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.90000000000000002,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 136,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1976,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 394,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.90000000000000002,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 137,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 1936,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 397,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.5,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 150,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 1976,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 391,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.90000000000000002,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 151,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 1936,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 385,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.59999999999999998,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 152,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 397,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.5,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 153,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 1960,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 373,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.69999999999999996,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 154,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 1960,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 379,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathtime"] = 0.80000000000000004,
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
          gid = 376,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.69999999999999996,
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 159,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 1944,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 382,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathtime"] = 0.59999999999999998,
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
          gid = 388,
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
      properties = {
        ["dynamic"] = true
      },
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
            ["cameraid"] = 7,
            ["script"] = "ShmupPlayer"
          }
        }
      }
    }
  }
}