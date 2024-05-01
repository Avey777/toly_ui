import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toly_ui/view/sponsor/sponsor_wall.dart';

class SponsorPanel extends StatelessWidget {
  final bool showWall;
  const SponsorPanel({super.key,  this.showWall=true});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        endDrawer: !showWall?null:const Material(child: SponsorWall()),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text('赞助项目',style: TextStyle(fontSize: 32),),
                        const Spacer(),
                        if(showWall)
                         Builder(
                           builder: (ctx) {
                             return TextButton(onPressed: (){
                               Scaffold.of(ctx).openEndDrawer();
                             }, child: const Text('赞助墙',style: TextStyle(fontSize: 18)),);
                           }
                         )
                      ],
                    ),
                    const SizedBox(height: 8,),
                    const Text(
                      '如果项目对您有所帮助, 可以通过赞赏支持我的创作',
                      style: TextStyle(
                          fontSize: 14, color: Color(0xff606266),fontWeight: FontWeight.normal),
                    ),
                    const Text(
                      '商务合作，请通过 1981462002@qq.com 联系我。',
                      style: TextStyle(
                          fontSize: 14, color: Color(0xff606266),fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              const TabBar(

                tabs: [
                  Tab(
                    text: '支付宝',
                  ),
                  Tab(
                    text: '微信1',
                  ),
                  Tab(
                    text: '微信2',
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: TabBarView(
                    children: [
                      Image.asset(
                        'assets/images/coffee_zfb.webp',
                      ),
                      Image.asset('assets/images/coffee_wx.webp'),
                      Image.asset('assets/images/coffee_wx_ac.webp'),
                    ],
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(height: 54,)
            ],
          )),
    );
  }
}
//          Text('TolyUI 为开源的免费项目:\n'
//               'https://github.com/TolyFx/toly_ui\n'
//               '。'),
