#pragma once

#include "IRenderable.h"
#include "BaseTextBox.h"

class Button final: public IRenderable, public BaseTextBox {
public:
  //Button() = default;
  Button(std::shared_ptr<IFont> pFont,
         Point UpLeft, Point DownRight,
         Point UpLeftBody, Point DownRightBody,
         std::string inputStr);
  Button(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift,
         int borderWidth, int borderHeight, std::string inputStr);
  Button(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift,
         int border, std::string inputStr);
  static Button CreateToFitString(std::shared_ptr<IFont> pFont, Point UpLeft,
                                   int borderWidth, int borderHeight, std::string inputStr);
  static Button CreateToFitString(std::shared_ptr<IFont> pFont, Point UpLeft,
                                   int border, std::string inputStr);
public:
  void funcExe();
public:
  void render(Point xy = Point{}) override;
public:
  const std::string getInputStr() const;

  void setFunc(std::function<void()> f);
private:
  int alignment();
private:
  std::string m_InputStr;
  std::function<void()> m_func;
};
