import 'package:flutter/material.dart';
import './productModel.dart';

class ProductViewModel {
  List<ProductModel> productModel;
  ProductViewModel({this.productModel});

  getDataSouce() => <ProductModel>[
        ProductModel(
            brand: "Levis",
            description: "Print T-shirt",
            image:
                "https://mosaic02.ztat.net/vgs/media/pdp-zoom/LE/22/1D/02/2A/12/LE221D022-A12@16.1.jpg",
            name: "THE PERFECT",
            price: "£19.99",
            rating: 4.0,
            colors: [
              ProductColor(
                color: Colors.red,
                colorName: "Red",
              ),
              ProductColor(
                color: Colors.green,
                colorName: "Green",
              ),
              ProductColor(
                color: Colors.blue,
                colorName: "Blue",
              ),
              ProductColor(
                color: Colors.cyan,
                colorName: "Cyan",
              )
            ],
            quantity: 0,
            sizes: ["S", "M", "L", "XL"],
            totalReviews: 170),
        ProductModel(
            brand: "adidas Performance",
            description: "Pool sliders",
            image:
                "https://mosaic02.ztat.net/vgs/media/catalog-lg/AD/58/1D/00/9Q/12/AD581D009-Q12@13.jpg",
            name: "AQUALETTE",
            price: "£13.49",
            rating: 5.0,
            totalReviews: 10),
        ProductModel(
            brand: "Produkt",
            description: "Men's Shirt",
            image:
                "https://mosaic01.ztat.net/vgs/media/pdp-zoom/PY/52/2D/01/FG/11/PY522D01F-G11@8.jpg",
            name: "ROBI CHECK",
            price: "£16.49",
            rating: 4.5,
            totalReviews: 0),
        ProductModel(
            brand: "ION",
            description: "Hydration rucksack",
            image:
                "https://mosaic01.ztat.net/vgs/media/packshot/pdp-zoom/N1/94/4E/00/4G/11/N1944E004-G11@10.jpg",
            name: "BACKPACK VILLAIN 4",
            price: "£55.99",
            rating: 4.8,
            totalReviews: 12),
        ProductModel(
            brand: "Diesel",
            description: "Straight leg jeans",
            image:
                "https://mosaic01.ztat.net/vgs/media/pdp-gallery/DI/12/2G/0H/5K/11/DI122G0H5-K11@10.jpg",
            name: "THYTAN",
            price: "£83.99",
            rating: 4.2,
            totalReviews: 28),
        ProductModel(
            brand: "YOURTURN",
            description: "Watch in budget",
            image:
                "https://mosaic02.ztat.net/vgs/media/packshot/pdp-zoom/YO/15/2M/00/6Q/11/YO152M006-Q11@6.jpg",
            name: "Watch",
            price: "£11.99",
            rating: 4.7,
            totalReviews: 120),
        ProductModel(
            brand: "Vero Moda",
            description: "Day dress - black/off",
            image:
                "https://mosaic01.ztat.net/vgs/media/pdp-zoom/VE/12/1C/1B/RQ/11/VE121C1BR-Q11@15.jpg",
            name: "VMKANA",
            price: "£26.59",
            rating: 4.0,
            totalReviews: 33),
            ProductModel(
            brand: "ONLY",
            description: "A-line skirt",
            image:
                "https://mosaic01.ztat.net/vgs/media/pdp-zoom/ON/32/1B/0B/JG/11/ON321B0BJ-G11@8.jpg",
            name: "ONLTHAI FRILL",
            price: "£25.59",
            rating: 4.4,
            totalReviews: 44),
      ];
}
