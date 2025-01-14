#include "Font.h"

Font::Font(std::shared_ptr<IRenderer> render )
  :m_pRender(render){
  m_pTexture = std::unique_ptr<SDL_Texture, TextureDeleter>(IMG_LoadTexture(m_pRender->getValue(), "Letters.png"));
  if (m_pTexture != NULL){
    std::ifstream fin("Letters.txt");
    if(fin.is_open()){
      size_t charID;
      int x, width;
      int tempHeight, tempWidth;
      SDL_QueryTexture(m_pTexture.get(), nullptr, nullptr, &tempWidth, &tempHeight);
      m_letterHeight = tempHeight;
      int maxWidth = 0, predx = 0;
      m_aLetters.fill({});
      while(fin){
        fin >> charID >> x >> width;
        if(charID <= 255){
          maxWidth = std::max(maxWidth, x - predx);
          m_aLetters[charID] = {x, 0, width, m_letterHeight};
          predx = x;
        }else{
          throw("Wronge text date");
        }
      }
      maxWidth = std::max(maxWidth, tempWidth - x);
      m_letterMaxWidth = maxWidth;
    }else{
      throw("Can't find file \"Letters.txt\"");
    }
  }else{
    throw("Wronge image date");
  }
}

int Font::calculate(const std::string &s){
  int ans = 0;
  for(auto c : s){
    ans += getLetter(c).w;
  }
  return ans;
}

void Font::render(Uint8 c, int x, int y){
  Rectangle tempRect{x, y, m_aLetters[c].w, m_aLetters[c].h};
  SDL_RenderCopy(m_pRender->getValue(), m_pTexture.get(), &m_aLetters[c], &tempRect);
}

Rectangle Font::getLetter(size_t c) const{return m_aLetters[c];}
int Font::getLetterHeight() const{return m_letterHeight;}
int Font::getLetterMaxWidth() const{return m_letterMaxWidth;}
std::shared_ptr<IRenderer> Font::getRender() const{return m_pRender;}







