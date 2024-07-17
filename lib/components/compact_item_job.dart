import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';

class CompactItemJob extends StatelessWidget {
  Job job;
  CompactItemJob(this.job, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      child: Container(
        decoration: _boxDecoration(),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                _companyLogo(),
                _infoJobText(context),
              ],
            ),
            _favIcon(context),
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            offset: Offset(2.0, 2.0),
            blurRadius: 8.0,
          ),
        ]);
  }

  Widget _companyLogo() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Image.asset(this.job.company.urlLogo),
    );
  }

  Widget _infoJobText(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          this.job.company.name,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          this.job.role,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Theme.of(context).highlightColor,
              size: 14,
            ),
            const SizedBox(width: 3),
            Text(
              this.job.location,
              style: const TextStyle(
                fontSize: 14,
                color: Color(0XFFB7B7D2),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _favIcon(context) {
    return Padding(
      padding:  const EdgeInsets.only(top: 20,right: 20),
      child: Icon(
        Icons.favorite_border,
        color: Theme.of(context).highlightColor,
      ),
    );
  }
}
