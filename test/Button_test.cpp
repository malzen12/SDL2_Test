#include "decay.h"
#include "MockRender.h"

class ButtonTestF : public ::testing::Test
{
protected:
  ButtonTestF(){
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
  std::shared_ptr<Font> pFont1;
};


TEST_F(ButtonTestF, Constructor){
  const int i0{0};
  BaseTextBox btb{pFont1, p1, p2, p3, p4};

  Point Shift{p2 - p1};
  const int bord = 0x04;
  const std::string inputStr = "Test";
  std::function<void()> func;

  btb.changeText(inputStr); // fill vector
  btb.setHeadColor({26, 48, 76, 255}); // base color TextBox
  btb.setBodyColor({13, 72, 68, 255}); //base color TextBox

  Point body{pFont1->calculate(inputStr), pFont1->getLetterHeight()};
  BaseTextBox btb2{pFont1, p1, body + 2*Point{bord, bord} , bord};
  btb2.changeText(inputStr); // fill vector
  btb2.setHeadColor({26, 48, 76, 255}); // base color TextBox
  btb2.setBodyColor({13, 72, 68, 255}); //base color TextBox

  const auto expectedB = std::make_tuple(Decay::toTuple(btb),
                                         inputStr,
                                         func.target_type().name());
  const auto expectedB2 = std::make_tuple(Decay::toTuple(btb2),
                                          inputStr,
                                          func.target_type().name());
  ///////////////////////////////////////////////
  Button b1(pFont1, p1, p2, p3, p4, inputStr);
  Button b2(pFont1, p1, Shift, bord, bord, inputStr);
  Button b3(pFont1, p1, Shift, bord, inputStr);
  Button b4 = Button::CreateToFitString(pFont1, p1, bord, bord, inputStr);
  Button b5 = Button::CreateToFitString(pFont1, p1, bord, inputStr);
  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(b1), expectedB);
  expect_for_each_in_tuple(Decay::toTuple(b1), expectedB);
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(b1)), Decay::toTuple(btb), CLASS_NAME_AND_LINE(BaseTextBox));
  EXPECT_EQ(Decay::toTuple(b2), expectedB);
  expect_for_each_in_tuple(Decay::toTuple(b2), expectedB);
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(b2)), Decay::toTuple(btb), CLASS_NAME_AND_LINE(BaseTextBox));
  EXPECT_EQ(Decay::toTuple(b3), expectedB);
  expect_for_each_in_tuple(Decay::toTuple(b3), expectedB);
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(b3)), Decay::toTuple(btb), CLASS_NAME_AND_LINE(BaseTextBox));
  EXPECT_EQ(Decay::toTuple(b4), expectedB2);
  expect_for_each_in_tuple(Decay::toTuple(b4), expectedB2);
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(b4)), Decay::toTuple(btb2), CLASS_NAME_AND_LINE(BaseTextBox));
  EXPECT_EQ(Decay::toTuple(b5), expectedB2);
  expect_for_each_in_tuple(Decay::toTuple(b5), expectedB2);
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(b5)), Decay::toTuple(btb2), CLASS_NAME_AND_LINE(BaseTextBox));

}


TEST_F(ButtonTestF, getters){
  const std::string inputStr = "Test";
  Button b1(pFont1, p1, p2, p3, p4, inputStr);
  ///////////////////////////////////////////////
  EXPECT_EQ(b1.getInputStr(), inputStr);
}

#if 0
TEST_F(ButtonTestF, equal){
  const std::string inputStr = "Test";
  Button b1(pFont1, p1, p2, p3, p4, inputStr);
  const std::string inputStr2 = "test";
  ///////////////////////////////////////////////

  ///////////////////////////////////////////////
  EXPECT_TRUE(b1.equal(inputStr));
  EXPECT_FALSE(b1.equal(inputStr2));
}
#endif

TEST_F(ButtonTestF, alignment){
  const std::string inputStr = "Test";
  Button b1(pFont1, p1, p2, p3, p4, inputStr);
  int textWidth = pFont1->calculate(inputStr);
  ///////////////////////////////////////////////
  b1.setPos(Position::Left);
  /////////////////
  EXPECT_EQ(b1.alignment(), p3.x);

  b1.setPos(Position::Right);
  /////////////////
  EXPECT_EQ(b1.alignment(), p4.x - textWidth);

  b1.setPos(Position::Center);
  /////////////////
  EXPECT_EQ(b1.alignment(), p3.x + (p4.x - p3.x - textWidth) / 2);
}



