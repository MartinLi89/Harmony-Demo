@Entry
@Component
struct PageStackDemo {
  @State message: string = 'Hello World';

  //练习堆叠布局 stack
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