#include "IScrollable.h"

bool IScrollable::isScrollable(){
  return m_isScrollable;
}

void IScrollable::setScrollable(bool value){
  m_isScrollable = value;
}
