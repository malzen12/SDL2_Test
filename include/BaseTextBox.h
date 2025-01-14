#pragma once

#include "Font.h"
#include "BaseBox.h"

class BaseTextBox:public BaseBox{
protected:
  BaseTextBox() = default;

  BaseTextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point DownRight,
          Point UpLeftBody, Point DownRightBody);
  BaseTextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift,
          int borderWidth, int borderHeight);
  BaseTextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift,
          int border);

public:
  std::shared_ptr<IFont> getFont();

  void clearText();
  void setPos(Position pos);
  void setHeadColor(Color headColor);
  void setBodyColor(Color bodyColor);
  void changeText(const std::string& tempStr);
  void changeFont(std::shared_ptr<IFont> pFont);

  bool isEmpty();
protected:
  std::vector<int> m_vText;
  int m_lines = 0;
  std::shared_ptr<IFont> m_pFont;
  int m_TextWidth = 0;
  int m_maxTextWidth = 0;
  int m_maxTextHeight = 0;

  Position m_Pos{Position::Left};

  Color m_HeadColor{};
  Color m_BodyColor{};
};

