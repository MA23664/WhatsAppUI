import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                    child: Icon(Icons.camera_alt)
                ),

                Tab(
                    child: Text('CHATS')
                ),

                Tab(
                    child: Text('STATUS')
                ),

                Tab(
                    child: Text('CALL')
                ),
              ],
            ),

            actions: [
              Icon(Icons.search),

              SizedBox(
                width: 15,
              ),

             PopupMenuButton(
               icon: Icon(Icons.more_vert),
                 itemBuilder: (context) => [
                     PopupMenuItem(
                          value: 1,
                         child: Text('New Group')
                     ),

                   PopupMenuItem(
                        value: 2,
                       child: Text('Settings')
                   ),

                   PopupMenuItem(
                       value: 3,
                       child: Text('Logout')
                   )
                ]
             ),
            ],
          ),

          body: TabBarView(
            children: [
              Text('Cam'),

              ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                       leading: CircleAvatar(
                         backgroundImage: NetworkImage('https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?cs=srgb&dl=pexels-suliman-sallehi-1704488.jpg&fm=jpg'),
                       ),

                      title: Text(index/2!=0?'Muhammad Ahmad' : 'Abdullah'),
                      subtitle: Text(index/2!=0?'I am learning Flutter' : 'Who are you?'),
                      trailing: Text(index/2!=0?'1:00 PM' : '4:55 PM'),
                    );
              },),

              ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index)
                {
                  return  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?cs=srgb&dl=pexels-suliman-sallehi-1704488.jpg&fm=jpg'),
                    ),

                    title: Text('Shahid'),
                    subtitle: Text('2 minutes ago'),

                  );
                },

              ),

              ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                     return  ListTile(
                         leading: CircleAvatar(
                           backgroundImage: NetworkImage('https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?cs=srgb&dl=pexels-suliman-sallehi-1704488.jpg&fm=jpg'),
                         ),

                       title: Text('Muhammad Ahmad'),
                       subtitle: Text(index/2==0?'You missed a call' : 'You missed a video call'),
                       trailing: Icon(index/2==0?Icons.call : Icons.video_call),

                     );
                },
              )
            ],
          ),
        ),
    );
  }
}
