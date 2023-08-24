class Activity {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  final double rating;

  const Activity({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.rating,
  });

  static const List<Activity> activities = [
    Activity(
      id: '1',
      title: 'History and Nature in Italy: Venice to Rome - 12 Days',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://cdn.kimkim.com/files/a/content_articles/featured_photos/1ebfeaf5cdcd128ff14a2be8e8af11712ed6e189/big-ae263dd42c2f6f774bdfece8efc614de.jpg',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '2',
      title: 'Loreto Island - Lake Iseo Lombardia',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://image.jimcdn.com/app/cms/image/transf/none/path/sa6549607c78f5c11/image/i15f2447bfc3dcbc3/version/1584635501/natural-wonders-in-italy.jpg',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '3',
      title:
          'The Dolomites rise above Lake Misurina in the northern Italian Alps.',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://i.natgeofe.com/n/e808d332-f4f2-4e34-a597-755bed0e86d8/unesco-site-dolomites-alps-mountains-missurina-lake-italy_2x1.jpg',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '4',
      title:
          'Natural Wonders – Exploring places that will blow you away with its beauty',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsRnJtbHD0UhGjgVTRpkNmsBAhnrP9SYurLkiIHfrCNRT7Sti9OPi3jp1VO1pzB2A3EzU&usqp=CAU',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '5',
      title:
          'Alps style house next to Lake Como, Italy on a beautiful summer day',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://lp-cms-production.imgix.net/2020-11/shutterstockRF_679551337.jpg?auto=format&q=75&w=1920',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '6',
      title:
          'Descubre más novedades de The Natural Beauty of Himalayas And Other Places',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://scontent.flhe3-1.fna.fbcdn.net/v/t1.18169-9/13256377_1047723351982876_6099927898084250788_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=9267fe&_nc_ohc=Eda8qgSFKIUAX-T_ndB&_nc_ht=scontent.flhe3-1.fna&oh=00_AfBbH64_Y_NV1Qhf-hVFG3QjpB5ZQ0pEZCLgo2l_5xpCqQ&oe=650F0C16',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '7',
      title: 'The thermal baths of Saturnia in Tuscany',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://images.ferryhopper.com/images/articles/2022/top-natural-attractions-italy/saturnia-natural-spa.jpg',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '8',
      title: 'The Capo Nieddu waterfall in Sardinia flowing into the sea',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://images.ferryhopper.com/images/articles/2022/top-natural-attractions-italy/capo-nieddu-waterfall.jpg',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '9',
      title: 'The wonderful colors of the Blue Grotto in Capri',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://images.ferryhopper.com/images/articles/2022/top-natural-attractions-italy/blue-grotto-cave-capri.jpg',
      price: 39.99,
      rating: 4,
    ),
    Activity(
      id: '10',
      title: 'Night view of the city of Piombino in Tuscany',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consequat quis nunc in ultrices. Nullam feugiat in massa vitae placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sem urna, venenatis vitae orci vitae, faucibus volutpat urna.',
      imageUrl:
          'https://images.ferryhopper.com/locations/italy/piombino/piombino-city-lighs.jpg',
      price: 39.99,
      rating: 4,
    )
  ];
}
