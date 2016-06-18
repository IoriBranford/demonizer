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
  nextobjectid = 60,
  properties = {
    ["playerid"] = 1
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
              duration = "500"
            },
            {
              tileid = "1",
              duration = "250"
            },
            {
              tileid = "2",
              duration = "250"
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
      name = "archershot",
      firstgid = 197,
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
      firstgid = 198,
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
      firstgid = 318,
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
      firstgid = 453,
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
      visible = true,
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
            ["script"] = "ShmupCam",
            ["sensor"] = true
          }
        },
        {
          id = 44,
          name = "path",
          type = "",
          shape = "polyline",
          x = 144,
          y = 2120,
          width = 0,
          height = 0,
          rotation = 0,
          visible = false,
          polyline = {
            { x = 0, y = 0 },
            { x = 0, y = -1800 }
          },
          properties = {
            ["collidable"] = true,
            ["sensor"] = true,
            ["time"] = 60,
            ["triggertype"] = "camerapath"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "enemies1",
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
          y = 1808,
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
          id = 53,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 1920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 246,
          visible = true,
          properties = {
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 57,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 1936,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 372,
          visible = true,
          properties = {
            ["script"] = "ShmupNPC"
          }
        },
        {
          id = 59,
          name = "",
          type = "",
          shape = "rectangle",
          x = 168,
          y = 1904,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 249,
          visible = true,
          properties = {
            ["script"] = "ShmupNPC"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "enemies2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["dynamic"] = true
      },
      objects = {
        {
          id = 40,
          name = "trigger",
          type = "",
          shape = "polyline",
          x = 0,
          y = 1744,
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
          id = 52,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 1784,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 89,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 55,
          name = "mage",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1816,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 71,
          visible = true,
          properties = {
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
    },
    {
      type = "objectgroup",
      name = "playershot",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {}
    }
  }
}
