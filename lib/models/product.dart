class Product {
  final int id, price;
  final String title, subTitle, image, description;
  final Function press;
  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
    required this.press
  });
}

// liste des produits
List<Product> products = [
  Product(
    id: 1,
    price: 59,
    title: "Écouteurs sans fil",
    subTitle: "Haute qualité sonore",
    image: "images/airpod.png",
    press: (){},
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 2,
    price: 1099,
    title: "Téléphone mobile",
    subTitle: "Une puissance exceptionnelle",
    image: "images/mobile.png",
    press: (){},
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 3,
    price: 39,
    title: "Lunettes 3D",
    subTitle: "Pour vous transporter dans le monde virtuel",
    image: "images/class.png",
    press: (){},
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 4,
    price: 56,
    title: "Casque audio",
    subTitle: "Pour de longues heures d’écoute",
    image: "images/headset.png",
    press: (){},
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 5,
    price: 68,
    title: "Enregistreur vocal",
    subTitle: "Enregistrez les moments importants autour de vous",
    image: "images/speaker.png",
    press: (){},
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
  Product(
    id: 6,
    price: 39,
    title: "Caméras d’ordinateur",
    subTitle: "Avec une haute qualité et résolution d’image",
    image: "images/camera.png",
    press: (){},
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ),
];
