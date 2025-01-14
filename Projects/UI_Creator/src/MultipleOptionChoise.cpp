#include "MultipleOptionChoise.h"


MultipleOptionChoise::MultipleOptionChoise(std::shared_ptr<IFont> pFont)
  :m_pFont(pFont){
  m_bodyColor = Color{200, 50, 75, 255};
}

MultipleOptionChoise::MultipleOptionChoise(std::shared_ptr<IFont> pFont, Point UpLeft, Point DownRight)
  :BaseBox{UpLeft, DownRight, UpLeft, DownRight}, m_pFont(pFont){
  m_bodyColor = Color{200, 50, 75, 255};
}

void MultipleOptionChoise::add(const Point pt, const Point shift, const size_t bord, const std::string &str_option){
  int w = m_pFont->calculate("  ") + 2 * bord;
  const Point shift1{w, shift.y};

  Point tempPoint{m_UpLeft + pt};
  Point sx{};

  Switcher* choise = new Switcher(m_pFont, tempPoint, shift1, bord, bord);

  tempPoint.x += shift1.x - bord;

  TextBox* option = new TextBox(m_pFont, tempPoint, shift, bord, bord, str_option);
  vTextBox.emplace_back(choise, option);
  m_DownRight = m_DownRightBody = option->getDownRightPoint();

}
void MultipleOptionChoise::render(Point xy){
  m_Offset = xy;
  for(auto& [chose, option]:vTextBox){
    chose->render(m_Offset);
    option->render(m_Offset);
  }
}
void MultipleOptionChoise::render(int y){
  auto it{vTextBox.begin()}, ite{vTextBox.end()};
  if(it != ite){
    int k{0};
    bool isNeedChange = (m_pFont != it->second->getFont());
    Point trys{0, it->second->getDownRightPoint().y - it->second->getUpLeftPoint().y - 4};
//    Point trys{};
    trys.y *= -y;
    for(; it!=ite && k<y; ++it, ++k);
    for(; it!=ite; ++it ){
      if(isNeedChange){
        it->first->changeFont(m_pFont);
        it->second->changeFont(m_pFont);
      }
      it->first->render(trys);
      it->second->render(trys);

    }
  }
}

void MultipleOptionChoise::swapWithoutFont(MultipleOptionChoise &moc){
  std::swap(*this, moc);
//  std::swap(this->m_RectBody, moc.m_RectBody);
//  std::swap(this->m_RectHead, moc.m_RectHead);
//  std::swap(this->m_UpLeft, moc.m_UpLeft);
//  std::swap(this->m_DownRight, moc.m_DownRight);
//  std::swap(this->m_UpLeftBody, moc.m_UpLeftBody);
//  std::swap(this->m_DownRightBody, moc.m_DownRightBody);

  BaseBox *a = static_cast<BaseBox*>(this);
  BaseBox *b = static_cast<BaseBox*>(&moc);
  std::swap(*a, *b);
  std::swap(this->m_pFont, moc.m_pFont);
}

void MultipleOptionChoise::tryToChose(Point mouse){
  for(auto& [chose,_]:vTextBox)
    if(chose->isOnMouse(mouse))
        chose->changeState();
}
void MultipleOptionChoise::clearChoise(){
  for(auto& [chose,_]:vTextBox)
    chose->clearState();
}

MultipleOptionChoise::vPairSwitchTextBox& MultipleOptionChoise::getVTextBox(){
  return vTextBox;
}

bool MultipleOptionChoise::isChosen(const std::pair<Switcher*, TextBox*> &pair) const{
  return pair.first->isOn();
}
