import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

part 'profile_appbar.dart';

class Profile extends StatelessWidget {
  final String profileImage;

  const Profile({
    super.key,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppbar,
      backgroundColor: Colors.black,
      body: ListView(
        padding: const EdgeInsets.only(left: 20.0, right: 10.0),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 30.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(profileImage),
                  radius: 30.0,
                ),
                Column(
                  children: const [
                    Text(
                      '10',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'publicações',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '547',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'seguidores',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '641',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'seguindo',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          const Text(
            'Nome do perfil',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15.0),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[350]!.withAlpha(60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Editar perfil',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5.0),
              Expanded(
                flex: 5,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[350]!.withAlpha(60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Ver Itens Arquivados',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5.0),
              Expanded(
                flex: 1,
                child: InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    height: 28.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[350]!.withAlpha(60),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      '+',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text(
              'Destaques dos stories',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            initiallyExpanded: true,
            iconColor: Colors.white,
            collapsedIconColor: Colors.white,
            children: [
              const Text(
                'Mantenha seus stories favoritos no seu perfil',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .2,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 5.0),
                  itemBuilder: (context, index) {
                    return const CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                      radius: 30.0,
                    );
                  },
                  itemCount: 10,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
