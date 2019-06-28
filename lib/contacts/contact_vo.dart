import 'package:meta/meta.dart';

class ContactVO {
  String sectionKey;

  String name;

  String avatarUrl;

  ContactVO({@required this.sectionKey, this.name, this.avatarUrl});
}

List<ContactVO> contactData = [
  ContactVO(
      sectionKey: 'A',
      name: 'A阿哥',
      avatarUrl:
          'http://cdn.duitang.com/uploads/blog/201404/22/20140422142715_8GtUk.thumb.600_0.jpeg'),
  ContactVO(
      sectionKey: 'A',
      name: '阿萨',
      avatarUrl:
          'http://img4q.duitang.com/uploads/item/201507/11/20150711135438_LE5wi.jpeg'),
  ContactVO(
      sectionKey: 'B',
      name: '扁插',
      avatarUrl:
          'http://cdn.duitang.com/uploads/item/201410/06/20141006213125_PtNn8.thumb.700_0.jpeg'),
  ContactVO(
      sectionKey: 'B',
      name: '扁鹊',
      avatarUrl:
          'http://b-ssl.duitang.com/uploads/item/201810/08/20181008130033_bfvzg.jpeg'),
  ContactVO(
      sectionKey: 'C',
      name: '曹哥',
      avatarUrl:
          'http://img4q.duitang.com/uploads/item/201502/03/20150203144903_wMAGN.jpeg'),
  ContactVO(
      sectionKey: 'C',
      name: '曹操',
      avatarUrl:
          'http://img4q.duitang.com/uploads/item/201411/20/20141120170055_cKStw.jpeg'),
  ContactVO(
      sectionKey: 'D',
      name: '德龙',
      avatarUrl:
          'http://b-ssl.duitang.com/uploads/item/201708/23/20170823110912_ezTtH.thumb.700_0.jpeg'),
];
