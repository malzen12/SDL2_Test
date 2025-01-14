#pragma once

#include "Font.h"
#include "IRenderable.h"
#include "IScrollable.h"
#include "BaseTextBox.h"

#include "Scroll.h"




class TextBox final: public IRenderable, public IScrollable, public BaseTextBox{
public:
//  TextBox() = default;
  TextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point DownRight,
          Point UpLeftBody, Point DownRightBody, std::string inputStr);
  TextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift,
          int borderWidth, int borderHeight, std::string inputStr);
  TextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift,
          int border, std::string inputStr);
  static TextBox CreateToFitString(std::shared_ptr<IFont> pFont, Point UpLeft,
                                   int borderWidth, int borderHeight, std::string inputStr);
  static TextBox CreateToFitString(std::shared_ptr<IFont> pFont, Point UpLeft,
                                   int border, std::string inputStr);
public:
  bool equal(const std::string &tempStr);
  void changeScroll(int mouseWheel);
public:
  std::string getInputStr() const;
public:
  void render(Point xy = Point{}) override;
private:
  int alignment();
private:
  std::string m_InputStr;
};



