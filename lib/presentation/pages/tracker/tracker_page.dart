import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/business_logic/blocs/image/image_upload/image_upload_cubit.dart';
import 'package:project_fitcru/business_logic/blocs/image/images_cubit/images_cubit.dart';
import 'package:project_fitcru/business_logic/blocs/tracker/weight_tracker/weight_tracker_cubit.dart';
import 'package:project_fitcru/business_logic/services/images/image_service.dart';
import 'package:project_fitcru/config/router/app_router.dart';
import 'package:project_fitcru/config/themes/theme.dart';
import 'package:project_fitcru/presentation/widgets/widgets.dart';

import 'widgets/image_upload.dart';
import 'widgets/weight_chart.dart';

@RoutePage()
class TrackerPage extends StatefulWidget {
  const TrackerPage({super.key});

  @override
  State<TrackerPage> createState() => _TrackerPageState();
}

class _TrackerPageState extends State<TrackerPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ImageUploadCubit>(
          create: (context) => ImageUploadCubit(
            context.read<ImageService>(),
          ),
        ),
        BlocProvider(
          create: (context) => ImagesCubit()..loadImages(),
        ),
        BlocProvider(
          create: (context) => WeightTrackerCubit()..loadWeightTrackers(),
        ),
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: const MainAppbarWidget(),
        body: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              padding: const EdgeInsets.fromLTRB(10, 10, 20, 45),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 2,
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.8),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                    child: Text(
                      'Weight Tracker',
                      style: Theme.of(context).textTheme.chartTitle,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: const WeightChart(),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(30, 25, 30, 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 2,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: BlocBuilder<WeightTrackerCubit, WeightTrackerState>(
                  builder: (context, state) {
                    return ThemedInputWidget(
                      keyboardType: TextInputType.number,
                      hintText: 'Track your weight',
                      onSubmitted: (String value) {
                        final double? weight = double.tryParse(value);
                        if (weight == null) {
                          ErrorDialog.show(
                            context,
                            title: 'Invalid Entry',
                            message:
                                'Please enter a valid number as your weight.',
                          );
                        } else {
                          context
                              .read<WeightTrackerCubit>()
                              .setWeight(weight: weight);
                        }
                      },
                    );
                  },
                ),
              ),
            ),
            const ImageUploadWidget(),
            const SizedBox(
              // adds extra padding at the bottom of the listview.
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
