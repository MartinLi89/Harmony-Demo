@Entry
@Component
struct PageStackDemo {
  @State message: string = 'Hello World';

  //练习堆叠布局 stack
  /**
   * Stack的参数 可以设置子组件的排列方式-alignContent
   ● Top(顶部)
   ● TopStart（左上角）
   ● TopEnd（右上角）
   ● Start（左侧）
   ● End（右侧）
   ● Center（中间）
   ● Bottom（底部）
   ● BottomStart（左下角）
   ● BottomEnd(右下角)
   */
  build() {
    Row() {
      Column() {
        Stack() {
          Row(){}.width(300).height(300).backgroundColor(Color.Gray)
          Row(){}.width(200).height(200).backgroundColor(Color.Green)
          Row(){}.width(100).height(100).backgroundColor(Color.Red)

        }
        .backgroundColor(Color.Blue)
        .width(400)
        .height(400)

      }
      .width('100%')
    }
    .height('100%')
  }
}