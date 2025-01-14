#include "decay.h"
#include "MockRender.h"

class FontMock:public IFont{
public:
  FontMock(){

  }
  MOCK_METHOD(int, calculate, (const std::string& s), (override));
  MOCK_METHOD(void, render, (Uint8 c, int x, int y), (override));
  MOCK_METHOD(Rectangle, getLetter, (size_t c), (const, override));
  MOCK_METHOD(int, getLetterHeight, (), (const, override));
  MOCK_METHOD(int, getLetterMaxWidth,(), (const, override));
  MOCK_METHOD(std::shared_ptr<IRenderer>, getRender,(), (const, override));

};

class BaseTextBoxTestF : public ::testing::Test
{
protected:
  BaseTextBoxTestF(){
    EXPECT_CALL(*render, getValue())
        .WillOnce(testing::Return(render->m_pRender.get()));
    pFont1 = std::make_shared<Font>(render);
  }
  const Point p1{0x10, 0x20};
  const Point p2{0x70, 0x80};
  const Point p3{0x14, 0x24};
  const Point p4{0x6c, 0x7c};
//  Window win = {"title", Point{}, 10, 10, SDL_WINDOW_MINIMIZED};
//  std::shared_ptr<Renderer> render = std::make_shared<Renderer>(win.getValue(), uint32_t{});;
  std::shared_ptr<MockRenderer> render = std::make_shared<MockRenderer>();
  std::shared_ptr<IFont> pFont1;
//  std::shared_ptr<IFont> pFont1 = std::make_shared<FontMock>();
};


TEST_F(BaseTextBoxTestF, Constructor){
  const int i0{0};
  BaseBox bb{p1, p2, p3, p4};
  std::vector<int> vi;

  Point Shift{p2 - p1};
  const int bord = 0x04;
  Color HeadColor{};
  Color BodyColor{};
  const auto expectedBtb = std::make_tuple(Decay::toTuple(bb),
                                          vi,
                                          i0,
                                          pFont1,
                                          i0, i0, i0,
                                          Position::Left,
                                          Decay::toTuple(HeadColor),
                                          Decay::toTuple(BodyColor));
  ///////////////////////////////////////////////
  BaseTextBox btb1(pFont1, p1, p2, p3, p4);
  BaseTextBox btb2(pFont1, p1, Shift, bord, bord);
  BaseTextBox btb3(pFont1, p1, Shift, bord);
  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(btb1), expectedBtb);
  expect_for_each_in_tuple(Decay::toTuple(btb1), expectedBtb);
  EXPECT_EQ(Decay::toTuple(btb2), expectedBtb);
  expect_for_each_in_tuple(Decay::toTuple(btb2), expectedBtb);
  EXPECT_EQ(Decay::toTuple(btb3), expectedBtb);
  expect_for_each_in_tuple(Decay::toTuple(btb3), expectedBtb);
}


TEST_F(BaseTextBoxTestF, getters){
  EXPECT_CALL(*render, getValue())
      .WillOnce(testing::Return(render->m_pRender.get()));
  std::shared_ptr<Font> pFont2 = std::make_shared<Font>(render);
//  std::shared_ptr<IFont> pFont2 = std::make_shared<FontMock>();

  BaseTextBox btb1(pFont1, p1, p2, p3, p4);

  const auto expectedFont{pFont1};
  const Point expectedUpLeft{p1};
  const Point expectedDownRight{p2};
  ///////////////////////////////////////////////
  EXPECT_EQ(btb1.getFont(), expectedFont);
  EXPECT_NE(btb1.getFont(), pFont2);
}

TEST_F(BaseTextBoxTestF, setters){
  BaseTextBox btb1(pFont1, p1, p2, p3, p4);

  EXPECT_CALL(*render, getValue())
      .WillOnce(testing::Return(render->m_pRender.get()));
  std::shared_ptr<Font> pFont2 = std::make_shared<Font>(render);
//  std::shared_ptr<IFont> pFont2 = std::make_shared<FontMock>();

  auto predPos = btb1.m_Pos;
  auto nextPos = Position::Right;
  ///////////////////////////
  btb1.setPos(nextPos);
  /////////////////
  if(predPos == nextPos)
    EXPECT_NE(btb1.m_Pos, predPos);
  EXPECT_EQ(btb1.m_Pos, nextPos);

  auto predHeadColor = btb1.m_HeadColor;
  auto nextHeadColor = Color{0x55, 0x55, 0x55, 0x55};
  ///////////////////////////
  btb1.setHeadColor(nextHeadColor);
  /////////////////
  if(Decay::toTuple(predHeadColor) == Decay::toTuple(nextHeadColor))
    EXPECT_NE(Decay::toTuple(btb1.m_HeadColor), Decay::toTuple(predHeadColor));
  EXPECT_EQ(Decay::toTuple(btb1.m_HeadColor), Decay::toTuple(nextHeadColor));

  auto predBodyColor = btb1.m_BodyColor;
  auto nextBodyColor = Color{0x66, 0x66, 0x66, 0x66};
  ///////////////////////////
  btb1.setBodyColor(nextBodyColor);
  /////////////////
  if(Decay::toTuple(predBodyColor) == Decay::toTuple(nextBodyColor))
    EXPECT_NE(Decay::toTuple(btb1.m_BodyColor), Decay::toTuple(predBodyColor));
  EXPECT_EQ(Decay::toTuple(btb1.m_BodyColor), Decay::toTuple(nextBodyColor));

  auto predFont = btb1.m_pFont;
  auto nextFont = pFont2;
  ///////////////////////////
  btb1.changeFont(nextFont);
  /////////////////
  if(predFont == nextFont)
    EXPECT_NE(btb1.m_pFont, predFont);
  EXPECT_EQ(btb1.m_pFont, nextFont);

}

TEST_F(BaseTextBoxTestF, clearText){
  BaseTextBox btb1(pFont1, p1, p2, p3, p4);

  BaseTextBox btb2 = btb1;
  btb1.changeText("Hello");
  ///////////////////////////////////////////////
  btb1.clearText();
  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(btb1), Decay::toTuple(btb2));
}

TEST_F(BaseTextBoxTestF, changeText){
  BaseTextBox btb1(pFont1, p1, p2, p3, p4);
  std::string str = "Hello";
  std::vector<int> expectedvText{str[0], str[1], str[2], str[3], str[4]};
  ///////////////////////////////////////////////
  btb1.changeText(str);
  ///////////////////////////////////////////////
  EXPECT_EQ(btb1.m_vText, expectedvText);
}

TEST_F(BaseTextBoxTestF, isEmpty){
  BaseTextBox btb1(pFont1, p1, p2, p3, p4);
  std::string str = "Hello";
  BaseTextBox btb2(pFont1, p1, p2, p3, p4);
  ///////////////////////////////////////////////
  btb1.changeText(str);
  btb2.clearText();
  ///////////////////////////////////////////////
  EXPECT_FALSE(btb1.isEmpty());
  EXPECT_TRUE(btb2.isEmpty());
}



