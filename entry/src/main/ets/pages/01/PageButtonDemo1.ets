@Entry
@Component
@Preview
struct PageCommonButtonDemo {
  @State message: string = 'Hello World';

  build() {
    Flex({
      direction: FlexDirection.Column,
      alignItems: ItemAlign.Start,
      justifyContent: FlexAlign.SpaceBetween
    }) {

      Text('Normal button')
        .fontSize(9)
        .fontColor(0xCCCCCC)
      Flex({
        alignItems: ItemAlign.Center,
        justifyContent: FlexAlign.SpaceBetween
      }) {

        Button('OK',
          {
            type: ButtonType.Normal,
            stateEffect: true//按钮按下时是否开启按压态显示效果，
            // 当设置为false时，按压效果关闭。默认值：true
          })
          .borderRadius(8)//通用属性，边框圆角
          .backgroundColor(0x317aff)
          .width(90)
          .onClick(() => {//点击事件
            console.log('ButtonType.Normal')
          })

        Button({//包含子布局的button
          type: ButtonType.Normal,
          stateEffect: true
        }) {
          Row() {
            LoadingProgress()
              .width(20)
              .height(20)
              .margin({ left: 12 })
              .color(0xFFFFFF)
            Text('loading')
              .fontSize(12)
              .fontColor(0xffffff)
              .margin({ left: 5, right: 12 })
          }
          .alignItems(VerticalAlign.Center)//交叉轴方向的对其方式
        }
        .borderRadius(8)
        .backgroundColor(0x317aff)
        .width(90)
        .height(40)

        Button('Disable',
          {
            type: ButtonType.Normal,
            stateEffect: false
          })
          .opacity(0.4)//透明度
          .borderRadius(8)
          .backgroundColor(0x317aff)
          .width(90)
      }

      Text('Capsule button')
        .fontSize(9)
        .fontColor(0xCCCCCC)
      Flex({
        alignItems: ItemAlign.Center,//alignItems参数设置子组件在交叉轴的对齐方式。
        justifyContent: FlexAlign.SpaceBetween//主轴方向的对齐方式
      }) {
        Button('OK11',
          {
            type: ButtonType.Capsule,
            stateEffect: true
          })
          .backgroundColor(0x317aff)
          .width(90)
        Button({
          type: ButtonType.Capsule,
          stateEffect: true
        }) {
          Row() {
            LoadingProgress()
              .width(20)
              .height(20)
              .margin({ left: 12 })
              .color(0xFFFFFF)
            Text('loading')
              .fontSize(12)
              .fontColor(0xffffff)
              .margin({ left: 5, right: 12 })
          }
          .alignItems(VerticalAlign.Center)
          .width(90)
          .height(40)
        }.backgroundColor(0x317aff)

        Button('Disable',
          { type: ButtonType.Capsule, stateEffect: false })
          .opacity(0.4)
          .backgroundColor(0x317aff)
          .width(90)
      }

      Text('Circle button')
        .fontSize(9)
        .fontColor(0xCCCCCC)
      Flex({
        alignItems: ItemAlign.Center,
        wrap: FlexWrap.Wrap
      }) {
        Button({
          type: ButtonType.Circle,
          stateEffect: true
        }) {
          LoadingProgress()
            .width(20)
            .height(20)
            .color(0xFFFFFF)
        }
        .width(55)
        .height(55)
        .backgroundColor(0x317aff)

        Button({
          type: ButtonType.Circle,
          stateEffect: true
        }) {
          LoadingProgress()
            .width(20)
            .height(20).color(0xFFFFFF)
        }.width(55)
        .height(55)
        .margin({ left: 20 })
        .backgroundColor(0xF55A42)
      }
    }
    .height(400)
    .padding({
      left: 35,
      right: 35,
      top: 35
    })
  }
}