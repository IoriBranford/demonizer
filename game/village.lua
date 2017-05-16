return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 36,
  height = 265,
  tilewidth = 8,
  tileheight = 8,
  nextobjectid = 496,
  properties = {
    ["cameraid"] = 7,
    ["delayinitobjects"] = false,
    ["music"] = "mus/09 - Blue Sky Laundry.vgm",
    ["overlaymap"] = "gameplay.lua",
    ["playerid"] = 1,
    ["script"] = "ShmupMap"
  },
  tilesets = {
    {
      name = "imp",
      firstgid = 1,
      filename = "img/imp.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/imp.png",
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
                properties = {
                  ["collidable"] = true
                }
              },
              {
                id = 7,
                name = "wingman1",
                type = "",
                shape = "ellipse",
                x = -24,
                y = 72,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 8,
                name = "wingman2",
                type = "",
                shape = "ellipse",
                x = 24,
                y = 72,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 10,
                name = "wingman3",
                type = "",
                shape = "ellipse",
                x = -16,
                y = 48,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 11,
                name = "wingman4",
                type = "",
                shape = "ellipse",
                x = 16,
                y = 48,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 12,
                name = "focuswingman1",
                type = "",
                shape = "ellipse",
                x = -32,
                y = 40,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 13,
                name = "focuswingman2",
                type = "",
                shape = "ellipse",
                x = 32,
                y = 40,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 14,
                name = "focuswingman3",
                type = "",
                shape = "ellipse",
                x = -16,
                y = 8,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 15,
                name = "focuswingman4",
                type = "",
                shape = "ellipse",
                x = 16,
                y = 8,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            },
            {
              tileid = 2,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "infwomen",
      firstgid = 4,
      filename = "img/infwomen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/infwomen.png",
      imagewidth = 432,
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
        ["column_princess"] = 15,
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
                properties = {
                  ["collidable"] = true
                }
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            },
            {
              tileid = 2,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "infmen",
      firstgid = 94,
      filename = "img/infmen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/infmen.png",
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
                properties = {
                  ["collidable"] = true
                }
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            },
            {
              tileid = 2,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "boat",
      firstgid = 184,
      filename = "img/boat.tsx",
      tilewidth = 128,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/boat.png",
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
                properties = {
                  ["collidable"] = true
                }
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
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        }
      }
    },
    {
      name = "ballista",
      firstgid = 185,
      filename = "img/ballista.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/ballista.png",
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
                properties = {
                  ["collidable"] = true
                }
              }
            }
          },
          animation = {
            {
              tileid = 16,
              duration = 967
            },
            {
              tileid = 0,
              duration = 250
            },
            {
              tileid = 8,
              duration = 500
            },
            {
              tileid = 0,
              duration = 33
            }
          }
        }
      }
    },
    {
      name = "civwomen",
      firstgid = 209,
      filename = "img/civwomen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/civwomen.png",
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
                properties = {
                  ["collidable"] = true
                }
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            },
            {
              tileid = 2,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "civmen",
      firstgid = 329,
      filename = "img/civmen.tsx",
      tilewidth = 24,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/civmen.png",
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
                properties = {
                  ["collidable"] = true
                }
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            },
            {
              tileid = 2,
              duration = 125
            },
            {
              tileid = 1,
              duration = 125
            }
          }
        }
      }
    },
    {
      name = "test_bank.png",
      firstgid = 464,
      filename = "img/test_bank.png.tsx",
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      image = "img/test_bank.png",
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
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 7,
          name = "camera",
          type = "Camera",
          shape = "rectangle",
          x = 24,
          y = 1800,
          width = 240,
          height = 320,
          rotation = 0,
          visible = false,
          properties = {
            ["pathid"] = 44,
            ["pathspeed"] = 30
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
            ["script"] = "PathGraph"
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
        ["activatemusic"] = "mus/06 - Approaching.vgm"
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
          gid = 145,
          visible = true,
          properties = {
            ["onDiscard"] = "playerVictory",
            ["script"] = "NPCHero"
          }
        },
        {
          id = 265,
          name = "",
          type = "Trigger",
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
        ["activatesound"] = "snd/alarm4.wav",
        ["fademusic"] = true
      },
      objects = {
        {
          id = 436,
          name = "",
          type = "Trigger",
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
          gid = 187,
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
          gid = 188,
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
          gid = 187,
          visible = true,
          properties = {
            ["script"] = "VehicleBallista"
          }
        },
        {
          id = 409,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 288,
          width = 288,
          height = 56,
          rotation = 0,
          visible = true,
          properties = {
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
          y = 352,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["pathid"] = 495,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 30,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 294,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 368,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["pathid"] = 495,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 30,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 300,
          name = "",
          type = "Trigger",
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
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 302,
          name = "",
          type = "",
          shape = "rectangle",
          x = 232,
          y = 352,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["pathid"] = 495,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 30,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 305,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 368,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["pathid"] = 495,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 30,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 493,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 72,
          y = 372,
          width = 64,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 495,
          name = "path",
          type = "",
          shape = "polyline",
          x = 136,
          y = 376,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 16, y = -32 },
            { x = 16, y = -48 }
          },
          properties = {
            ["script"] = "PathGraph"
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
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 432,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
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
          gid = 133,
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
            ["script"] = "PathGraph"
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
          gid = 133,
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
            ["script"] = "PathGraph"
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
          gid = 130,
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
          gid = 130,
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
          gid = 130,
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
            { x = 288, y = 200 }
          },
          properties = {
            ["script"] = "PathGraph"
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 400,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 480,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
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
          gid = 130,
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
          gid = 130,
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
          gid = 130,
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 397,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 435,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 592,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["pathid"] = 486,
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 30,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 434,
          name = "archer",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 592,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["pathid"] = 483,
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 30,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 483,
          name = "path",
          type = "",
          shape = "polyline",
          x = 48,
          y = 624,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = 32, y = -32 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 484,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 40,
          y = 576,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 485,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 232,
          y = 576,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 486,
          name = "path",
          type = "",
          shape = "polyline",
          x = 240,
          y = 624,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = -32, y = -32 }
          },
          properties = {
            ["script"] = "PathGraph"
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
      properties = {
        ["static"] = true
      },
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
            ["collidable"] = false,
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
            ["collidable"] = false,
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
            ["collidable"] = false,
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
            ["collidable"] = false,
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
          gid = 49,
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
          type = "Trigger",
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
          x = 176,
          y = 656,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["pathid"] = 492,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 30,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 413,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 712,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["pathid"] = 492,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 30,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 412,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 712,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["pathid"] = 491,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 30,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 414,
          name = "",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 656,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["pathid"] = 491,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 30,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 416,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 624,
          width = 288,
          height = 128,
          rotation = 0,
          visible = false,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 487,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 96,
          y = 640,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 488,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 160,
          y = 640,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 489,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 64,
          y = 696,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 490,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 192,
          y = 696,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 491,
          name = "path",
          type = "",
          shape = "polyline",
          x = 80,
          y = 720,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = 32, y = -32 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 492,
          name = "path",
          type = "",
          shape = "polyline",
          x = 176,
          y = 720,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = 32, y = -32 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 494,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 176,
          y = 356,
          width = 64,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
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
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 824,
          width = 288,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {
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
          gid = 43,
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
          gid = 186,
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
          gid = 188,
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
            ["script"] = "PathGraph"
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
            ["script"] = "PathGraph"
          }
        },
        {
          id = 370,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 896,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 219,
            ["pathmode"] = "relative",
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
          x = 184,
          y = 952,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = 24, y = -32 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 227,
          name = "",
          type = "",
          shape = "rectangle",
          x = 184,
          y = 920,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["pathid"] = 224,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 15,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 393,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 928,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 223,
          name = "path",
          type = "",
          shape = "polyline",
          x = 296,
          y = 1040,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -208, y = -16 },
            { x = -176, y = -16 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 225,
          name = "",
          type = "",
          shape = "rectangle",
          x = 88,
          y = 1024,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["pathid"] = 223,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 30,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 478,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 80,
          y = 1016,
          width = 16,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 479,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 176,
          y = 912,
          width = 8,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {}
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
            ["script"] = "PathGraph"
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 211,
            ["pathmode"] = "relative",
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 273,
            ["pathmode"] = "relative",
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 211,
            ["pathmode"] = "relative",
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
            ["script"] = "PathGraph"
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 273,
            ["pathmode"] = "relative",
            ["pathtime"] = 0.5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 391,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 968,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
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
          gid = 130,
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
          gid = 130,
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
          gid = 130,
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
            { x = -288, y = 224 }
          },
          properties = {
            ["script"] = "PathGraph"
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 271,
            ["pathtime"] = 5,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 390,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1064,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
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
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1016,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 240,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 1040,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 52,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 482,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 15,
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
          gid = 130,
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
          gid = 130,
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
          gid = 130,
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
          gid = 130,
          visible = true,
          properties = {
            ["pathid"] = 195,
            ["pathtime"] = 4,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 477,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 208,
          y = 1032,
          width = 8,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 482,
          name = "path",
          type = "",
          shape = "polyline",
          x = 208,
          y = 1072,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = -16, y = -16 }
          },
          properties = {
            ["script"] = "PathGraph"
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
          x = 88,
          y = 1104,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 480,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 15,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 238,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 1104,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 481,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 15,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 475,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 80,
          y = 1096,
          width = 8,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 476,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 208,
          y = 1096,
          width = 8,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 480,
          name = "path",
          type = "",
          shape = "polyline",
          x = 88,
          y = 1136,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = 16, y = -16 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 481,
          name = "path",
          type = "",
          shape = "polyline",
          x = 208,
          y = 1136,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = -32 },
            { x = -16, y = -16 }
          },
          properties = {
            ["script"] = "PathGraph"
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
          gid = 130,
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
            { x = 320, y = -16 }
          },
          properties = {
            ["script"] = "PathGraph"
          }
        },
        {
          id = 239,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1144,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
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
          gid = 130,
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
          gid = 130,
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
          gid = 130,
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
          y = 1264,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 472,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 15,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 251,
          name = "",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 1264,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 472,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 15,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 392,
          name = "",
          type = "Trigger",
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
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 474,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 32,
          y = 1256,
          width = 64,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
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
          name = "",
          type = "Trigger",
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
          gid = 142,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 472,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 15,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 252,
          name = "",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 1296,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 472,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 15,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 473,
          name = "cover",
          type = "NPCCover",
          shape = "rectangle",
          x = 192,
          y = 1288,
          width = 48,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
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
          name = "",
          type = "Trigger",
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
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 245,
          name = "",
          type = "",
          shape = "rectangle",
          x = 208,
          y = 1360,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 472,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 15,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 246,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 1360,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 472,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 15,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 247,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 1376,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 472,
            ["pathmode"] = "relative",
            ["pathpicker"] = "linear2way",
            ["pathspeed"] = 15,
            ["script"] = "NPCArcher"
          }
        },
        {
          id = 468,
          name = "bushcover",
          type = "NPCCover",
          shape = "rectangle",
          x = 80,
          y = 1352,
          width = 32,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 469,
          name = "bushcover",
          type = "NPCCover",
          shape = "rectangle",
          x = 112,
          y = 1368,
          width = 32,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 470,
          name = "cavecover",
          type = "NPCCover",
          shape = "rectangle",
          x = 192,
          y = 1352,
          width = 32,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 472,
          name = "path",
          type = "",
          shape = "polyline",
          x = 184,
          y = 1448,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -32, y = -72 },
            { x = -32, y = -56 }
          },
          properties = {
            ["script"] = "PathGraph"
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
          name = "",
          type = "Trigger",
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
          gid = 142,
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
          gid = 142,
          visible = true,
          properties = {
            ["script"] = "NPCArcher"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "unusedwaterpikes",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
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
          gid = 2147483832,
          visible = true,
          properties = {
            ["kopassengers"] = true,
            ["pathid"] = 106,
            ["pathtime"] = 5,
            ["script"] = "ShmupVehicle"
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
          gid = 184,
          visible = true,
          properties = {
            ["kopassengers"] = true,
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 421,
            ["script"] = "NPCPikeman"
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 421,
            ["script"] = "NPCPikeman"
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 426,
            ["script"] = "NPCPikeman"
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 421,
            ["script"] = "NPCPikeman"
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 426,
            ["script"] = "NPCPikeman"
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 426,
            ["script"] = "NPCPikeman"
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 345,
            ["script"] = "NPCPikeman"
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
            ["script"] = "PathGraph"
          }
        },
        {
          id = 179,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1576,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 345,
            ["script"] = "NPCPikeman"
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 345,
            ["script"] = "NPCPikeman"
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 343,
            ["script"] = "NPCPikeman"
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 343,
            ["script"] = "NPCPikeman"
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 343,
            ["script"] = "NPCPikeman"
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
            ["script"] = "PathGraph"
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
          gid = 2147483832,
          visible = true,
          properties = {
            ["kopassengers"] = true,
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
          gid = 184,
          visible = true,
          properties = {
            ["kopassengers"] = true,
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
          gid = 40,
          visible = true,
          properties = {
            ["leaderid"] = 346,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 346
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 346,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 346
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
          gid = 184,
          visible = true,
          properties = {
            ["kopassengers"] = true,
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 346,
            ["script"] = "NPCPikeman",
            ["volleyleaderid"] = 346
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 325,
            ["script"] = "NPCPikeman"
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 325,
            ["script"] = "NPCPikeman"
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
            ["script"] = "PathGraph"
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 325,
            ["script"] = "NPCPikeman"
          }
        },
        {
          id = 115,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1632,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
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
          gid = 2147483832,
          visible = true,
          properties = {
            ["kopassengers"] = true,
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 324,
            ["script"] = "NPCPikeman"
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
            ["script"] = "PathGraph"
          }
        },
        {
          id = 108,
          name = "",
          type = "Trigger",
          shape = "rectangle",
          x = 0,
          y = 1688,
          width = 288,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 324,
            ["script"] = "NPCPikeman"
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
          gid = 130,
          visible = true,
          properties = {
            ["leaderid"] = 324,
            ["script"] = "NPCPikeman"
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
          gid = 184,
          visible = true,
          properties = {
            ["kopassengers"] = true,
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
          name = "",
          type = "Trigger",
          shape = "polyline",
          x = 0,
          y = 1800,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 288, y = 0 }
          },
          properties = {
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
          gid = 257,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathmode"] = "relative",
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
            ["script"] = "PathGraph"
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
          gid = 392,
          visible = true,
          properties = {
            ["pathid"] = 419,
            ["pathmode"] = "relative",
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
          gid = 404,
          visible = true,
          properties = {
            ["pathid"] = 419,
            ["pathmode"] = "relative",
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
          gid = 407,
          visible = true,
          properties = {
            ["pathid"] = 86,
            ["pathmode"] = "relative",
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
          gid = 401,
          visible = true,
          properties = {
            ["pathid"] = 419,
            ["pathmode"] = "relative",
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
            ["script"] = "PathGraph"
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
          gid = 389,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathmode"] = "relative",
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
          gid = 398,
          visible = true,
          properties = {
            ["pathid"] = 418,
            ["pathmode"] = "relative",
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
          gid = 395,
          visible = true,
          properties = {
            ["pathid"] = 85,
            ["pathmode"] = "relative",
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
          gid = 383,
          visible = true,
          properties = {
            ["pathid"] = 418,
            ["pathmode"] = "relative",
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
          gid = 386,
          visible = true,
          properties = {
            ["pathid"] = 418,
            ["pathmode"] = "relative",
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
            ["script"] = "PathGraph"
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
            ["script"] = "PathGraph"
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
      name = "playerteam",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "PlayerTeam"
      },
      objects = {
        {
          id = 1,
          name = "player",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 2152,
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
    }
  }
}
