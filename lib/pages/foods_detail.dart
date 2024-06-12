import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildOrderButton(
              icon: Icons.timelapse,
              label: "12PM-2PM",
              color: Colors.blue,
            ),
            _buildOrderButton(
              icon: Icons.directions,
              label: "3.5 KM",
              color: Colors.green,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildOrderButton(
              icon: Icons.map,
              label: "Map View",
              color: Colors.orange,
            ),
            _buildOrderButton(
              icon: Icons.directions_bike,
              label: "5 Menit",
              color: Colors.pink,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildOrderButton({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
          size: 35,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.blueGrey,
          ),
        ),
      ],
    );
  }
}
