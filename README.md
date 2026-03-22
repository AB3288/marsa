# 🛍️ Marsa — Application E-commerce Flutter

Une application mobile e-commerce moderne développée avec Flutter, permettant de parcourir et découvrir des produits électroniques.

---

## 📱 Aperçu

Marsa est une application mobile de commerce électronique qui affiche une liste de produits électroniques avec leurs détails. L'utilisateur peut naviguer entre la page d'accueil et la page de détails de chaque produit.

---

## 🚀 Fonctionnalités

- 📋 Affichage de la liste des produits avec image, titre, sous-titre et prix
- 🔍 Page de détails pour chaque produit
- 🎨 Interface utilisateur moderne avec des animations fluides
- 📐 Design responsive adapté à toutes les tailles d'écran
- 🔙 Navigation entre les pages (push/pop)

---

## 🗂️ Structure du projet

```
marsa/
├── lib/
│   ├── main.dart                  # Point d'entrée de l'application
│   ├── constents.dart             # Constantes (couleurs, padding, fonts)
│   ├── models/
│   │   └── product.dart           # Modèle Product + liste des produits
│   ├── screns/
│   │   ├── home_screns.dart       # Page d'accueil
│   │   └── details_screns.dart    # Page de détails
│   └── widgets/
│       ├── home_body.dart         # Corps de la page d'accueil
│       └── details/
│           └── details_body.dart  # Corps de la page de détails
├── images/
│   ├── airpod.png
│   ├── camera.png
│   ├── class.png
│   ├── headset.png
│   ├── mobile.png
│   └── speaker.png
├── pubspec.yaml
└── README.md
```

---

## 🛒 Produits disponibles

| # | Produit | Prix |
|---|---------|------|
| 1 | Écouteurs sans fil | 59$ |
| 2 | Téléphone mobile | 1099$ |
| 3 | Lunettes 3D | 39$ |
| 4 | Casque audio | 56$ |
| 5 | Enregistreur vocal | 68$ |
| 6 | Caméras d'ordinateur | 39$ |

---

## 🎨 Thème & Couleurs

Définis dans `constents.dart` :

```dart
kPrimaryColor       // Couleur principale
kSecondaryColor     // Couleur secondaire (bouton prix)
kBackgroundColor    // Couleur de fond des cartes
kDefaultPadding     // Padding par défaut
kDefaultFontSize    // Taille de police par défaut
```

---

## 📦 Modèle de données

```dart
class Product {
  final int id, price;
  final String title, subTitle, image, description;
  final Function press;
}
```

---

## 🧭 Navigation

```
HomeScreen
    └── [clic sur un produit]
            └── DetailsScreen
                    └── [bouton retour] → HomeScreen
```

---

## ⚙️ Installation

### Prérequis

- Flutter SDK >= 3.0.0
- Dart >= 3.0.0
- Android Studio ou VS Code

### Étapes

```bash
# 1. Cloner le projet
git clone https://github.com/ton-username/marsa.git

# 2. Aller dans le dossier
cd marsa

# 3. Installer les dépendances
flutter pub get

# 4. Lancer l'application
flutter run
```

---

## 📋 Configuration `pubspec.yaml`

Assure-toi d'avoir déclaré les images :

```yaml
flutter:
  uses-material-design: true
  assets:
    - images/
```

---

## 📁 Dépendances

```yaml
dependencies:
  flutter:
    sdk: flutter
```

---

## 👨‍💻 Développeur

Développé avec ❤️ en Flutter

---

## 📄 Licence

Ce projet est sous licence MIT.
