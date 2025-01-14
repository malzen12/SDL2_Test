#pragma once

#include "Universal.h"

class BaseBox{
protected:
  BaseBox() = default;
  BaseBox(Point UpLeft, Point DownRight,
          Point UpLeftBody, Point DownRightBody);
  BaseBox(Point UpLeft, Point Shift,
          int borderWidth, int borderHeight);
  BaseBox(Point UpLeft, Point Shift,
          int bord);

public:
  bool isOnMouse(Point mouse);

  Rectangle getRectBody() const;
  Point getUpLeftPoint() const;
  Point getDownRightPoint() const;
protected:
  Rectangle m_RectHead, m_RectBody;
  Point m_UpLeft, m_DownRight;
  Point m_UpLeftBody, m_DownRightBody;
  Point m_Offset{0, 0};
};

//up_left_body



