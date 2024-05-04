import promptAction from '@ohos.promptAction';

@Entry
@Preview
@Component
struct PageCommonLayout {
  @State message: string = 'Hello World我是提示文本,很多个字，很多个字，很多个字，很多个字，很多个字，很多个';

  /**
   * 常见控件的使用
   */

  build() {
    Row() {
      Column({ space: 20 }) { //childview之间的间距,当配置justifyContent时，该属性不生效
        //支持多行文字显示
        Text(this.message)
          .fontSize(30)//文字大小
          .fontWeight(FontWeight.Bold)//粗体
          .textAlign(TextAlign.Start)//文字对齐方式
          .constraintSize({
            //最小最大设置设置约束尺寸，组件布局时，进行尺寸范围限制。constraintSize的优先级高于Width和Height。
            // 若设置的minWidth大于maxWidth，则minWidth生效，minHeight与maxHeight同理。
            minHeight: 10,
            minWidth: 50
          })
          .backgroundColor(Color.Orange)//背景色
          .border({
            //有个盒子的概念，以及盒子的边距
            width: 2
          })

        //只能单行显示
        TextInput({
          placeholder: '我是提示文本,很多个字，很多个字，很多个字，很多个字，很多个字，很多个字，很多个字很多个字，很多个字，很多个字，很多个字'
        })
          .fontSize(30)
          .width("100%")
          .textAlign(TextAlign.Start)//文字对其方式，和Text一样
          .backgroundColor(Color.Pink)
          .placeholderColor(Color.White)
          .height(80)//高度那么高，依然只展示一行
          .onTouch(event => {
            promptAction.showToast({
              message: "被摸了",
              duration: 2000, //默认值1500ms，取值区间：1500ms-10000ms。
              bottom: 500//设置弹窗边框距离屏幕底部的位置。
            })
          })

        //只能单行显示
        TextInput({
          placeholder: '我是提示文本,很多个字，很多个字，很多个字，很多个字，很多个字，很多个字，很多个字很多个字，很多个字，很多个字，很多个字'
        })
          .fontSize(30)
          .width("100%")
          .textAlign(TextAlign.Start)
          .type(InputType.Password)//输入类型设置为密码
          .backgroundColor(Color.Yellow)
          .placeholderColor(Color.Red)
          .onFocus(() => {
            promptAction.showToast({
              message: "获得焦点了",
              duration: 2000, //默认值1500ms，取值区间：1500ms-10000ms。
              bottom: 400//设置弹窗边框距离屏幕底部的位置。
            })
          })

        //支持多行显示
        TextArea({
          placeholder: '我是提示文本,很多个字，很多个字，很多个字，很多个字，很多个字，很多个字，很多个字很多个字，很多个字，很多个字，很多个字'
        })
          .fontSize(30)
          .width("100%")
          .textAlign(TextAlign.Start)

          .onFocus(() => {

          })


        //支持多行显示
        TextArea({
          text: '我是提示文本,很多个字，很多个字，很多个字，很多个字，很多个字，很多个字，很多个字很多个字，很多个字，很多个字，很多个字'
        })
          .fontSize(30)
          .width("100%")// .layoutWeight(1)

          .textAlign(TextAlign.Start)
          .fontColor(Color.Red)
          .constraintSize({
            minWidth: 10,
            minHeight: 10,
            maxWidth: 600,
            maxHeight: 600

          })
          .border({
            //盒子边框设置
            width: 6,
            color: "#00ff00",
            radius: {
              topLeft: 30,
              topRight: 10,
              bottomLeft: 10,
              bottomRight: 30
            }
          })//养成习惯，属性写一起，事件写一起
          .onChange(changeMsg => { //输入事件变化时，的回调
            this.message = changeMsg
          })
          .onFocus(() => {
            promptAction.showToast({
              message: "获得焦点了",
              duration: 2000, //默认值1500ms，取值区间：1500ms-10000ms。
              bottom: 200//设置弹窗边框距离屏幕底部的位置。
            })
          })
          .gesture(

            // 绑定可以重复触发的LongPressGesture
            LongPressGesture({ repeat: true })
              .onAction((event: GestureEvent) => {
                promptAction.showToast({
                  message: "获得onAction了",
                  duration: 2000, //默认值1500ms，取值区间：1500ms-10000ms。
                  bottom: 200//设置弹窗边框距离屏幕底部的位置。
                })
              })
              .onActionEnd(() => {

              })

          )


      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceAround) //此属性会覆盖，space属性，让其无效化

    }
    .height('100%')
    .backgroundColor(Color.Grey)
  }
}