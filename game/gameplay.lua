return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.0.0",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 15,
  height = 20,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 24,
  properties = {
    ["delayinitobjects"] = true,
    ["script"] = "ShmupMap"
  },
  tilesets = {
    {
      name = "bombgauge",
      firstgid = 1,
      filename = "img/bombgauge.tsx",
      tilewidth = 16,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/bombgauge.png",
      imagewidth = 128,
      imageheight = 64,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 32
      },
      properties = {
        ["commoncollision"] = 0,
        ["row_full"] = 1,
        ["row_notfull"] = 0
      },
      terrains = {},
      tilecount = 16,
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
                name = "fill",
                type = "",
                shape = "rectangle",
                x = 6,
                y = 4,
                width = 4,
                height = 24,
                rotation = 0,
                visible = true,
                properties = {
                  ["color"] = "#ffaadfff",
                  ["direction"] = "up"
                }
              }
            }
          }
        },
        {
          id = 8,
          animation = {
            {
              tileid = 8,
              duration = 100
            },
            {
              tileid = 9,
              duration = 100
            },
            {
              tileid = 10,
              duration = 100
            },
            {
              tileid = 11,
              duration = 100
            },
            {
              tileid = 12,
              duration = 100
            },
            {
              tileid = 13,
              duration = 100
            },
            {
              tileid = 14,
              duration = 100
            },
            {
              tileid = 15,
              duration = 100
            }
          }
        }
      }
    },
    {
      name = "hud_icons",
      firstgid = 17,
      filename = "img/hud_icons.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/hud_icons.png",
      imagewidth = 32,
      imageheight = 32,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 4,
      tiles = {}
    },
    {
      name = "touchmarkers",
      firstgid = 21,
      filename = "img/touchmarkers.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/touchmarkers.png",
      imagewidth = 128,
      imageheight = 64,
      tileoffset = {
        x = -32,
        y = 32
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {},
      terrains = {},
      tilecount = 2,
      tiles = {}
    },
    {
      name = "particles",
      firstgid = 23,
      filename = "img/particles.tsx",
      tilewidth = 4,
      tileheight = 4,
      spacing = 0,
      margin = 0,
      image = "img/particles.png",
      imagewidth = 16,
      imageheight = 16,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 4,
        height = 4
      },
      properties = {
        ["commonanimation"] = 0
      },
      terrains = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "damage"
          },
          animation = {
            {
              tileid = 0,
              duration = 100
            },
            {
              tileid = 1,
              duration = 100
            },
            {
              tileid = 2,
              duration = 100
            },
            {
              tileid = 3,
              duration = 100
            }
          }
        },
        {
          id = 4,
          properties = {
            ["name"] = "guard"
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "powerdot"
          }
        }
      }
    },
    {
      name = "playerhitbox",
      firstgid = 39,
      filename = "img/playerhitbox.tsx",
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      image = "img/playerhitbox.png",
      imagewidth = 8,
      imageheight = 8,
      tileoffset = {
        x = -4,
        y = 4
      },
      grid = {
        orientation = "orthogonal",
        width = 8,
        height = 8
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "powergauge",
      firstgid = 40,
      filename = "img/powergauge.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/powergauge.png",
      imagewidth = 64,
      imageheight = 32,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {
        ["commoncollision"] = 0
      },
      terrains = {},
      tilecount = 2,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "notfull"
          },
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
                name = "power1",
                type = "",
                shape = "ellipse",
                x = 1,
                y = 16,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 2,
                name = "power2",
                type = "",
                shape = "ellipse",
                x = 5,
                y = 18,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 3,
                name = "power3",
                type = "",
                shape = "ellipse",
                x = 8,
                y = 21,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 4,
                name = "power4",
                type = "",
                shape = "ellipse",
                x = 11,
                y = 24,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 5,
                name = "power5",
                type = "",
                shape = "ellipse",
                x = 13,
                y = 28,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 6,
                name = "power6",
                type = "",
                shape = "ellipse",
                x = 13,
                y = 33,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 7,
                name = "power7",
                type = "",
                shape = "ellipse",
                x = 11,
                y = 37,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 8,
                name = "power8",
                type = "",
                shape = "ellipse",
                x = 8,
                y = 40,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 9,
                name = "power9",
                type = "",
                shape = "ellipse",
                x = 5,
                y = 43,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 10,
                name = "power10",
                type = "",
                shape = "ellipse",
                x = 1,
                y = 45,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 11,
                name = "power18",
                type = "",
                shape = "ellipse",
                x = -11,
                y = 21,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 12,
                name = "power14",
                type = "",
                shape = "ellipse",
                x = -14,
                y = 37,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 13,
                name = "power15",
                type = "",
                shape = "ellipse",
                x = -16,
                y = 33,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 14,
                name = "power16",
                type = "",
                shape = "ellipse",
                x = -16,
                y = 28,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 15,
                name = "power12",
                type = "",
                shape = "ellipse",
                x = -8,
                y = 43,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 16,
                name = "power11",
                type = "",
                shape = "ellipse",
                x = -4,
                y = 45,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 17,
                name = "power13",
                type = "",
                shape = "ellipse",
                x = -11,
                y = 40,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 18,
                name = "power17",
                type = "",
                shape = "ellipse",
                x = -14,
                y = 24,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 19,
                name = "power19",
                type = "",
                shape = "ellipse",
                x = -8,
                y = 18,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 20,
                name = "power20",
                type = "",
                shape = "ellipse",
                x = -4,
                y = 16,
                width = 4,
                height = 4,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 1,
          properties = {
            ["name"] = "full"
          }
        }
      }
    },
    {
      name = "sparks_huge",
      firstgid = 42,
      filename = "img/sparks_huge.tsx",
      tilewidth = 96,
      tileheight = 96,
      spacing = 0,
      margin = 0,
      image = "img/sparks_huge.png",
      imagewidth = 480,
      imageheight = 384,
      tileoffset = {
        x = -48,
        y = 48
      },
      grid = {
        orientation = "orthogonal",
        width = 96,
        height = 96
      },
      properties = {},
      terrains = {},
      tilecount = 20,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "explosion"
          },
          animation = {
            {
              tileid = 0,
              duration = 67
            },
            {
              tileid = 1,
              duration = 67
            },
            {
              tileid = 2,
              duration = 67
            },
            {
              tileid = 3,
              duration = 67
            },
            {
              tileid = 4,
              duration = 67
            },
            {
              tileid = 5,
              duration = 67
            },
            {
              tileid = 6,
              duration = 67
            },
            {
              tileid = 7,
              duration = 67
            },
            {
              tileid = 8,
              duration = 67
            },
            {
              tileid = 9,
              duration = 67
            }
          }
        },
        {
          id = 10,
          properties = {
            ["name"] = "playerexplosion"
          },
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
                x = -42,
                y = 54,
                width = 84,
                height = 84,
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
              tileid = 10,
              duration = 83
            },
            {
              tileid = 11,
              duration = 83
            },
            {
              tileid = 12,
              duration = 83
            },
            {
              tileid = 13,
              duration = 83
            },
            {
              tileid = 14,
              duration = 83
            },
            {
              tileid = 15,
              duration = 83
            },
            {
              tileid = 16,
              duration = 83
            },
            {
              tileid = 17,
              duration = 83
            },
            {
              tileid = 18,
              duration = 83
            },
            {
              tileid = 19,
              duration = 83
            }
          }
        }
      }
    },
    {
      name = "sparks_med",
      firstgid = 62,
      filename = "img/sparks_med.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "img/sparks_med.png",
      imagewidth = 192,
      imageheight = 64,
      tileoffset = {
        x = -16,
        y = 16
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      terrains = {},
      tilecount = 12,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "explosion"
          },
          animation = {
            {
              tileid = 0,
              duration = 67
            },
            {
              tileid = 1,
              duration = 67
            },
            {
              tileid = 2,
              duration = 67
            },
            {
              tileid = 3,
              duration = 67
            },
            {
              tileid = 4,
              duration = 67
            },
            {
              tileid = 5,
              duration = 67
            }
          }
        },
        {
          id = 6,
          properties = {
            ["name"] = "wingmanexplosion"
          },
          animation = {
            {
              tileid = 6,
              duration = 67
            },
            {
              tileid = 7,
              duration = 67
            },
            {
              tileid = 8,
              duration = 67
            },
            {
              tileid = 9,
              duration = 67
            },
            {
              tileid = 10,
              duration = 67
            },
            {
              tileid = 11,
              duration = 67
            }
          }
        }
      }
    },
    {
      name = "sparks_small",
      firstgid = 74,
      filename = "img/sparks_small.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/sparks_small.png",
      imagewidth = 128,
      imageheight = 32,
      tileoffset = {
        x = -8,
        y = 8
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {
        ["commonanimation"] = 0
      },
      terrains = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "enemydamage"
          },
          animation = {
            {
              tileid = 0,
              duration = 16
            },
            {
              tileid = 1,
              duration = 16
            },
            {
              tileid = 2,
              duration = 16
            },
            {
              tileid = 3,
              duration = 16
            },
            {
              tileid = 4,
              duration = 16
            },
            {
              tileid = 5,
              duration = 16
            },
            {
              tileid = 6,
              duration = 16
            },
            {
              tileid = 7,
              duration = 16
            }
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "enemyguard"
          }
        }
      }
    },
    {
      name = "demonizing",
      firstgid = 90,
      filename = "img/demonizing.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/demonizing.png",
      imagewidth = 192,
      imageheight = 64,
      tileoffset = {
        x = -32,
        y = 32
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {},
      terrains = {},
      tilecount = 3,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 0,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            },
            {
              tileid = 2,
              duration = 62
            },
            {
              tileid = 1,
              duration = 62
            }
          }
        }
      }
    },
    {
      name = "demonwomen",
      firstgid = 93,
      filename = "img/demonwomen.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/demonwomen.png",
      imagewidth = 192,
      imageheight = 832,
      tileoffset = {
        x = -32,
        y = 32
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
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
            }
          }
        }
      }
    },
    {
      name = "demonbomb",
      firstgid = 132,
      filename = "img/demonbomb.tsx",
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      image = "img/demonbomb.png",
      imagewidth = 512,
      imageheight = 256,
      tileoffset = {
        x = -64,
        y = 128
      },
      grid = {
        orientation = "orthogonal",
        width = 128,
        height = 128
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
                properties = {
                  ["collidable"] = true
                }
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 50
            },
            {
              tileid = 1,
              duration = 50
            },
            {
              tileid = 2,
              duration = 50
            },
            {
              tileid = 3,
              duration = 50
            },
            {
              tileid = 4,
              duration = 50
            },
            {
              tileid = 5,
              duration = 50
            },
            {
              tileid = 6,
              duration = 50
            },
            {
              tileid = 7,
              duration = 50
            }
          }
        }
      }
    },
    {
      name = "demonshots",
      firstgid = 140,
      filename = "img/demonshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/demonshots.png",
      imagewidth = 32,
      imageheight = 64,
      tileoffset = {
        x = -16,
        y = 8
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 16
      },
      properties = {
        ["commoncollision"] = 0
      },
      terrains = {},
      tilecount = 4,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "player"
          },
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
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 1,
          properties = {
            ["name"] = "wingman"
          }
        },
        {
          id = 2,
          properties = {
            ["name"] = "bombpackage"
          }
        },
        {
          id = 3,
          properties = {
            ["name"] = "bombshrapnel"
          }
        }
      }
    },
    {
      name = "humanshots",
      firstgid = 144,
      filename = "img/humanshots.tsx",
      tilewidth = 32,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "img/humanshots.png",
      imagewidth = 128,
      imageheight = 128,
      tileoffset = {
        x = -24,
        y = 8
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 16
      },
      properties = {
        ["commoncollision"] = 0
      },
      terrains = {},
      tilecount = 32,
      tiles = {
        {
          id = 0,
          properties = {
            ["name"] = "pike"
          },
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
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 4,
          properties = {
            ["name"] = "sword"
          }
        },
        {
          id = 8,
          properties = {
            ["name"] = "arrow"
          }
        },
        {
          id = 9,
          properties = {
            ["name"] = "firearrow"
          },
          animation = {
            {
              tileid = 9,
              duration = 67
            },
            {
              tileid = 10,
              duration = 67
            },
            {
              tileid = 11,
              duration = 67
            }
          }
        },
        {
          id = 12,
          properties = {
            ["name"] = "magic"
          }
        },
        {
          id = 16,
          properties = {
            ["name"] = "ballista"
          }
        },
        {
          id = 20,
          properties = {
            ["name"] = "catapult"
          },
          animation = {
            {
              tileid = 20,
              duration = 67
            },
            {
              tileid = 21,
              duration = 67
            },
            {
              tileid = 22,
              duration = 67
            },
            {
              tileid = 23,
              duration = 67
            }
          }
        },
        {
          id = 24,
          properties = {
            ["name"] = "water"
          }
        },
        {
          id = 28,
          properties = {
            ["name"] = "fire"
          },
          animation = {
            {
              tileid = 28,
              duration = 67
            },
            {
              tileid = 29,
              duration = 67
            },
            {
              tileid = 30,
              duration = 67
            },
            {
              tileid = 31,
              duration = 67
            }
          }
        }
      }
    }
  },
  layers = {
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
      name = "status",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {
        ["scoreid"] = 16,
        ["script"] = "ShmupStatus"
      },
      objects = {
        {
          id = 2,
          name = "wingright",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 20,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "wingleft",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 48,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 19,
          visible = true,
          properties = {}
        },
        {
          id = 1,
          name = "reserves",
          type = "",
          shape = "rectangle",
          x = 8,
          y = 36,
          width = 16,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["text"] = "0",
            ["textalign"] = "center",
            ["textfont"] = "fnt/pressstart2p.fnt"
          }
        },
        {
          id = 4,
          name = "bomb3",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 320,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 5,
          name = "bomb2",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 320,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 6,
          name = "bomb1",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 320,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["script"] = "GaugeBomb"
          }
        },
        {
          id = 7,
          name = "life9",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "life8",
          type = "",
          shape = "rectangle",
          x = 112,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "life7",
          type = "",
          shape = "rectangle",
          x = 96,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "life6",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "life5",
          type = "",
          shape = "rectangle",
          x = 64,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "life4",
          type = "",
          shape = "rectangle",
          x = 48,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "life3",
          type = "",
          shape = "rectangle",
          x = 32,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "life2",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "life1",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 32,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 17,
          visible = true,
          properties = {}
        },
        {
          id = 16,
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
            ["textfont"] = "fnt/pressstart2p.fnt",
            ["textformat"] = "SC%8d EX%8d"
          }
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
          id = 17,
          name = "title",
          type = "UIButton",
          shape = "rectangle",
          x = 48,
          y = 208,
          width = 144,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ButtonTitle",
            ["text"] = "TITLE"
          }
        },
        {
          id = 18,
          name = "restart",
          type = "UIButton",
          shape = "rectangle",
          x = 48,
          y = 160,
          width = 144,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ButtonRestart",
            ["text"] = "RESTART"
          }
        },
        {
          id = 19,
          name = "resume",
          type = "UIButton",
          shape = "rectangle",
          x = 48,
          y = 112,
          width = 144,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["script"] = "ButtonResume",
            ["text"] = "RESUME"
          }
        },
        {
          id = 20,
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
            ["textfont"] = "fnt/pressstart2p.fnt"
          }
        }
      }
    },
    {
      type = "objectgroup",
      name = "touchcontrols",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "ShmupTouchControls"
      },
      objects = {
        {
          id = 22,
          name = "move",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 21,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "focus",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 22,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "curtain",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {
        ["script"] = "Curtain"
      },
      objects = {}
    }
  }
}
