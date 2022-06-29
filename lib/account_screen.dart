import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isTeacher = false;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.1,),
            // List tile of Profile icon name & balance
            ListTile(
              isThreeLine: true,
              title: const Text(
                '\nMaaz Hassan',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              subtitle: const Text(
                'Personal Balance: \$0',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 40.0,
                child: ClipRRect(
                  child: Image.asset('assets/camera_icon.png'),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              trailing: Text('\n ${isTeacher ? 'Teacher' : 'Student'}', style: const TextStyle(color: Colors.green),),
            ),
            const SizedBox(height: 10,),
            // Tile of switching mode
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.5), //(x,y)
                    blurRadius: 2.0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Change mode',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Switch.adaptive(
                      value: isTeacher, onChanged: (bool value) {
                    setState(() {
                      isTeacher = value;
                    });
                  },),

                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: const Text('My Account', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    isTeacher ?
                    const ListTile(
                      title: Text('My Courses'),
                      leading: Icon(Icons.school, color: Colors.black,),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ):
                    const ListTile(
                      title: Text('Enrolled Courses'),
                      leading: Icon(Icons.school, color: Colors.black,),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ),
                    isTeacher ?
                    const ListTile(
                      title: Text('My Reviews'),
                      leading: Icon(Icons.reviews, color: Colors.black,),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ):
                    const ListTile(
                      title: Text('Explore Courses'),
                      leading: Icon(Icons.school, color: Colors.black,),
                      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                    ),
                    Visibility(
                      visible: isTeacher,
                      child: const ListTile(
                        title: Text('Share my Profile'),
                        leading: Icon(Icons.account_box_outlined, color: Colors.black,),
                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                      ),
                    ),
                    Visibility(
                      visible: isTeacher,
                      child: const ListTile(
                        title: Text('My Earnings'),
                        leading: Icon(Icons.account_balance_wallet_rounded, color: Colors.black,),
                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                      ),
                    ),
                    Visibility(
                      visible: isTeacher,
                      child: const ListTile(
                        title: Text('Option'),
                        leading: Icon(Icons.stars_rounded, color: Colors.black,),
                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                      ),
                    ),
                    Visibility(
                      visible: isTeacher,
                      child: const ListTile(
                        title: Text('Option'),
                        leading: Icon(Icons.stars_rounded, color: Colors.black,),
                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                      ),
                    ),
                    Visibility(
                      visible: isTeacher,
                      child: const ListTile(
                        title: Text('Option'),
                        leading: Icon(Icons.stars_rounded, color: Colors.black,),
                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                      ),
                    ),
                    Visibility(
                      visible: isTeacher,
                      child: const ListTile(
                        title: Text('Option'),
                        leading: Icon(Icons.stars_rounded, color: Colors.black,),
                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                      ),
                    ),

                  ],

                ),
              ),
            ),
            Center(
              child: Container(
                width: width /2,
                decoration: BoxDecoration(
                  color: const Color(0xFF005BC9),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Logout', style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            const SizedBox(height: 2,)

          ],
        ),
      ),
    );
  }
}
