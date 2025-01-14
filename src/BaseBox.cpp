#include "BaseBox.h"

BaseBox::BaseBox(Point UpLeft, Point DownRight, Point UpLeftBody, Point DownRightBody)
  :m_UpLeft(std::move(UpLeft)),
  m_DownRight(std::move(DownRight)),
  m_UpLeftBody(std::move(UpLeftBody)),
  m_DownRightBody(std::move(DownRightBody))
{
  m_RectHead = {m_UpLeft.x, m_UpLeft.y, (m_DownRight.x - m_UpLeft.x), (m_DownRight.y - m_UpLeft.y)};
  m_RectBody = {m_UpLeftBody.x, m_UpLeftBody.y, m_DownRightBody.x - m_UpLeftBody.x, m_DownRightBody.y - m_UpLeftBody.y};
}

BaseBox::BaseBox(Point UpLeft, Point Shift, int borderWidth, int borderHeight)
  :m_UpLeft(std::move(UpLeft))
{
  Point borderPoint{borderWidth, borderHeight};
  m_UpLeftBody = m_UpLeft + borderPoint;
  m_DownRight = m_UpLeft + Shift;
  m_DownRightBody = m_DownRight - borderPoint;

  m_RectHead = {m_UpLeft.x, m_UpLeft.y, (m_DownRight.x - m_UpLeft.x), (m_DownRight.y - m_UpLeft.y)};
  m_RectBody = {m_UpLeftBody.x, m_UpLeftBody.y, m_DownRightBody.x - m_UpLeftBody.x, m_DownRightBody.y - m_UpLeftBody.y};
}

BaseBox::BaseBox(Point UpLeft, Point Shift, int bord)
  :BaseBox(UpLeft, Shift, bord, bord)
{}

bool BaseBox::isOnMouse(Point mouse){
  Point mouse_{mouse - m_Offset};
  return  mouse_.x >= m_UpLeftBody.x && mouse_.x <= m_DownRightBody.x
       && mouse_.y >= m_UpLeftBody.y && mouse_.y <= m_DownRightBody.y;
}


Rectangle BaseBox::getRectBody() const{return m_RectBody;}
Point BaseBox::getUpLeftPoint() const{return m_UpLeft;}
Point BaseBox::getDownRightPoint() const{return m_DownRight;}




