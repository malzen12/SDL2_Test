#include "decay.h"
#include "MockRender.h"

class OneOptionChoiseTestF : public ::testing::Test
{
protected:
  OneOptionChoiseTestF(){
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

TEST_F(OneOptionChoiseTestF, Constructor) {
  BaseBox bb1{
      {0, 0},
      {0, 0},
      {0, 0},
      {0, 0}
  };
  BaseBox bb2{p1, p2, p1, p2};
  OneOptionChoise::vPairSwitchTextBox vv;
  auto activeOption = vv.end();
//  Point Shift{p2 - p1};
  const int bord = 0x04;
  Color BodyColor{200, 50, 75, 255};
  const auto expectedBtb1 = std::make_tuple(Decay::toTuple(bb1), vv, pFont1, Decay::toTuple(BodyColor),
                                            activeOption);
  const auto expectedBtb2 = std::make_tuple(Decay::toTuple(bb2), vv, pFont1, Decay::toTuple(BodyColor),
                                            activeOption);
  ///////////////////////////////////////////////
  OneOptionChoise ooc1(pFont1);
  OneOptionChoise ooc2(pFont1, p1, p2);
  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(ooc1), expectedBtb1);
  expect_for_each_in_tuple(Decay::toTuple(ooc1), expectedBtb1);
  EXPECT_EQ(Decay::toTuple(ooc2), expectedBtb2);
  expect_for_each_in_tuple(Decay::toTuple(ooc2), expectedBtb2);
}

TEST_F(OneOptionChoiseTestF, add){
  OneOptionChoise ooc1(pFont1, p1, p2);
  const Point Shift{p2 - p1};

  ///////////////////////////////////////////////
  ooc1.add({}, {}, {}, {});
  ///////////////////////////////////////////////

  EXPECT_EQ(ooc1.m_vTextBox.size(), 1);

}

TEST_F(OneOptionChoiseTestF, clearChoise){
  OneOptionChoise ooc1(pFont1, p1, p2);

  ///////////////////////////////////////////////

  ///////////////////////////////////////////////
  EXPECT_TRUE(false);
}

TEST_F(OneOptionChoiseTestF, tryToChose){
  OneOptionChoise ooc1(pFont1, p1, p2);


  ///////////////////////////////////////////////
  EXPECT_TRUE(false);
}
