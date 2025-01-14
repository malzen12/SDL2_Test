#include "BaseTextBox.h"

BaseTextBox::BaseTextBox(std::shared_ptr<IFont> pFont,
                         Point UpLeft, Point DownRight,
                         Point UpLeftBody, Point DownRightBody)
  :BaseBox(UpLeft, DownRight, UpLeftBody, DownRightBody),
    m_pFont(pFont)
{}

BaseTextBox::BaseTextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift, int borderWidth, int borderHeight)
  :BaseBox(UpLeft, Shift, borderWidth, borderHeight),
    m_pFont(pFont)
{}

BaseTextBox::BaseTextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift, int border)
  :BaseBox(UpLeft, Shift, border),
     m_pFont(pFont)
{}

std::shared_ptr<IFont> BaseTextBox::getFont(){
  return m_pFont;
}

void BaseTextBox::clearText(){
  m_vText.clear();
  m_TextWidth = 0;
  m_maxTextWidth = 0;
  m_maxTextHeight = 0;
}

void BaseTextBox::changeText(const std::string &tempStr){
  clearText();
  m_vText.reserve(tempStr.size());
  std::cout << "Change: " << tempStr << std::endl;
  int x;
  int TextWidth{0};
  for(auto i : tempStr){
    x = static_cast<int>(i) & 255;
    m_vText.push_back(x);
    m_TextWidth += m_pFont->getLetter(x).w;
  }

}

void BaseTextBox::setPos(Position pos){
  m_Pos = pos;
}

void BaseTextBox::setHeadColor(Color headColor){
  m_HeadColor = headColor;
}

void BaseTextBox::setBodyColor(Color bodyColor){
  m_BodyColor = bodyColor;
}

void BaseTextBox::changeFont(std::shared_ptr<IFont> pFont){
  m_pFont = pFont;
}


bool BaseTextBox::isEmpty(){
  return m_vText.empty();
}








