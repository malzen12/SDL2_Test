#include "decay.h"
#include "MockRender.h"

class TextBoxTestF : public ::testing::Test
{
protected:
  TextBoxTestF(){
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
};


TEST_F(TextBoxTestF, Constructor){
  const int i0{0};
  BaseTextBox btb{pFont1, p1, p2, p3, p4};

  Point Shift{p2 - p1};
  const int bord = 0x04;
  const std::string inputStr = "Test";
  btb.changeText(inputStr); // fill vector
  btb.setHeadColor({26, 48, 76, 255}); // base color TextBox
  btb.setBodyColor({13, 72, 68, 255}); //base color TextBox

  Point body{pFont1->calculate(inputStr), pFont1->getLetterHeight()};
  BaseTextBox btb2{pFont1, p1, body + 2*Point{bord, bord} , bord};
  btb2.changeText(inputStr); // fill vector
  btb2.setHeadColor({26, 48, 76, 255}); // base color TextBox
  btb2.setBodyColor({13, 72, 68, 255}); //base color TextBox

  const auto expectedTb = std::make_tuple(Decay::toTuple(btb),
                                          inputStr);
  const auto expectedTb2 = std::make_tuple(Decay::toTuple(btb2),
                                          inputStr);
  ///////////////////////////////////////////////
  TextBox tb1(pFont1, p1, p2, p3, p4, inputStr);
  TextBox tb2(pFont1, p1, Shift, bord, bord, inputStr);
  TextBox tb3(pFont1, p1, Shift, bord, inputStr);
  TextBox tb4 = TextBox::CreateToFitString(pFont1, p1, bord, bord, inputStr);
  TextBox tb5 = TextBox::CreateToFitString(pFont1, p1, bord, inputStr);
  ///////////////////////////////////////////////
  EXPECT_EQ(Decay::toTuple(tb1), expectedTb);
  expect_for_each_in_tuple(Decay::toTuple(tb1), expectedTb);
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(tb1)), Decay::toTuple(btb), CLASS_NAME_AND_LINE(BaseTextBox));
  EXPECT_EQ(Decay::toTuple(tb2), expectedTb);
  expect_for_each_in_tuple(Decay::toTuple(tb2), expectedTb);
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(tb2)), Decay::toTuple(btb), CLASS_NAME_AND_LINE(BaseTextBox));
  EXPECT_EQ(Decay::toTuple(tb3), expectedTb);
  expect_for_each_in_tuple(Decay::toTuple(tb3), expectedTb);
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(tb3)), Decay::toTuple(btb), CLASS_NAME_AND_LINE(BaseTextBox));
  EXPECT_EQ(Decay::toTuple(tb4), expectedTb2);
  expect_for_each_in_tuple(Decay::toTuple(tb4), expectedTb2);
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(tb4)), Decay::toTuple(btb2), CLASS_NAME_AND_LINE(BaseTextBox));
  EXPECT_EQ(Decay::toTuple(tb5), expectedTb2);
  expect_for_each_in_tuple(Decay::toTuple(tb5), expectedTb2);
  expect_for_each_in_tuple(Decay::toTuple(static_cast<BaseTextBox>(tb5)), Decay::toTuple(btb2), CLASS_NAME_AND_LINE(BaseTextBox));

}


TEST_F(TextBoxTestF, getters){
  const std::string inputStr = "Test";
  TextBox tb1(pFont1, p1, p2, p3, p4, inputStr);
  ///////////////////////////////////////////////
  EXPECT_EQ(tb1.getInputStr(), inputStr);
}


TEST_F(TextBoxTestF, equal){
  const std::string inputStr = "Test";
  TextBox tb1(pFont1, p1, p2, p3, p4, inputStr);
  const std::string inputStr2 = "test";
  ///////////////////////////////////////////////

  ///////////////////////////////////////////////
  EXPECT_TRUE(tb1.equal(inputStr));
  EXPECT_FALSE(tb1.equal(inputStr2));
}

#if 1
TEST_F(TextBoxTestF, changeScroll){
  EXPECT_TRUE(false);
}
#endif

TEST_F(TextBoxTestF, alignment){
  const std::string inputStr = "Test";
  TextBox tb1(pFont1, p1, p2, p3, p4, inputStr);
  int textWidth = pFont1->calculate(inputStr);
  ///////////////////////////////////////////////
  tb1.setPos(Position::Left);
  /////////////////
  EXPECT_EQ(tb1.alignment(), p3.x);

  tb1.setPos(Position::Right);
  /////////////////
  EXPECT_EQ(tb1.alignment(), p4.x - textWidth);

  tb1.setPos(Position::Center);
  /////////////////
  EXPECT_EQ(tb1.alignment(), p3.x + (p4.x - p3.x - textWidth) / 2);
}



