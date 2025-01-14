#include "TextBox.h"

TextBox::TextBox(std::shared_ptr<IFont> pFont,
                 Point UpLeft, Point DownRight,
                 Point UpLeftBody, Point DownRightBody,
                 std::string inputStr)
  :BaseTextBox{pFont, UpLeft, DownRight, UpLeftBody, DownRightBody},
    m_InputStr(std::move(inputStr))
{
  changeText(m_InputStr);

  m_HeadColor = Color{26, 48, 76, 255};
  m_BodyColor = Color{13, 72, 68, 255};
}


TextBox::TextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift, int borderWidth, int borderHeight, std::string inputStr)
  :BaseTextBox{pFont, UpLeft, Shift, borderWidth, borderHeight},
    m_InputStr(std::move(inputStr))
{
   changeText(m_InputStr);

  m_HeadColor = Color{26, 48, 76, 255};
  m_BodyColor = Color{13, 72, 68, 255};
}

TextBox::TextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift, int border, std::string inputStr)
  :TextBox{pFont, UpLeft, Shift, border, border, inputStr}
{}

TextBox TextBox::CreateToFitString(std::shared_ptr<IFont> pFont, Point UpLeft, int borderWidth, int borderHeight, std::string inputStr)
{
  Point BodyPoint{pFont->calculate(inputStr), pFont->getLetterHeight()};
  Point BorderPoint{borderWidth, borderHeight};
  return TextBox{pFont, UpLeft, BodyPoint + BorderPoint + BorderPoint,
                        borderWidth, borderWidth, inputStr};
}

TextBox TextBox::CreateToFitString(std::shared_ptr<IFont> pFont, Point UpLeft, int border, std::string inputStr)
{
  return CreateToFitString(pFont, UpLeft, border, border, inputStr);
}

bool TextBox::equal(const std::string &tempStr){
  return m_InputStr == tempStr;
}

inline int TextBox::alignment(){
  switch(m_Pos){
    case Position::Right:
      return m_DownRightBody.x - m_TextWidth + m_Offset.x;
    case Position::Left:
      return m_UpLeftBody.x + m_Offset.x;
    case Position::Center:
      return (m_DownRightBody.x - m_UpLeftBody.x - m_TextWidth) / 2 + m_UpLeftBody.x + m_Offset.x;
    default:
      m_Pos = Position::Left;
      return alignment();
  }
}

void TextBox::render(Point xy){
  m_Offset = xy;
  auto r =m_pFont->getRender();
  if(m_Offset.y == 0 && m_Offset.x == 0){
    r->fillRect(m_RectHead, m_HeadColor);
    r->fillRect(m_RectBody, m_BodyColor);
  }else{
    r->fillRect(m_UpLeft + m_Offset, m_DownRight - m_UpLeft, m_HeadColor);
    r->fillRect(m_UpLeftBody + m_Offset, m_DownRightBody - m_UpLeftBody, m_BodyColor);
  }
  int x = alignment();
  int y = m_UpLeftBody.y + m_Offset.y;
  //auto s = vText.size();
  //RBody.w
  //if (TextWidth > s * allLetters->get_letter_max_width())
  for(const auto c : m_vText){
    switch(c){
      case 32 ... 255:
        m_pFont->render(c, x, y);
        x += m_pFont->getLetter(c).w;
        break;
      case '\n':
        x = alignment();
        y += m_pFont->getLetterHeight();
//        break;
    }
  }
}

std::string TextBox::getInputStr() const{return m_InputStr;}

void TextBox::changeScroll(int mouseWheel){
  m_scroll.changeScroll(mouseWheel);
}

