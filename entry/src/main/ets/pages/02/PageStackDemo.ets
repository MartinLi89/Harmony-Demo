@Entry
@Component
struct PageStackDemo {
  @State message: string = 'Hello World';

  //练习堆叠布局 stack,后写的会覆盖在上层，可以通过 z轴属性改变层级关系
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
          Row(){}.width(300).height(300).backgroundColor(Color.Gray).zIndex(2)
          Row(){}.width(200).height(200).backgroundColor(Color.Green).zIndex(3)
          Row(){}.width(100).height(100).backgroundColor(Color.Red).zIndex(4)
          Row(){}.width(50).height(50).backgroundColor(Color.Yellow).zIndex(1)//层级最低，被覆盖了，看不到了
        }
        .backgroundColor(Color.Blue)
        .alignContent(Alignment.TopStart)
        .width(400)
        .height(400)


      }
      .width('100%')
      .justifyContent(FlexAlign.Start)
      .alignItems(HorizontalAlign.Start)
    }
    .height('100%')
  }
}