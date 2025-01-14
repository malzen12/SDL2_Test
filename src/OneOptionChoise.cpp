#include "OneOptionChoise.h"

OneOptionChoise::OneOptionChoise(std::shared_ptr<IFont> pFont)
      : BaseBox{{0,0}, {0,0}, {0,0}, {0,0}}
      , m_pFont(pFont) {
  m_BodyColor = Color{200, 50, 75, 255};
}

OneOptionChoise::OneOptionChoise(std::shared_ptr<IFont> pFont, Point UpLeft, Point DownRight)
    : BaseBox{UpLeft, DownRight, UpLeft, DownRight}
    , m_pFont(pFont) {
  m_BodyColor = Color{200, 50, 75, 255};
}

void OneOptionChoise::add(const Point pt, const Point shift, const size_t bord,
                          const std::string& str_option) {
  int w = m_pFont->calculate("  ") + 2 * bord;
  const Point shift1{w, shift.y};

  Point tempPoint{m_UpLeft + pt};

  Switcher* choise = new Switcher(m_pFont, tempPoint, shift1, bord, bord);

  tempPoint.x += shift1.x - bord;

  TextBox* option = new TextBox(m_pFont, tempPoint, shift, bord, bord, str_option);
  m_vTextBox.emplace_back(choise, option);
  m_DownRight = m_DownRightBody = option->getDownRightPoint();
}

void OneOptionChoise::render(Point xy) {
  m_Offset = xy;
  //  auto r = m_pFont->getRender();
  for (auto& [chose, option] : m_vTextBox) {
    chose->render(m_Offset);
    option->render(m_Offset);
  }
}

void OneOptionChoise::tryToChose(Point mouse) {
  for (auto it = m_vTextBox.begin(), ite = m_vTextBox.end(); it != ite; ++it) {
    if (it->first->isOnMouse(mouse)) {
      if (it != m_activeOption) {
        clearChoise();
        m_activeOption = it;
      }
      it->first->setState(true);
      break;
    }
  }
}

void OneOptionChoise::clearChoise() {
  for (auto& [chose, _] : m_vTextBox) chose->clearState();
  m_activeOption = m_vTextBox.end();
}
