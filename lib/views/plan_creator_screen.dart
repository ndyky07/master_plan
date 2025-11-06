import 'package:flutter/material.dart';
import '/models/plan.dart';
import '/provider/plan_provider.dart';
import '/views/plan_screen.dart';

class PlanCreatorScreen extends StatefulWidget {
  const PlanCreatorScreen({super.key});

  @override
  State<PlanCreatorScreen> createState() => _PlanCreatorScreenState();
}

class _PlanCreatorScreenState extends State<PlanCreatorScreen> {
  final textController = TextEditingController();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        // ganti 'Namaku' dengan nama panggilanmu
        appBar: AppBar(
          title: const Text('Master Plans Indi'), 
          centerTitle: true, // biar teks berada di tengah
          backgroundColor: Colors.purple, // ubah warna background jadi ungu
          ),
        body: Column(
          children: [
            _buildListCreator(),       // nanti untuk input plan baru
            Expanded(child: _buildMasterPlans()), // nanti untuk menampilkan list plan
          ],
        ),
      );
    }

    Widget _buildListCreator() {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Material(
          color: Theme.of(context).cardColor,
          elevation: 10,
          child: TextField(
            controller: textController,
            decoration: const InputDecoration(
              labelText: 'Add a plan',
              contentPadding: EdgeInsets.all(20),
            ),
            onEditingComplete: addPlan, // method untuk menambah plan
          ),
        ),
      );
    }

    void addPlan() {
      final text = textController.text;
        if (text.isEmpty) {
          return;
        }
        final plan = Plan(name: text, tasks: []);
        ValueNotifier<List<Plan>> planNotifier =
    PlanProvider.of(context);
        planNotifier.value = List<Plan>.from(planNotifier.value)..
    add(plan);
        textController.clear();
        FocusScope.of(context).requestFocus(FocusNode());
        setState(() {});
    }

  Widget _buildMasterPlans() {
  ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
  List<Plan> plans = planNotifier.value;

  if (plans.isEmpty) {
    return Center(  // Wrap Column di Center untuk horizontal centering penuh
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.note, size: 100, color: Colors.grey),
          Padding(  // Tambah padding opsional untuk jarak
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              'Anda belum memiliki rencana apapun.',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,  // Center horizontal teks
            ),
          ),
        ],
      ),
    );
  }
  return ListView.builder(
    itemCount: plans.length,
    itemBuilder: (context, index) {
      final plan = plans[index];
      return ListTile(
        title: Text(plan.name),
        subtitle: Text(plan.completenessMessage),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => PlanScreen(plan: plan)),
          );
        },
      );
    },
  );
}

  @override
  void dispose() {
    textController.dispose(); // bersihkan controller saat widget di-unmount
    super.dispose();
  }
}