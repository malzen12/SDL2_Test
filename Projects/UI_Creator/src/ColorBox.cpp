#include "ColorBox.h"

ColorBox::ColorBox(Point UpLeft, Point DownRight, Point UpLeftBody, Point DownRightBody)
  :BaseBox{UpLeft, DownRight, UpLeftBody, DownRightBody}
{
  m_HeadColor = Color{26, 48, 76, 255};
  m_BodyColor = Color{13, 72, 68, 255};
}

ColorBox::ColorBox(Point UpLeft, Point Shift, int borderWidth, int borderHeight)
  :BaseBox{UpLeft, Shift ,borderWidth, borderHeight}
{
  m_HeadColor = Color{26, 48, 76, 255};
  m_BodyColor = Color{13, 72, 68, 255};
}

ColorBox::ColorBox(Point UpLeft, Point Shift, int bord)
  :ColorBox(UpLeft, Shift, bord, bord)
{}

void ColorBox::render(Point xy){
  m_Offset = xy;
  Renderer* r;
  if(m_Offset.y == 0 && m_Offset.x == 0){
    r->fillRect(m_RectHead, m_HeadColor);
    r->fillRect(m_RectBody, m_BodyColor);
  }else{
    r->fillRect(m_UpLeft + m_Offset, m_DownRight - m_UpLeft, m_HeadColor);
    r->fillRect(m_UpLeftBody + m_Offset, m_DownRightBody - m_UpLeftBody, m_BodyColor);
  }

}


void ColorBox::setHeadColor(Color headColor){
  m_HeadColor = headColor;
}

void ColorBox::setBodyColor(Color bodyColor){
  m_BodyColor = bodyColor;
}

