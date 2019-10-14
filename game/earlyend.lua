return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.2.4",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 24,
  height = 32,
  tilewidth = 10,
  tileheight = 10,
  nextlayerid = 8,
  nextobjectid = 11,
  properties = {
    ["music"] = "mus/end.vgm",
    ["script"] = "MenuMap"
  },
  tilesets = {
    {
      name = "title",
      firstgid = 1,
      filename = "img/title.tsx",
      tilewidth = 200,
      tileheight = 50,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "img/title.png",
      imagewidth = 200,
      imageheight = 50,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 200,
        height = 50
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {}
    },
    {
      name = "title_demonization",
      firstgid = 2,
      filename = "img/title_demonization.tsx",
      tilewidth = 32,
      tileheight = 24,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "img/title_demonization.png",
      imagewidth = 256,
      imageheight = 48,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 24
      },
      properties = {},
      terrains = {},
      tilecount = 16,
      tiles = {
        {
          id = 0,
          animation = {
            {
              tileid = 0,
              duration = 100
            },
            {
              tileid = 2,
              duration = 150
            },
            {
              tileid = 4,
              duration = 100
            },
            {
              tileid = 6,
              duration = 150
            }
          }
        },
        {
          id = 1,
          animation = {
            {
              tileid = 1,
              duration = 100
            },
            {
              tileid = 3,
              duration = 150
            },
            {
              tileid = 5,
              duration = 100
            },
            {
              tileid = 7,
              duration = 150
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
              tileid = 10,
              duration = 150
            },
            {
              tileid = 12,
              duration = 100
            },
            {
              tileid = 14,
              duration = 150
            }
          }
        }
      }
    },
    {
      name = "bg_swirl",
      firstgid = 18,
      filename = "img/bg_swirl.tsx",
      tilewidth = 10,
      tileheight = 10,
      spacing = 0,
      margin = 0,
      columns = 5,
      image = "img/bg_swirl.png",
      imagewidth = 50,
      imageheight = 50,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 5,
        height = 5
      },
      properties = {},
      terrains = {},
      tilecount = 25,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 7,
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 24,
      height = 32,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["script"] = "InfiniteScrollLayer",
        ["scrolling"] = true,
        ["scrollvelx"] = 60,
        ["scrollvely"] = 60,
        ["tilewrap"] = true
      },
      encoding = "base64",
      compression = "zlib",
      data = "eJzt0TcSgEAQA8F7A95zePP/BzLxEm5BJFV1onRC+GcJUmTIUTg/uxIVajRonZ9dhx4DRkTnZzdhxoIVm/Oz23HgxIXb+dmpr/qqr/qqr/qq73vqq76evl/tAbQTRlE="
    },
    {
      type = "objectgroup",
      id = 3,
      name = "menu",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {
        ["script"] = "UIMenu"
      },
      objects = {
        {
          id = 10,
          name = "camera",
          type = "Camera",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 240,
          height = 320,
          rotation = 0,
          visible = false,
          properties = {}
        },
        {
          id = 1,
          name = "thanks",
          type = "",
          shape = "text",
          x = 20,
          y = 35,
          width = 200,
          height = 10,
          rotation = 0,
          visible = true,
          text = "THANKS FOR PLAYING",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {}
        },
        {
          id = 6,
          name = "eta",
          type = "",
          shape = "text",
          x = 20,
          y = 115,
          width = 200,
          height = 10,
          rotation = 0,
          visible = true,
          text = "To be completed 2020",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {}
        },
        {
          id = 8,
          name = "mainmenu",
          type = "UIButton",
          shape = "text",
          x = 60,
          y = 145,
          width = 120,
          height = 20,
          rotation = 0,
          visible = true,
          text = "MAIN MENU",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {
            ["action"] = "changeMap",
            ["nextmap"] = "mainmenu.lua"
          }
        },
        {
          id = 7,
          name = "website",
          type = "UIButton",
          shape = "text",
          x = 60,
          y = 175,
          width = 120,
          height = 80,
          rotation = 0,
          visible = true,
          text = "\nGAME WEBSITE",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          properties = {
            ["action"] = "quitToWebsite"
          }
        },
        {
          id = 9,
          name = "quit",
          type = "",
          shape = "text",
          x = 25,
          y = 265,
          width = 190,
          height = 20,
          rotation = 0,
          visible = true,
          text = "Or Escape key to quit",
          fontfamily = "Press Start 2P",
          pixelsize = 8,
          wrap = true,
          color = { 255, 255, 255 },
          halign = "center",
          valign = "center",
          properties = {}
        }
      }
    },
    {
      type = "imagelayer",
      id = 6,
      name = "qr",
      visible = true,
      opacity = 1,
      offsetx = 95,
      offsety = 195,
      image = "img/qr-website.png",
      properties = {}
    },
    {
      type = "objectgroup",
      id = 4,
      name = "title",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "index",
      properties = {
        ["script"] = "TitleLayer"
      },
      objects = {
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12.5,
          y = 80,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 195,
          y = 80,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 115,
          y = 105,
          width = 32,
          height = 24,
          rotation = 0,
          gid = 10,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 20,
          y = 105,
          width = 200,
          height = 50,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 2,
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
