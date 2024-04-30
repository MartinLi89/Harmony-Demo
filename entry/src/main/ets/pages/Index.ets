@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Row() {
      Stack() {


        Image($r("app.media.baidu_img"))
          .width("100%")
          .backgroundColor(Color.Blue)
        Text(this.message)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
          .width("100%")
          .fontColor(Color.White)
          .offset({
            x: 0,
            y: -60
          })
          .translate({
            x: 10,
            y: 10
          })

      }
      .width('100%')

    }
    .height('100%')

  }
}