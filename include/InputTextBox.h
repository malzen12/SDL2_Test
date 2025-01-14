#pragma once

#include "Font.h"
#include "IRenderable.h"
#include "BaseTextBox.h"

class InputTextBox final: public IRenderable, public BaseTextBox{
public:
//  InputTextBox() = default;
  InputTextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point DownRight,
               Point UpLeftBody, Point DownRightBody);
  InputTextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift,
               int borderWidth, int borderHeight);
  InputTextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift,
               int border);
public:
  void addLetter(uint8_t c);
  void clearText();
  void changeText(const std::string &tempStr);

  std::string textToString();
  int textToInt();
public:
  void render(Point xy = Point{}) override;
private:
  int alignment();
  void popLetter();
private:
  Point m_currentPoint;
};
