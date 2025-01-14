#pragma once

#include "Font.h"
#include "Switcher.h"
#include "TextBox.h"

class OneOptionChoise final: public IRenderable, public BaseBox{
public:
  using vPairSwitchTextBox = std::vector<std::pair<std::shared_ptr<Switcher>, std::shared_ptr<TextBox>>>;
//  OneOptionChoise() = default;
  OneOptionChoise(std::shared_ptr<IFont> pFont);
  OneOptionChoise(std::shared_ptr<IFont> pFont, Point UpLeft, Point DownRight);
public:
  void tryToChose(Point mouse);
  void add(const Point pt, const Point shift,
           const size_t bord, const std::string &str_option);
  void clearChoise();
public:
  void render(Point xy = Point{}) override;
private:
  vPairSwitchTextBox m_vTextBox;
  std::shared_ptr<IFont> m_pFont;
  Color m_BodyColor;
  decltype(m_vTextBox.end()) m_activeOption = m_vTextBox.end();
};
