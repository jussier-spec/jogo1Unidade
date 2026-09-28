import 'package:agents/ui/widgets/agent_card.dart';
import 'package:flutter/material.dart';

class ContratoDiarioPage extends StatelessWidget {
  final Map<String, dynamic> hero;  
  const ContratoDiarioPage({super.key, required this.hero});
  
  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.black87,
    backgroundColor: Colors.grey[300],
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contrato Diário'),
      ),
      body: Scaffold(
        body: 
        SingleChildScrollView(child: 
          Column( children:
            [
              AgentCard(hero: hero),
              const SizedBox(height: 24),
              
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                   onPressed: () {
                    print('Clicou!');
                  },
                  style: raisedButtonStyle,
                  child: const Text('Recrutar'),
                ),
              ),
              const SizedBox(height: 24),
            ],
          )
        )
      ),
    );
  }
}
