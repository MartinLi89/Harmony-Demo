import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct PageToastDemo {
  @State message: string = 'Hello World';

  build() {
    Row() {
      Column({space:20}) {
        Button("toast")
          .height(40)
          .onClick(event => {
            promptAction.showToast({
              message:'ffff',
              duration:2000,
              bottom:400

            })
          })

        Button("promptAction")
          .height(40)
          .onClick(event => {
            promptAction.showDialog({
              title:"title",
              message:'message',
            })
          })


        Button("AlertDialog")
          .height(40)
          .onClick(event => {
            AlertDialog.show({
              message:'AlertDialog'
            })
          })
      }
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.Start)
    }
    .height('100%')
  }
}