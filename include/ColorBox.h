#pragma once

#include "Universal.h"
#include "IRenderable.h"
#include "BaseBox.h"

class ColorBox:public IRenderable, public BaseBox{
public:
  ColorBox(Point UpLeft, Point DownRight,
          Point UpLeftBody, Point DownRightBody);
  ColorBox(Point UpLeft, Point Shift,
          int borderWidth, int borderHeight);
  ColorBox(Point UpLeft, Point Shift,
          int bord);
public:
  void setHeadColor(Color headColor);
  void setBodyColor(Color bodyColor);
public:
  void render(Point xy = Point{}) override;
private:
  Color m_HeadColor;
  Color m_BodyColor;
};
