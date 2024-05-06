import util  from '@ohos.util';

class Contact {
  key: string = util.generateRandomUUID(true);
  name: string;
  icon: Resource;

  constructor(name: string, icon: Resource) {
    this.name = name;
    this.icon = icon;
  }
}
@Entry
@Component
struct PageListDemo {
  @State message: string = 'Hello World';
  private contacts = [
    new Contact('张三', $r("app.media.app_icon")),
    new Contact('张三', $r("app.media.app_icon")),
    new Contact('张三', $r("app.media.app_icon")),
    new Contact('张三', $r("app.media.app_icon")),
    new Contact('李四', $r("app.media.app_icon")),
    new Contact('王五', $r("app.media.app_icon")),
    new Contact('赵六', $r("app.media.app_icon")),
    new Contact('钱七', $r("app.media.app_icon")),
    new Contact('孙八', $r("app.media.app_icon")),
    new Contact('周九', $r("app.media.app_icon")),
    new Contact('秦零', $r("app.media.app_icon")),
    new Contact('秦零', $r("app.media.app_icon")),
    new Contact('秦零', $r("app.media.app_icon")),
    new Contact('秦零', $r("app.media.app_icon")),
    new Contact('秦零', $r("app.media.app_icon")),
    new Contact('秦零', $r("app.media.app_icon")),
    new Contact('秦零', $r("app.media.app_icon")),
    new Contact('秦零ff', $r("app.media.app_icon")),
    new Contact('秦零1', $r("app.media.app_icon")),
    new Contact('秦零2', $r("app.media.app_icon")),
    new Contact('秦零3', $r("app.media.app_icon")),
    new Contact('秦零4', $r("app.media.app_icon")),
    new Contact('秦零5', $r("app.media.app_icon")),
    new Contact('秦零6', $r("app.media.app_icon")),
    new Contact('秦零7', $r("app.media.app_icon")),
    new Contact('秦零8', $r("app.media.app_icon")),

  ]

aboutToAppear(): void {
  // setInterval()
  // setTimeout()
  // set
}

  build() {
    Row() {
      Column() {
        List({space:20}) {
          ForEach(this.contacts,(item: Contact, index: number)=>{
            ListItem() {
              Text(item.name).fontSize(24)
            }
          },(item: Contact, index: number):string=>{
            return JSON.stringify(item)
          })

        }
        .listDirection(Axis.Vertical)//设置主轴方向
        .lanes(1)//设置每行显示的item数量
        .alignListItem(ListItemAlign.Center)
        .divider({
          strokeWidth: 1,
          startMargin: 60,
          endMargin: 10,
          color: '#ffe9f0f0'
        })
        .backgroundColor(Color.Blue)
        .scrollBar(BarState.Auto)
      }
      .width('100%')
      .height('50%')
    }
    .height('100%')
  }
}