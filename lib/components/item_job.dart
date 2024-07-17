import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';

// ignore: must_be_immutable
class ItemJob extends StatefulWidget {
  Job job;
  bool themeDark;

  ItemJob(this.job, {super.key, this.themeDark = false});

  @override
  State<ItemJob> createState() => _ItemJobState();
}

class _ItemJobState extends State<ItemJob> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 20, top: 20),
      child: Container(
        decoration: _boxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _companyLogo(),
                  _favIcon(),
                ],
              ),
              _infoJobText(context),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration(context) {
    return BoxDecoration(
      color:
          this.widget.themeDark ? Theme.of(context).primaryColor : Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: const <BoxShadow>[
        BoxShadow(
            color: Colors.black45, offset: Offset(4.0, 4.0), blurRadius: 10.0),
      ],
    );
  }

  Widget _companyLogo() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          this.widget.job.company.urlLogo,
          width: 60,
        ),
      ),
    );
  }

  Widget _favIcon() {
    return GestureDetector(
      child: Icon(
        color: this.widget.themeDark ? Colors.white : Colors.grey,
        this.widget.job.isFavorite ? Icons.favorite : Icons.favorite_border,
      ),
      onTap: () {
        setState(() {
          this.widget.job.isFavorite = !this.widget.job.isFavorite;
        });
      },
    );
  }

  Widget _infoJobText(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          this.widget.job.company.name,
          style: const  TextStyle(fontSize: 15, color: Color(0XFFB7B7D2)),
        ),
        Text(
          this.widget.job.role,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Theme.of(context).highlightColor,
              size: 15,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              this.widget.job.location,
              style: const  TextStyle(
                fontSize: 15,
                color: Color(0XFFB7B7D2),
              ),
            )
          ],
        )
      ],
    );
  }
}
