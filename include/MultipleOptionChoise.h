#pragma once

#include "Font.h"
#include "BaseBox.h"
#include "Switcher.h"
#include "TextBox.h"


class MultipleOptionChoise final: public IRenderable, public BaseBox{
public:
  using vPairSwitchTextBox = std::vector<std::pair<std::shared_ptr<Switcher>, std::shared_ptr<TextBox>>>;
  MultipleOptionChoise() = default;;
  MultipleOptionChoise(std::shared_ptr<IFont> pFont);
  MultipleOptionChoise(std::shared_ptr<IFont> pFont, Point UpLeft, Point DownRight);
public:
  void tryToChose(Point mouse);
  void add(const Point pt, const Point shift, const size_t bord, const std::string &str_option);

  bool isChosen(const std::pair<Switcher*, TextBox*> &pair)const;

  void swapWithoutFont(MultipleOptionChoise &moc);
public:
  vPairSwitchTextBox& getVTextBox();

  void clearChoise();
public:
  void render(Point xy = Point{}) override;
  void render(int y);
private:
  vPairSwitchTextBox vTextBox;
  std::shared_ptr<IFont> m_pFont;
  Color m_bodyColor;
  Position m_pos{Position::Left};
};
