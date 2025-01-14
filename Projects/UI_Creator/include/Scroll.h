#pragma once

#include "ColorBox.h"

struct Scroll{
  int scroll = 0;
  int scroll_min = 0;
  int scroll_height;
  int scroll_max;
  Point scroll_offset{};
  int scroll_offset_min = 0;
  int scroll_offset_max;

  std::shared_ptr<ColorBox> strangeScroll;
  std::shared_ptr<ColorBox> strangeScrollBackground;
  Scroll() = default;
  Scroll(Point UpLeftBody, Point DownRightBody,
         int lineHeight, int vTextLines);

  void render();
  void changeScroll(int mouseWheel);

};
