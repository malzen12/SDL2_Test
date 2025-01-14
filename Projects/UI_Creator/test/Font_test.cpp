#include "decay.h"

class MockRenderer : public IRenderer
{
public:
  MockRenderer(){
    SDL_Surface* surf = SDL_CreateRGBSurface(0, 1, 1, 32, 0, 0, 0, 0);
    m_pRender = std::unique_ptr<SDL_Renderer, RendererDeleter>(SDL_CreateSoftwareRenderer(surf));
  };


  MOCK_METHOD(void, destroy, (),(override));
  MOCK_METHOD(void, fullFill, (),(override));
  MOCK_METHOD(void, fullFill, (Color c),(override));
  MOCK_METHOD(void, fillRect, (Rectangle rect),(override));
  MOCK_METHOD(void, fillRect, (Rectangle rect, Color col),(override));
  MOCK_METHOD(void, fillRect, (Point xy, Point wh),(override));
  MOCK_METHOD(void, fillRect, (Point xy, Point wh, Color col),(override));
  MOCK_METHOD(void, present,(), (override));
  MOCK_METHOD(SDL_Renderer*, getValue,(), (const, override));
  MOCK_METHOD(SDL_RendererInfo, getInfo,(), (const, override));
  MOCK_METHOD(int, getWidth,(), (const, override));
  MOCK_METHOD(int, getHeight,(), (const, override));
  MOCK_METHOD(Color, getColor,(), (const, override));
  MOCK_METHOD(SDL_BlendMode, getBlenderMod,(), (const, override));
  MOCK_METHOD(void, setColor, (Color c), (override));
  MOCK_METHOD(void, setBlendMode, (SDL_BlendMode b), (override));
  std::unique_ptr<SDL_Renderer, RendererDeleter> m_pRender;
};

TEST(FontTest, Constructor){ //don't check is Texturs are equal
//  Window win = {"title", Point{}, 10, 10, SDL_WINDOW_MINIMIZED};
//  std::shared_ptr<IRenderer> render2 = std::make_shared<Renderer>(win.getValue(), uint32_t{});
  std::shared_ptr<MockRenderer> renderEx = std::make_shared<MockRenderer>();
//  std::shared_ptr<IRenderer> render = std::make_shared<MockRenderer>(MockRenderer(5));
  std::shared_ptr<IRenderer> render = renderEx;
  std::array<Rectangle, 256> aLetters;
  aLetters.fill({});

  EXPECT_CALL(*renderEx, getValue())
      .WillOnce(testing::Return(renderEx->m_pRender.get()))
      .WillOnce(testing::Return(renderEx->m_pRender.get()));
  std::ifstream fin("Letters.txt");
  ASSERT_TRUE(fin.is_open()) << "can't open file";
  int c, x, width;
  while(fin){
    fin >> c >> x >> width;
    if(c <= 255){
      aLetters[c] = {x, 0, width, 28};
    }
  }

  auto expectedFont = std::make_tuple(
                        render,
                        Decay::toTuple(aLetters),
                        26,
                        28);
  ///////////////////////////////////////////////
  ASSERT_NO_THROW(Font font(renderEx)) << "can't create Font";
  Font font(renderEx);

  auto vRect = Decay::toTuple(font.m_aLetters);
  auto vRectexpected = Decay::toTuple(aLetters);
  ///////////////////////////////////////////////
  //EXPECT_EQ(Decay::toTuple(font), expectedFont); //
  expect_for_each_in_tuple(Decay::toTuple(font), expectedFont);
  for(auto it1 = vRect.begin(), ite1 = vRect.end(),
      it2 = vRectexpected.begin(),ite2 = vRectexpected.end();
      it1 != ite1 && it2 != ite2; ++it1, ++it2){
    EXPECT_EQ(*it1, *it2) <<vRect.size() <<' '<<std::distance(vRect.begin(),it1);
  }
}

//class RendererMock : public Renderer
//{
//public:
//  RendererMock():Renderer(){
//    m_pRenderer.
//  }
//};

class FontTestF : public ::testing::Test
{
protected:
//  Window win = {"title", Point{}, 10, 10, SDL_WINDOW_MINIMIZED};
//  std::shared_ptr<Renderer> render = std::make_shared<Renderer>(win.getValue(), uint32_t{});
  FontTestF(){
    EXPECT_CALL(*render, getValue())
        .WillOnce(testing::Return(render->m_pRender.get()));
    pFont = std::make_shared<Font>(render);
  }
  std::shared_ptr<MockRenderer> render = std::make_shared<MockRenderer>();
  std::shared_ptr<Font> pFont;
};


TEST_F(FontTestF, getters){
  int c{129};
  ///////////////////////////////////////////////

  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(pFont->m_aLetters[c]), Decay::toTuple(pFont->getLetter(c)));
  EXPECT_EQ(pFont->m_letterHeight, pFont->getLetterHeight());
  EXPECT_EQ(pFont->m_letterMaxWidth, pFont->getLetterMaxWidth());
  EXPECT_EQ(pFont->m_pRender, pFont->getRender());
}


TEST_F(FontTestF, calculate){
  const std::string word{"Test f"};
  ///////////////////////////////////////////////
  int calcutateExpect{
    pFont->m_aLetters[word[0]].w +
    pFont->m_aLetters[word[1]].w +
    pFont->m_aLetters[word[2]].w +
    pFont->m_aLetters[word[3]].w +
    pFont->m_aLetters[word[4]].w +
    pFont->m_aLetters[word[5]].w
  };
  ///////////////////////////////////////////////
  EXPECT_EQ(pFont->calculate(word), calcutateExpect);
}
