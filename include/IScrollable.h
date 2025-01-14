#pragma once

#include "Universal.h"
#include "Scroll.h"

class IScrollable{
public:
  bool isScrollable();
  void setScrollable(bool value);
protected:
  bool m_isScrollable = false;
  Scroll m_scroll;
};










