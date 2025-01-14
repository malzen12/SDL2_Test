#include "Switcher.h"

Switcher::Switcher(std::shared_ptr<IFont> pFont,
                   Point UpLeft, Point DownRight,
                   Point UpLeftBody, Point DownRightBody)
  :BaseBox{UpLeft, DownRight, UpLeftBody, DownRightBody},
    m_pFont(pFont),m_isOn(false)
{

  m_HeadColor = Color{26, 48, 76, 255};
  m_BodyColorON = Color{200, 50, 75, 255};
  m_BodyColorOFF = Color{13, 72, 68, 255};
}

Switcher::Switcher(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift, int borderWidth, int borderHeight)
  :BaseBox{UpLeft, Shift, borderWidth, borderHeight},
    m_pFont(pFont),m_isOn(false)
{

  m_HeadColor = Color{26, 48, 76, 255};
  m_BodyColorON = Color{200, 50, 75, 255};
  m_BodyColorOFF = Color{13, 72, 68, 255};
}

Switcher::Switcher(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift, int bord)
  :Switcher{pFont, UpLeft, Shift, bord, bord}
{}

void Switcher::render(Point xy){
  m_Offset = xy;
  auto m_pRender = m_pFont->getRender();
  m_pRender->setColor(m_HeadColor);
  m_pRender->fillRect(m_UpLeft + m_Offset, m_DownRight - m_UpLeft, m_HeadColor);
  if(m_isOn){
    m_pRender->setColor(m_BodyColorON);
  }else{
    m_pRender->setColor(m_BodyColorOFF);
  }
  m_pRender->fillRect(m_UpLeftBody + m_Offset, m_DownRightBody - m_UpLeftBody);
}

void Switcher::changeState(){
  m_isOn = !m_isOn;
}

void Switcher::clearState(){
  m_isOn = false;
}

bool Switcher::isOn(){
  return m_isOn;
}

void Switcher::setState(bool state)
{
  m_isOn = state;
}

void Switcher::changeFont(std::shared_ptr<IFont> pFont){
  m_pFont = pFont;
}
