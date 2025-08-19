import 'package:flutter/material.dart';

class ContainerRowModel {
  final Color startColor, endColor;
  final String image;

  ContainerRowModel({
    required this.startColor,
    required this.endColor,
    required this.image,
  });
}

final List<ContainerRowModel> containerModel = [
  ContainerRowModel(
    startColor: Color(0xff353F54),
    endColor: Color(0xff222834),
    image: 'assets/images/all.png',
  ),
  ContainerRowModel(
    startColor: Color(0xff353F54),
    endColor: Color(0xff222834),
    image: 'assets/images/bolt.png',
  ),
  ContainerRowModel(
    startColor: Color(0xff353F54),
    endColor: Color(0xff222834),
    image: 'assets/images/road.png',
  ),
  ContainerRowModel(
    startColor: Color(0xff191E26).withOpacity(0.65),
    endColor: Color(0xff363E51).withOpacity(0.65),
    image: 'assets/images/pyramid.png',
  ),
  ContainerRowModel(
    startColor: Color(0xff191E26).withOpacity(0.65),
    endColor: Color(0xff363E51).withOpacity(0.65),
    image: 'assets/images/helmet.png',
  ),
];
