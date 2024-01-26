import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project_fitcru/business_logic/blocs/tracker/weight_tracker/weight_tracker_cubit.dart';
import 'package:project_fitcru/data/models/trackers/weight_tracker_model.dart';
import 'package:project_fitcru/presentation/widgets/widgets.dart';

class WeightChart extends StatelessWidget {
  const WeightChart({super.key});

  List<FlSpot> mapTrackersToSpots(List<WeightTrackerModel> trackers) {
    final List<FlSpot> spots = [];
    for (final WeightTrackerModel tracker in trackers) {
      spots.add(
        FlSpot(
          tracker.date.millisecondsSinceEpoch.toDouble(),
          tracker.weight,
        ),
      );
    }

    return spots;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeightTrackerCubit, WeightTrackerState>(
      builder: (blocContext, state) {
        if (state is WeightTrackerLoaded) {
          return LineChart(
            weightData(
              mapTrackersToSpots(state.weightTrackers),
            ),
          );
        }

        return const Center(child: CircularProgressIndicatorWidget());
      },
    );
  }
}

LineChartData weightData([List<FlSpot> spots = const []]) => LineChartData(
      lineTouchData: lineTouchData,
      gridData: gridData,
      titlesData: titlesData,
      borderData: borderData,
      lineBarsData: lineBarsData(spots),
    );

LineTouchData get lineTouchData => LineTouchData(
      handleBuiltInTouches: true,
      touchTooltipData: LineTouchTooltipData(
        tooltipBgColor: Colors.black45.withOpacity(0.5),
        fitInsideHorizontally: true,
      ),
    );

FlTitlesData get titlesData => FlTitlesData(
      bottomTitles: bottomTitles,
      rightTitles: SideTitles(showTitles: false),
      topTitles: SideTitles(showTitles: false),
      leftTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        getTitles: (value) {
          return value.toStringAsFixed(0);
        },
      ),
    );

List<LineChartBarData> lineBarsData([List<FlSpot> spots = const []]) => [
      lineChartBarData(spots),
    ];

SideTitles get bottomTitles => SideTitles(
      showTitles: true,
      reservedSize: 10,
      margin: 10,
      getTextStyles: (context, value) {
        final brightness = Theme.of(context).brightness;
        if (brightness == Brightness.light) {
          return Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Theme.of(context).colorScheme.onBackground);
        } else {
          return Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Theme.of(context).colorScheme.onBackground);
        }
      },
      rotateAngle: 45,
      checkToShowTitle:
          (minValue, maxValue, sideTitles, appliedInterval, value) {
        if (value != minValue && value != maxValue) {
          return true;
        }
        return false;
      },
      getTitles: (value) {
        try {
          final String formatted = DateFormat('d MMM')
              .format(DateTime.fromMillisecondsSinceEpoch(value.truncate()));
          return formatted;
        } catch (e) {
          return '';
        }
      },
    );

FlGridData get gridData => FlGridData(show: false);

FlBorderData get borderData => FlBorderData(
      show: true,
      border: const Border(
        bottom: BorderSide(color: Color(0xff4e4965), width: 2),
        left: BorderSide(color: Colors.transparent),
        right: BorderSide(color: Colors.transparent),
        top: BorderSide(color: Colors.transparent),
      ),
    );

LineChartBarData lineChartBarData([List<FlSpot> spots = const []]) {
  if (spots.isNotEmpty) {
    //* Leave this in.
    // > an issue when the graph hangs occurs when all y values are the same.
    final FlSpot tempSpot =
        spots[0].copyWith(y: spots[0].y * 1.000000000000000000000000000000001);
    spots[0] = tempSpot;
  }

  return LineChartBarData(
    isCurved: true,
    curveSmoothness: 0.1,
    colors: const [Color(0xFFF3BA52)],
    barWidth: 6,
    isStrokeCapRound: true,
    dotData: FlDotData(show: false),
    belowBarData: BarAreaData(show: false),
    spots: spots.length > 1 ? spots : [],
  );
}
