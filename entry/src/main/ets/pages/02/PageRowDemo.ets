@Entry
@Component
struct PageRowDemo {
  @State message: string = '456';

  build() {
    Row() {
      Column() {
        Text("123")
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('30%')


      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .backgroundColor(Color.Yellow)
      }
      .layoutWeight(1)
    }
    .height('100%')
    .width('100%')
    .direction(Direction.Rtl)//通过此属性可以控制布局的起始方向，左边为start  VS 右边为start

    // .direction(Direction.Ltr)
  }
}