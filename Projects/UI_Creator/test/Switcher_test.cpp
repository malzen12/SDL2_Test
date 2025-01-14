#include "decay.h"
#include "MockRender.h"

class SwitcherTestF : public ::testing::Test
{
protected:
  SwitcherTestF(){
    EXPECT_CALL(*render, getValue())
        .WillOnce(testing::Return(render->m_pRender.get()));
    pFont1 = std::make_shared<Font>(render);
  }

  const Point p1{0x10, 0x20};
  const Point p2{0x70, 0x80};
  const Point p3{0x14, 0x24};
  const Point p4{0x6c, 0x7c};
//  Window win = {"title", Point{}, 10, 10, SDL_WINDOW_MINIMIZED};
//  std::shared_ptr<Renderer> render = std::make_shared<Renderer>(win.getValue(), uint32_t{});
  std::shared_ptr<MockRenderer> render = std::make_shared<MockRenderer>();
  std::shared_ptr<IFont> pFont1;
};


TEST_F(SwitcherTestF, Constructor){
  const int i0{0};
  BaseBox bb{p1, p2, p3, p4};
  std::vector<int> vi;

  Point Shift{p2 - p1};
  const int bord = 0x04;
  const bool isOn{false};
  Color HeadColor{26, 48, 76, 255};
  Color BodyColorON{200, 50, 75, 255};
  Color BodyColorOFF{13, 72, 68, 255};
  const auto expectedS = std::make_tuple(Decay::toTuple(bb),
                                         pFont1,
                                         isOn,
                                         Decay::toTuple(HeadColor),
                                         Decay::toTuple(BodyColorON),
                                         Decay::toTuple(BodyColorOFF));
  ///////////////////////////////////////////////
  Switcher s1(pFont1, p1, p2, p3, p4);
  Switcher s2(pFont1, p1, Shift, bord, bord);
  Switcher s3(pFont1, p1, Shift, bord);
  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(s1), expectedS);
  expect_for_each_in_tuple(Decay::toTuple(s1), expectedS);
  EXPECT_EQ(Decay::toTuple(s2), expectedS);
  expect_for_each_in_tuple(Decay::toTuple(s2), expectedS);
  EXPECT_EQ(Decay::toTuple(s3), expectedS);
  expect_for_each_in_tuple(Decay::toTuple(s3), expectedS);
}

TEST_F(SwitcherTestF, clearState){
  Switcher s1(pFont1, p1, p2, p3, p4);
  s1.m_isOn = true;
  Switcher s2(pFont1, p1, p2, p3, p4);
  s2.m_isOn = false;
  ///////////////////////////////////////////////
  s1.clearState();
  s2.clearState();
  ///////////////////////////////////////////////
  EXPECT_FALSE(s1.m_isOn);
  EXPECT_FALSE(s2.m_isOn);
}

TEST_F(SwitcherTestF, isOn){
  Switcher s1(pFont1, p1, p2, p3, p4);
  s1.m_isOn = true;
  Switcher s2(pFont1, p1, p2, p3, p4);
  s2.m_isOn = false;
  ///////////////////////////////////////////////

  ///////////////////////////////////////////////
  EXPECT_TRUE(s1.isOn());
  EXPECT_FALSE(s2.isOn());
}

TEST_F(SwitcherTestF, setState){
  Switcher s1(pFont1, p1, p2, p3, p4);
  Switcher s2(pFont1, p1, p2, p3, p4);
  ///////////////////////////////////////////////
  s1.setState(true);
  s2.setState(false);
  ///////////////////////////////////////////////
  EXPECT_TRUE(s1.isOn());
  EXPECT_FALSE(s2.isOn());
}

TEST_F(SwitcherTestF, changeState){
  Switcher s1(pFont1, p1, p2, p3, p4);
  s1.setState(true);
  Switcher s2(pFont1, p1, p2, p3, p4);
  s2.setState(false);
  ///////////////////////////////////////////////
  s1.changeState();
  s2.changeState();
  ///////////////////////////////////////////////
  EXPECT_FALSE(s1.isOn());
  EXPECT_TRUE(s2.isOn());
}

TEST_F(SwitcherTestF, changeFont){
  Switcher s1(pFont1, p1, p2, p3, p4);
  EXPECT_CALL(*render, getValue())
      .WillOnce(testing::Return(render->m_pRender.get()));
  std::shared_ptr<IFont> pFont2 = std::make_shared<Font>(render);
  ///////////////////////////////////////////////
  auto predFont = s1.m_pFont;
  auto nextFont = pFont2;
  s1.changeFont(nextFont);
  ///////////////////////////////////////////////
  if(predFont == nextFont)
    EXPECT_NE(s1.m_pFont, predFont);
  EXPECT_EQ(s1.m_pFont, nextFont);
}
