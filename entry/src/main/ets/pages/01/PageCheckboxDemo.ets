import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct PageCheckboxDemo {
  @State message: string = 'Hello World';

  build() {
    Row() {
      Column() {
        Checkbox({
          name: 'checkbox1', //多选框名称
          group: 'checkboxGroup'//多选框的群组名称
        })
          .select(true)
          .selectedColor(0xed6f21)
          .onChange((value: boolean) => {
            promptAction.showToast({
              message: "onChange",
              duration: 2000, //默认值1500ms，取值区间：1500ms-10000ms。
              bottom: 200//设置弹窗边框距离屏幕底部的位置。
            })
          })

        Checkbox({ name: 'checkbox2', group: 'checkboxGroup' })
          .select(false)
          .selectedColor(0x39a2db)
          .unselectedColor("#00ff00")
          .shape(CheckBoxShape.ROUNDED_SQUARE)//形状
          .onChange((value: boolean) => {
            promptAction.showToast({
              message: "onChange" + value,
              duration: 2000, //默认值1500ms，取值区间：1500ms-10000ms。
              bottom: 200//设置弹窗边框距离屏幕底部的位置。
            })
          })


        Checkbox({ name: 'checkbox3', group: 'checkboxGroup' })
          .select(false)
          .selectedColor(0x39a2db)
          .unselectedColor("#00ff00")
          .shape(CheckBoxShape.ROUNDED_SQUARE)//形状
          .backgroundColor("#0000ff")
          .onChange((value: boolean) => {
            promptAction.showToast({
              message: "onChange",
              duration: 2000, //默认值1500ms，取值区间：1500ms-10000ms。
              bottom: 200//设置弹窗边框距离屏幕底部的位置。
            })
          })
      }
      .width('50%')


      Column() {
        // 全选按钮
        Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
          CheckboxGroup({ group: 'checkboxGroup2' })
            .selectedColor('#007DFF')
            .onChange((itemName: CheckboxGroupResult) => {
              console.info("checkbox group content" + JSON.stringify(itemName))

              //只返回选中的 checkbox，未选中的不会列举
              //checkbox group content{"name":[],"status":2}//，皆未选中 =2 SelectStatus.None
              //checkbox group content{"name":["checkbox1","checkbox3"],"status":1}//部分选中 =1 SelectStatus.Part

              //checkbox group content{"name":["checkbox1","checkbox2","checkbox3"],"status":0}//全部选中时 =0，SelectStatus.All   部分选中 =1 Part，皆未选中 =2 None


              promptAction.showToast({
                message:"checkbox group content" + JSON.stringify(itemName),
                duration: 2000, //默认值1500ms，取值区间：1500ms-10000ms。
                bottom: 400//设置弹窗边框距离屏幕底部的位置。
              })

            })
          Text('Select All').fontSize(14).lineHeight(20).fontColor('#182431').fontWeight(500)
        }

        // 选项1
        Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
          Checkbox({ name: 'checkbox1', group: 'checkboxGroup2' })
            .selectedColor('#007DFF')
            .onChange((value: boolean) => {
              console.info('Checkbox1 change is' + value)
            })
          Text('Checkbox1').fontSize(14).lineHeight(20).fontColor('#182431').fontWeight(500)
        }.margin({ left: 36 })

        // 选项2
        Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
          Checkbox({ name: 'checkbox2', group: 'checkboxGroup2' })
            .selectedColor('#007DFF')
            .onChange((value: boolean) => {
              console.info('Checkbox2 change is' + value)
            })
          Text('Checkbox2').fontSize(14).lineHeight(20).fontColor('#182431').fontWeight(500)
        }.margin({ left: 36 })

        // 选项3
        Flex({ justifyContent: FlexAlign.Start, alignItems: ItemAlign.Center }) {
          Checkbox({ name: 'checkbox3', group: 'checkboxGroup2' })
            .selectedColor('#007DFF')
            .onChange((value: boolean) => {
              console.info('Checkbox3 change is' + value)
            })
          Text('Checkbox3').fontSize(14).lineHeight(20).fontColor('#182431').fontWeight(500)
        }.margin({ left: 36 })
      }
      .layoutWeight(1)
    }
    .height('100%')
  }
}