import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_finder_app/components/job_list.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/models/company.dart';
import '../components/job_carousel.dart';
import '../components/compact_item_job.dart';


class MainScreens extends StatelessWidget {
  List<Job> forYouJobs = [
    Job(
      role: 'Product Designer',
      location: 'san francisco',
      company: Company(name: 'Google', urlLogo: 'assets/imgs/descarga.png'),
    ),
    Job(
      role: 'Frontend web',
      location: 'Miami',
      company: Company(name: 'Netflix', urlLogo: 'assets/imgs/Netflix.png'),
    ),
    Job(
      role: 'Mobil Developer',
      location: 'New York',
      company: Company(name: 'Google', urlLogo: 'assets/imgs/Amazon.png'),
    ),
  ];
  List<Job> recentJobs = [


      Job(
        role:'UX Enginer',
        location: 'Montan view CA',
        company: Company(name: 'Apple',urlLogo: 'assets/imgs/Apple.png'),
      ),
       Job(
        role:'Motion Desinger',
        location: 'New york NY',
        company: Company(
          urlLogo: 'assets/imgs/AirBnb.png',
           name: 'AirBnb'),
      ),
       Job(
        role:'Python Developer',
        location: 'New york',
        company: Company(
          urlLogo: 'assets/imgs/Amazon_logo.png',
           name: 'Amazon'),
      ),
  ];
  MainScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _customAppBar(),
            _textHeader(context),
            _forYou(context),
            _recent(context),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }

  Widget _customAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            iconSize: 50.0,
            icon: SvgPicture.asset(
              'assets/icons/slider.svg',
              width: 40,
            ),
            onPressed: () {},
          ),
          Row(
            children: <Widget>[
              IconButton(
                iconSize: 50.0,
                icon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  width: 40,
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 50.0,
                icon: SvgPicture.asset(
                  'assets/icons/settings.svg',
                  width: 40,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _textHeader(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Hi jadde',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            'Find you next',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            'desing job',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }

  Widget _forYou(context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'For You',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        JobCarousel(this.forYouJobs),
      ],
    );
  }

  Widget _recent(context) {
    
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Recent',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Se all ',
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: JobList(this.recentJobs),
        ),
      ],
    );
  }
}
