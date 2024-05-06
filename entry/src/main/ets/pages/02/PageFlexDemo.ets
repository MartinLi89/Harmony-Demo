@Entry
@Component
struct PageFlexDemo {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Flex({//与 column和row的差异点布局设置属性设置方向 是通过参数的，并非通过属性
        direction: FlexDirection.Row,//主轴为水平方向，子组件从起始端沿着水平方向开始排布。
        wrap: FlexWrap.NoWrap,//单行显示
        justifyContent: FlexAlign.Start,//子组件在主轴方向起始端对齐， 第一个子组件与父元素边沿对齐，其他元素与前一个元素对齐。
        alignItems: ItemAlign.End

        // 布局设置属性设置方向 是通过参数的，并非通过属性
      }) {
        Text('1').height(50).backgroundColor(0xF5DEB3) .flexGrow(2)
        Text('2').height(50).backgroundColor(0xD2B48C) .flexGrow(1)
        Text('3').height(50).backgroundColor(0xF5DEB3).flexShrink(0)
          .flexGrow(1)//设置父容器的剩余空间分配给此属性所在组件的比例。用于“瓜分”父组件的剩余空间。
      }
      .height(70)
      .width('90%')
      .padding(10)
      .backgroundColor(0xAFEEEE)

      Flex({
        direction: FlexDirection.RowReverse//
      }) {
        Text('1').width('33%').height(50).backgroundColor(0xF5DEB3)
        Text('2').width('33%').height(50).backgroundColor(0xD2B48C)
        Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
      }
      .height(70)
      .width('90%')
      .padding(10)
      .backgroundColor(0xAFEEEE)


      Flex({
        // direction: FlexDirection.Row//主轴为水平方向，子组件从起始端沿着水平方向开始排布。
        direction: FlexDirection.Column   //主轴为垂直方向，子组件从起始端沿着垂直方向开始排布。
      }) {
        Text('1').width('33%').height(50).backgroundColor(0xF5DEB3)
        Text('2').width('33%').height(50).backgroundColor(0xD2B48C)
        Text('3').width('33%').height(50).backgroundColor(0xF5DEB3)
      }
      .height(70)
      .width('90%')
      .padding(10)
      .backgroundColor(0xAFEEEE)

    }.height("100%")

  }
}