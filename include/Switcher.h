#pragma once

#include "Font.h"
#include "IRenderable.h"
#include "BaseBox.h"

class Switcher final: public IRenderable, public BaseBox{
public:
//  Switcher() = default;;
  Switcher(std::shared_ptr<IFont> pFont,
                     Point UpLeft, Point DownRight,
                     Point UpLeftBody, Point DownRightBody);
  Switcher(std::shared_ptr<IFont> pFont,
           Point UpLeft, Point Shift,
           int borderWidth, int borderHeight);
  Switcher(std::shared_ptr<IFont> pFont,
           Point UpLeft, Point Shift,
           int bord);
public:
  void clearState();
  bool isOn();
public:
  void setState(bool state);
  void changeState();
  void changeFont(std::shared_ptr<IFont> pFont);
public:
  void render(Point xy = Point{}) override;
private:
  std::shared_ptr<IFont> m_pFont;
  bool m_isOn;

  Color m_HeadColor;
  Color m_BodyColorON;
  Color m_BodyColorOFF;
};
