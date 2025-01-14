#include "Scroll.h"


Scroll::Scroll(Point UpLeftBody, Point DownRightBody, int lineHeight, int vTextLines){
  int body_height = UpLeftBody.y - DownRightBody.y;
  scroll_height = body_height / lineHeight;
  Point temp_point{DownRightBody.x, UpLeftBody.y};
  Point shift{32, static_cast<int>(body_height * scroll_height / vTextLines) };
  strangeScroll = std::make_shared<ColorBox>(temp_point - shift, shift, 1, 1);
  scroll_offset_max = body_height - shift.y;
  strangeScroll->setHeadColor(Color{26, 48, 56, 255});
  strangeScroll->setBodyColor(Color{13, 82, 78, 255});
  shift.y = body_height;
  strangeScrollBackground = std::make_shared<ColorBox>(temp_point, shift, 1, 1);
  strangeScrollBackground->setHeadColor(Color{26, 48, 56, 255});
  strangeScrollBackground->setBodyColor(Color{15, 102, 93, 255});
  scroll_max = vTextLines - scroll_height;
}

void Scroll::render(){
  strangeScrollBackground->render();
  strangeScroll->render(scroll_offset);
}

void Scroll::changeScroll(int mouseWheel){
  scroll -= mouseWheel;
  scroll = std::clamp(scroll, scroll_min, scroll_max);
  scroll_offset.y = scroll * ((scroll_offset_max - scroll_offset_min) / scroll_max);
  scroll_offset.y = std::clamp(scroll_offset.y, scroll_offset_min, scroll_offset_max);

}
