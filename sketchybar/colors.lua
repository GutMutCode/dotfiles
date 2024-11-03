return {
  black = 0xff181819,
  crust = 0xff11111b,
  white = 0xffcdd6f4,
  red = 0xfff38ba8,
  green = 0xffa6e3a1,
  flamingo = 0xfff2cdcd,
  blue = 0xff89b4fa,
  yellow = 0xfff9e2af,
  peach = 0xfffab387,
  mauve = 0xffcba6f7,
  -- base = 0xffa6e3a1,
  base = 0xfff5c2e7, -- pink
  transparent = 0x00000000,

  bar = {
    bg = 0xff1e1e2e,
    border = 0xff2c2e34,
  },
  popup = {
    bg = 0xc0313244,
    border = 0xff7f8490,
  },
  bg1 = 0xff181825,
  bg2 = 0xff11111b,

  with_alpha = function(color, alpha)
    if alpha > 1.0 or alpha < 0.0 then
      return color
    end
    return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
  end,
}
