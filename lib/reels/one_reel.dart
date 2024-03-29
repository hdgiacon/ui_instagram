part of 'reels.dart';

class OneReel extends StatelessWidget {
  final String profileName;
  final String profilePhoto;
  final String gifLocation;

  const OneReel({
    super.key,
    required this.profileName,
    required this.profilePhoto,
    required this.gifLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // video
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.network(
            gifLocation,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 20.0, 10.0, 10.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Reels',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            profilePhoto,
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Text(
                          profileName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            side: const BorderSide(
                              width: 2.0,
                              color: Colors.white,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: const Text(
                            'Seguir',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'texto com as hashtags no fim',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .52,
                          height: 20.0,
                          child: Marquee(
                            text: 'texto em movimento do reels   ',
                            velocity: 28.0,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        const Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        const Expanded(
                          child: Text(
                            'nome da localização',
                            style: TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      icon: const Icon(Icons.camera_alt),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      iconSize: 28.0,
                      icon: const Icon(
                        FontAwesomeIcons.heart,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      '138 mil',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Transform(
                      transform: Matrix4.rotationY(math.pi),
                      alignment: Alignment.center,
                      child: IconButton(
                        onPressed: () {},
                        iconSize: 28.0,
                        icon: const Icon(
                          FontAwesomeIcons.comment,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      '306',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    IconButton(
                      onPressed: () {},
                      iconSize: 28.0,
                      icon: const Icon(
                        InstaIcons.direction,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    PopupMenuButton(
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      itemBuilder: (context) {
                        return List.generate(5, (index) {
                          return PopupMenuItem(
                            child: Text('Botão $index'),
                          );
                        });
                      },
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            profilePhoto,
                          ),
                        ),
                        border: Border.all(
                          width: 3.0,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
