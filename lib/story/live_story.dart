part of 'story.dart';

class LiveStory extends StatelessWidget {
  final String foto;
  final double size;
  final double borderSize;

  const LiveStory({
    super.key,
    required this.foto,
    required this.size,
    required this.borderSize,
  });

  @override
  Widget build(BuildContext context) {
    const storyBorderColor = [
      Color(0xFF002296),
      Color(0xFF82008F),
      Color(0xFFC0007A),
      Color(0xFFEA0C5F),
      Color(0xFFFF5341),
      Color(0xFFFF8820),
      Color(0xFFF6BA00),
    ];

    return Column(
      children: <Widget>[
        InkWell(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: size,
                height: size,
                padding: EdgeInsets.all(borderSize),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: storyBorderColor,
                    tileMode: TileMode.mirror,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: RippleAnimation(
                    color: Colors.grey,
                    repeat: true,
                    ripplesCount: 3,
                    minRadius: 22.0,
                    duration: const Duration(milliseconds: 1500),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(foto),
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFEA0C5F),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Text(
                  'AO VIVO',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                ),
              ),
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContentStory(
                  postagemList: [
                    StoryPostagem(color: Colors.blue),
                    StoryPostagem(color: Colors.red),
                    StoryPostagem(color: Colors.deepPurple),
                  ],
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 5.0),
      ],
    );
  }
}

class LiveStoryWithLabel extends StatelessWidget {
  final String foto;
  final String storyLabel;

  const LiveStoryWithLabel({
    super.key,
    required this.foto,
    required this.storyLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LiveStory(
          foto: foto,
          size: 70.0,
          borderSize: 3.0,
        ),
        Text(
          storyLabel,
          style: const TextStyle(fontSize: 10.0, color: Colors.white),
        )
      ],
    );
  }
}
