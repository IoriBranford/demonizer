return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-up",
  width = 30,
  height = 40,
  tilewidth = 8,
  tileheight = 8,
  nextobjectid = 25,
  properties = {
    ["cameraid"] = 2,
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
      name = "infmen",
      firstgid = 4,
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
      name = "infwomen",
      firstgid = 94,
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
      name = "trees",
      firstgid = 184,
      filename = "img/trees.tsx",
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      image = "img/trees.png",
      imagewidth = 192,
      imageheight = 64,
      tileoffset = {
        x = -32,
        y = 16
      },
      properties = {
        ["commoncollision"] = 0
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
                type = "NPCCover",
                shape = "ellipse",
                x = -20,
                y = 24,
                width = 40,
                height = 40,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        }
      }
    }
  },
  layers = {
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
          id = 2,
          name = "camera",
          type = "Camera",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 240,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "pikemen",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 3,
          name = "trigger",
          type = "Trigger",
          shape = "rectangle",
          x = 8,
          y = 8,
          width = 8,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {
            ["triggertype"] = "activategroup"
          }
        },
        {
          id = 4,
          name = "",
          type = "Pikeman",
          shape = "rectangle",
          x = 120,
          y = 16,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 40,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 5,
            ["pathmode"] = "relative"
          }
        },
        {
          id = 5,
          name = "path",
          type = "",
          shape = "polyline",
          x = -32,
          y = 128,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 152, y = -80 },
            { x = 152, y = 0 },
            { x = 72, y = 0 },
            { x = 72, y = 80 },
            { x = 232, y = 80 },
            { x = 232, y = 160 },
            { x = 72, y = 160 },
            { x = 72, y = 280 }
          },
          properties = {
            ["beziercurve"] = false,
            ["script"] = "PathGraph"
          }
        },
        {
          id = 6,
          name = "",
          type = "Pikeman",
          shape = "rectangle",
          x = 120,
          y = 48,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 40,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 5,
            ["pathmode"] = "relative"
          }
        },
        {
          id = 8,
          name = "",
          type = "Pikeman",
          shape = "rectangle",
          x = 136,
          y = 48,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 40,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 5,
            ["pathmode"] = "relative"
          }
        },
        {
          id = 9,
          name = "",
          type = "Pikeman",
          shape = "rectangle",
          x = 144,
          y = 32,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 40,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 5,
            ["pathmode"] = "relative"
          }
        },
        {
          id = 10,
          name = "",
          type = "Pikeman",
          shape = "rectangle",
          x = 104,
          y = 48,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 40,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 5,
            ["pathmode"] = "relative"
          }
        },
        {
          id = 11,
          name = "",
          type = "Pikeman",
          shape = "rectangle",
          x = 96,
          y = 32,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 40,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 5,
            ["pathmode"] = "relative"
          }
        },
        {
          id = 12,
          name = "",
          type = "Pikeman",
          shape = "rectangle",
          x = 128,
          y = 32,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 40,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 5,
            ["pathmode"] = "relative"
          }
        },
        {
          id = 17,
          name = "",
          type = "Pikeman",
          shape = "rectangle",
          x = 112,
          y = 32,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 40,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 5,
            ["pathmode"] = "relative"
          }
        },
        {
          id = 18,
          name = "",
          type = "Pikeman",
          shape = "rectangle",
          x = 104,
          y = 16,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 40,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 5,
            ["pathmode"] = "relative"
          }
        },
        {
          id = 19,
          name = "",
          type = "Pikeman",
          shape = "rectangle",
          x = 136,
          y = 16,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 40,
          visible = true,
          properties = {
            ["kolaunch"] = true,
            ["pathid"] = 5,
            ["pathmode"] = "relative"
          }
        },
        {
          id = 21,
          name = "",
          type = "Pikeman",
          shape = "rectangle",
          x = 120,
          y = 0,
          width = 24,
          height = 32,
          rotation = 0,
          gid = 130,
          visible = true,
          properties = {
            ["convertible"] = true,
            ["kolaunch"] = true,
            ["pathid"] = 5,
            ["pathmode"] = "relative"
          }
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 144,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 224,
          width = 64,
          height = 64,
          rotation = 0,
          gid = 184,
          visible = true,
          properties = {}
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
      draworder = "topdown",
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
          x = 120,
          y = 352,
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
