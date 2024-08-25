import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/login/login_screen.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

GetUserEmail(){
  final auth = FirebaseAuth.instance;
  final user = auth.currentUser;
  if(user!= null){
   return user.email;
  }
  return null;
}
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromARGB(255, 83, 69, 164),
            const Color.fromARGB(255, 66, 53, 165).withOpacity(.8),
            const Color.fromARGB(255, 75, 53, 165).withOpacity(.6),
            const Color.fromARGB(255, 121, 112, 159).withOpacity(.4),
            const Color.fromARGB(255, 70, 53, 165).withOpacity(.2),
            const Color(0xFF6F35A5).withOpacity(.1),
            const Color(0xFF6F35A5).withOpacity(.05),
            const Color(0xFF6F35A5).withOpacity(.025),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            tooltip: "Menu",
          ),
          centerTitle: true,
          title: Text(
            'Profile',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  LineAwesomeIcons.moon,
                  color: Colors.white,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      'assets/profile_pic.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Shahwaiz Mughal',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.grey.shade800, fontSize: 24),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  GetUserEmail(),
                  style: TextStyle(color: Colors.grey.shade800, fontSize: 13),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6F35A5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Edit Profile',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Divider(
                  color: Colors.grey.shade400,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 25,
                ),
                ProfileMenuWidget(
                  text: 'Settings',
                  icon: LineAwesomeIcons.cog_solid,
                  press: () {},
                ),
                ProfileMenuWidget(
                  text: 'Billing Details',
                  icon: LineAwesomeIcons.wallet_solid,
                  press: () {},
                ),
                ProfileMenuWidget(
                  text: 'User Management',
                  icon: LineAwesomeIcons.user_check_solid,
                  press: () {},
                ),
                Divider(
                  color: Colors.grey.shade400,
                  thickness: 0.5,
                ),
                const SizedBox(
                  height: 15,
                ),
                ProfileMenuWidget(
                  text: 'Help & Support',
                  icon: LineAwesomeIcons.question_circle,
                  press: () {},
                ),
                ProfileMenuWidget(
                  text: 'Privacy Policy',
                  icon: LineAwesomeIcons.lock_solid,
                  press: () {},
                ),
                ProfileMenuWidget(
                  text: 'Log Out',
                  icon: LineAwesomeIcons.sign_out_alt_solid,
                  press: () {
                    final auth = FirebaseAuth.instance;
                    auth.signOut().then((value) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoginScreen();
                          },
                        ),
                      );
                    }).onError((error, stackTrace) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(error.toString())),
                      );
                    });
                  },
                  endIcon: false,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget(
      {Key? key,
      required this.text,
      required this.icon,
      required this.press,
      this.endIcon = true,
      this.color})
      : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback press;
  final bool endIcon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: press,
        leading: Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: color ?? Colors.grey.shade800,
            size: 22,
          ),
        ),
        title: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: color, fontSize: 18),
        ),
        trailing: endIcon
            ? Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Icon(
                  LineAwesomeIcons.angle_right_solid,
                  color: Colors.black,
                  size: 16,
                ),
              )
            : null);
  }
}
