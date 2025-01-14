#include "InputTextBox.h"

InputTextBox::InputTextBox(std::shared_ptr<IFont> pFont,
                           Point UpLeft, Point DownRight,
                           Point UpLeftBody, Point DownRightBody)
  :BaseTextBox{pFont, UpLeft, DownRight, UpLeftBody, DownRightBody},
    m_currentPoint({alignment(), m_UpLeftBody.y})
{
  m_HeadColor = Color{26, 48, 76, 255};
  m_BodyColor = Color{13, 72, 68, 255};
}

InputTextBox::InputTextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift,
                           int borderWidth, int borderHeight)
  :BaseTextBox{pFont, UpLeft, Shift, borderWidth, borderHeight},
    m_currentPoint({alignment(), m_UpLeftBody.y})
{
  m_HeadColor = Color{26, 48, 76, 255};
  m_BodyColor = Color{13, 72, 68, 255};
}

InputTextBox::InputTextBox(std::shared_ptr<IFont> pFont, Point UpLeft, Point Shift,
                           int border)
  :InputTextBox{pFont, UpLeft, Shift, border, border}
{}

void InputTextBox::popLetter()
{
  if(!m_vText.empty()){
    auto w = m_pFont->getLetter(m_vText.back()).w;
    m_TextWidth -= w;
    m_currentPoint.x -= w;
    m_vText.pop_back();
  }
}

void InputTextBox::addLetter(uint8_t c){
  std::cout << '\n' << static_cast<int>(c) << std::endl;
  switch(c){
    case '\n':
    case '\r':
      m_currentPoint.x = alignment();
      m_currentPoint.y += m_pFont->getLetterHeight();
      m_vText.push_back(c);
      break;
    case '\b':
      popLetter();
      break;
    default:{
      const int width = m_pFont->getLetter(c).w;
      if(m_UpLeftBody.x + m_TextWidth + width < m_DownRightBody.x){
        m_TextWidth += width;
        m_currentPoint.x = alignment();
      }
      else{
        m_TextWidth = width;
        for(auto &c : m_vText){
          if (c != ' '){
            m_TextWidth += m_pFont->getLetter(c).w;
          }
          else{
            c = '\0';
            break;
          }
        }
//        for(auto it = m_vText.rbegin(), ite = m_vText.rend(); it!=ite; ++it){
//          if (*it != ' '){
//            m_TextWidth += m_pFont->getLetter(*it).w;
//          }
//          else{
//            *it = '\0';
//            break;
//          }
//        }
        m_currentPoint.x = alignment();
        m_currentPoint.y += m_pFont->getLetterHeight();
      }
      m_vText.push_back(c);
    }
  }
}

void InputTextBox::clearText(){
  BaseTextBox::clearText();
  m_currentPoint = Point{alignment(), m_UpLeftBody.y};
}

void InputTextBox::changeText(const std::string &tempStr)
{
  BaseTextBox::changeText(tempStr);
  m_currentPoint = Point{alignment(), m_UpLeftBody.y};
}



inline int InputTextBox::alignment(){
  switch(m_Pos){
    case Position::Right:
      return m_DownRightBody.x - m_TextWidth + m_Offset.x;
    case Position::Left:
      return m_UpLeftBody.x + m_Offset.x;
    case Position::Center:
      return (m_DownRightBody.x - m_UpLeftBody.x - m_TextWidth) / 2 + m_UpLeftBody.x + m_Offset.x;
    default:
      return m_UpLeftBody.x;
  }
}
void InputTextBox::render(Point xy){
  m_Offset = xy;
  auto r =m_pFont->getRender();
  if(m_Offset.x == 0 && m_Offset.y == 0){
    r->fillRect(m_RectHead, m_HeadColor);
    r->fillRect(m_RectBody, m_BodyColor);
  }else{
    r->fillRect(m_UpLeft + m_Offset, m_DownRight - m_UpLeft, m_HeadColor);
    r->fillRect(m_UpLeftBody + m_Offset, m_DownRightBody - m_UpLeftBody, m_BodyColor);
  }
  int x;
  int y = m_UpLeftBody.y + m_Offset.y;
  auto startLine = m_vText.begin();
  int lineSize = 0;
  for(auto i = m_vText.begin(); i!= m_vText.end(); ++i){
    if(*i != '\0' && *i != '\r')
      lineSize += m_pFont->getLetter(*i).w;
    else{
      x = alignment();
      for(;startLine != i; ++startLine){
        m_pFont->render(*startLine, x, y);
        x += m_pFont->getLetter(*startLine).w;
      }
      lineSize = 0;
      startLine = i;
      ++startLine;
      y += m_pFont->getLetterHeight();
    }
  }
  if (m_vText.end() != m_vText.begin()){
    if (*(m_vText.rbegin())!= '\r'){
      x = alignment();
      for(;startLine != m_vText.end(); ++startLine){
        m_pFont->render(*startLine, x, y);
        x += m_pFont->getLetter(*startLine).w;
      }
    }
  }
}

std::string InputTextBox::textToString(){
  std::string tempStr{};
  tempStr.reserve(m_vText.size());
  for(auto c : m_vText)
    tempStr += c;
  return tempStr;
}

int InputTextBox::textToInt(){
  int res = 0;
  for(const auto c :m_vText)
    res = res * 10 + c - '0';
  return res;
}

