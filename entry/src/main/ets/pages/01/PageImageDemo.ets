@Entry
@Component
struct PageImageDemo {
  @State message: string = 'Hello World';

  build() {
    Row() {
      Column() {
        Image("https://www.baidu.com/img/PCfb_5bf082d29588c07f842ccde3f97243ea.png")
          .width(110)
          .backgroundColor("#0000ff")
          .objectFit(ImageFit.Contain)
          //图片数据加载成功
            // 解码成功时均触发该回调，
            // 返回成功加载的图片尺寸。
          .onComplete(event=>{
            console.info("Image event==>" + JSON.stringify(event))
            //一次展示会回调两次
// app Log: Image event==>{"width":540,"height":258,"componentWidth":0,"componentHeight":0,"loadingStatus":0,"contentWidth":0,"contentHeight":0,"contentOffsetX":0,"contentOffsetY":0}
// app Log: Image event==>{"width":540,"height":258,"componentWidth":330,"componentHeight":157.66665649414063,"loadingStatus":1,"contentWidth":329.9999694824219,"contentHeight":157.66665649414063,"contentOffsetX":0.0000152587890625,"contentOffsetY":0}

          })
          .onFinish(()=>{
          })
        Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start }) {
          Row() {
            // 加载png格式图片
            Image($r('app.media.app_icon'))
              .width(110).height(110).margin(15)
              .overlay('png', { align: Alignment.Bottom, offset: { x: 0, y: 20 } })
            // 加载gif格式图片
            // Image($r('app.media.app_icon'))
            Image("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202002%2F23%2F20200223131400_kjm4f.gif&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1717398822&t=858f98b958b3966d21ecb6f1cb6cd9de")
              .width(110).margin(15)
              .overlay('gif', { align: Alignment.Bottom, offset: { x: 0, y: 20 } })
          }
          Row() {
            // 加载svg格式图片
            Image($r('app.media.app_icon'))
              .width(110).height(110).margin(15)
              .overlay('svg', { align: Alignment.Bottom, offset: { x: 0, y: 20 } })
            // 加载jpg格式图片
            Image($r('app.media.app_icon'))
              .width(110).height(110).margin(15)
              .overlay('jpg', { align: Alignment.Bottom, offset: { x: 0, y: 20 } })
          }
        }



      }
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.Start)

    }
    .height('100%')
    .width('100%')
  }
}