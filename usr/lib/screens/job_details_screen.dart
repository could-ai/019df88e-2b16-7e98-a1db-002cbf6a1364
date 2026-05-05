import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class JobDetailsScreen extends StatelessWidget {
  const JobDetailsScreen({super.key});

  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes da Vaga'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ESTÁGIO - ELETROTÉCNICA',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle(context, 'Requisitos'),
            _buildListItem('Domínio em Autocad 2d'),
            _buildListItem('Disponibilidade para estagiar pelo menos 1 ano'),
            const SizedBox(height: 16),
            _buildSectionTitle(context, 'Condições'),
            _buildListItem('Carga horária: 6h/dia - Horário flexível, a combinar com a gestão da área.'),
            _buildListItem('Bolsa-estágio: R$ 1.517,07'),
            const SizedBox(height: 16),
            _buildSectionTitle(context, 'Benefícios'),
            _buildListItem('Plano de Saúde UNIMED com coparticipação'),
            _buildListItem('Seguro de Vida sem desconto'),
            _buildListItem('Vale Alimentação (R$ 521,00 no Flash) sem desconto em folha'),
            _buildListItem('Refeição no restaurante da empresa sem nenhum desconto para o colaborador'),
            _buildListItem('Vale Transporte sem desconto do salário e opção de fretado gratuito na unidade'),
            _buildListItem('Benefício Total Pass para acesso a academias, estúdios'),
            _buildListItem('Benefício Conexa Saúde para atendimentos psicológicos gratuitos e consulta com especialistas da nutrição'),
            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 16),
            _buildSectionTitle(context, 'Sobre a Actemium'),
            const Text(
              'A Actemium é uma empresa global que acelera a Transição Energética e a Transformação Digital, atuando em todo o ciclo de vida industrial — do projeto e engenharia à execução e manutenção.\n\n'
              'No Brasil, estamos presentes em setores como óleo & gás, mineração, metais, indústria pesada, infraestrutura, entre outros.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 16),
            Text(
              'Saiba mais sobre quem somos e o que fazemos:',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            InkWell(
              onTap: () => _launchURL('https://youtu.be/R-tQLAOTJJw?si=akCGPSz6Oxbh2O_b'),
              child: Row(
                children: [
                  const Icon(Icons.link, color: Colors.blue),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Assistir ao Vídeo Institucional',
                      style: TextStyle(
                        color: Colors.blue[700],
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Inscrição simulada com sucesso!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: const Text('Candidatar-se'),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }

  Widget _buildListItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('• ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
