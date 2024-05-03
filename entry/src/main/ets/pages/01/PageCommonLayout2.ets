import { promptAction } from '@kit.ArkUI';

const const_onColor: string = '#00ff00';
const const_twoColor: string = '#ff00ff';
const const_thirdColor: string = '#00ffff';
const const_cefaultColor: string = '#000000';

@Entry
@Component
struct PageCommonLayout2 {
  @State message: string = 'Hello World';
  @State oneColor: string = const_cefaultColor;
  @State twoColor: string = const_cefaultColor;
  @State thirdColor: string = const_cefaultColor;
  @State cefaultColor: string = const_cefaultColor;
  @State btnOneClickable: boolean = false;
  @State btnTwoClickable: boolean = false;
  @State btnThirdClickable: boolean = false;
  @State btn_cefaultColor: boolean = false;

  build() {
    Row() {
      Column() {

        TextInput().width("100%").height(60)
        TextInput().width("100%").height(60)


        //官网的焦点变化没有效果，为什么呢，干
        //https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/arkts-common-events-focus-event-0000001455502044-V2
        Button("点击我",{ type: ButtonType.Capsule, stateEffect: false })
          .width(60)
          .height(40)
          .type(ButtonType.Capsule)
          .backgroundColor(this.oneColor)
          .onClick(clickEvent => {
            this.btnOneClickable != this.btnOneClickable
          })
          .focusable(this.btnOneClickable)
          .onFocus(() => {
            this.oneColor = const_onColor
          })
          .onBlur(() => {
            this.oneColor = const_cefaultColor
          })

        Button("点击我")
          .width(60)
          .height(40)
          .type(ButtonType.Normal)

          .backgroundColor(this.twoColor)
          .onClick(clickEvent => {
            this.btnTwoClickable != this.btnTwoClickable
          })
          .focusable(this.btnTwoClickable)
          .onFocus(() => {
            this.twoColor = const_twoColor
          })
          .onBlur(() => {
            this.twoColor = const_cefaultColor
          })

        Button("点击我")
          .width(160)
          .height(160)
          .type(ButtonType.Circle)
          .backgroundColor(this.thirdColor)
          .onClick(clickEvent => {
            this.btnThirdClickable != this.btnThirdClickable


          })
          .focusable(this.btnThirdClickable)
          .onFocus(() => {
            this.thirdColor = const_thirdColor


            promptAction.showToast({
              message: "获得焦点了",
              duration: 2000, //默认值1500ms，取值区间：1500ms-10000ms。
              bottom: 200//设置弹窗边框距离屏幕底部的位置。
            })
          })
          .onBlur(() => {
            this.thirdColor = const_cefaultColor

            promptAction.showToast({
              message: "失去焦点了",
              duration: 2000, //默认值1500ms，取值区间：1500ms-10000ms。
              bottom: 200//设置弹窗边框距离屏幕底部的位置。
            })
          })



        Button({ type: ButtonType.Normal, stateEffect: true }) {
          //button组件包含一个Row组件作为子组件，Row组件定义和Text组件
          Row() {

            Text('loading')
              .fontSize(12)
              .fontColor(0xffffff)
              .margin({ left: 5, right: 12 })
          }.alignItems(VerticalAlign.Center)


        }.borderRadius(8).backgroundColor(0x317aff).width(90).height(40)
      }
      .width('100%')
    }
    .height('100%')
  }
}