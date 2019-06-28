enum MessageType { SYSTEM, PUBLIC, CHAT, GROUP }

class MessageData {
  String avatar;
  String title;
  String subTitle;
  DateTime time;

  MessageType type;

  MessageData(this.avatar, this.title, this.subTitle, this.time, this.type);
}

List<MessageData> messageData = [
  MessageData(
      'http://b-ssl.duitang.com/uploads/item/201809/24/20180924092018_zjgut.jpg',
      '灭霸',
      '想念退休生活',
      DateTime.now(),
      MessageType.CHAT),
  MessageData(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561701340287&di=6e078ae4df9f43c6ebfd8a885aba9c9d&imgtype=0&src=http%3A%2F%2Ffiles.toodaylab.com%2F2017%2F05%2Fmarvel_20170509132552_05.jpg',
      '女巫',
      '这是我的时刻',
      DateTime.now(),
      MessageType.CHAT),
  MessageData(
      'http://b-ssl.duitang.com/uploads/item/201805/13/20180513224039_tgfwu.png',
      '蜘蛛侠',
      '一顿操作0:5',
      DateTime.now(),
      MessageType.CHAT),
  MessageData(
      'http://b-ssl.duitang.com/uploads/item/201504/19/20150419H0558_NJU3B.jpeg',
      '寡姐',
      '阅男无数',
      DateTime.now(),
      MessageType.CHAT),
  MessageData(
      'http://b-ssl.duitang.com/uploads/item/201509/20/20150920065256_W25cC.jpeg',
      '托尔',
      '锤子有时不听话',
      DateTime.now(),
      MessageType.CHAT),
  MessageData(
      'http://b-ssl.duitang.com/uploads/item/201504/18/20150418H4459_VmtX3.jpeg',
      '幻视',
      '脑袋有个坑',
      DateTime.now(),
      MessageType.CHAT),
  MessageData(
      'http://b-ssl.duitang.com/uploads/item/201608/21/20160821230024_MyCYK.thumb.700_0.jpeg',
      'Tony',
      '反浩克装甲准备完毕',
      DateTime.now(),
      MessageType.CHAT),
  MessageData(
      'http://b-ssl.duitang.com/uploads/item/201612/08/20161208204750_rS8N4.jpeg',
      '海王',
      '龙虾爱好者',
      DateTime.now(),
      MessageType.CHAT),
  MessageData(
      'http://cdn.duitang.com/uploads/item/201308/19/20130819160917_RAvwE.thumb.700_0.jpeg',
      '忘情哥',
      '第一无二的你',
      DateTime.now(),
      MessageType.CHAT),
];
