import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import './item_job.dart';
import '../models/job.dart';

// ignore: must_be_immutable
class JobCarousel extends StatelessWidget {
  List<Job> jobs;
  JobCarousel(this.jobs, {super.key});
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        height: 230,
      ),
      items: jobs.map((e)=>ItemJob(e,themeDark: jobs.indexOf(e)==1 ,)).toList(),
    );
  }
}
