import promptAction from '@ohos.promptAction';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  //网络图片需要添加网络访问权限
  imgUrl: string = "https://www.baidu.com/img/flexible/logo/pc/result.png"
  imgUrl2: string = "https://www.baidu.com/img/PCfb_5bf082d29588c07f842ccde3f97243ea.png"

  build() {
    Row() {
      Column({ space: 20 }) {
        Stack() {
          //默认展示原有图片尺寸
          //默认保持原有宽高比
          // Image($r("app.media.baidu_img"))
          Image(this.imgUrl)
            .width(180)
          Text("黑马版")
            .width(60)
            .fontSize(12)
            .fontColor("#000")
            .translate({
              x:70,
              y:-10
            })

        }
        .width("100%")

        Row() {
          TextInput()
            .type(InputType.Normal)
            .layoutWeight(1)
            .border({
              width: 2,
              color: '#ff928c8c'
            })
            .borderRadius({
              topLeft: 4,
              bottomLeft: 4
            })
            .height(40)
            .onChange((inputString: string) => {
              this.message = inputString
            })
          Button("百度一下")
            .width(80)
            .height(40)
            .type(ButtonType.Normal)
            .borderRadius({
              topRight: 4,
              bottomRight: 4
            })//将TextInput右侧的边盖住
            .translate({
              x: -2
            })
            .onClick(() => {
              promptAction.showToast({
                message: this.message,
                duration: 2000,
                bottom: 20
              })
            })

        }
        .padding({
          left: 20,
          right: 20
        })
        .width("100%")

      }
      .width('100%')
    }
    .height('100%')

  }
}