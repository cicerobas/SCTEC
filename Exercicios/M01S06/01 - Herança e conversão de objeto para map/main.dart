abstract class ConsultaEntity {
  String paciente;
  String medico;
  List<String> exames;
  String data;

  ConsultaEntity({
    required this.paciente,
    required this.medico,
    required this.exames,
    required this.data,
  });
}

class ConsultaModel extends ConsultaEntity {
  ConsultaModel.fromMap(Map<dynamic, dynamic> map)
    : super(
        paciente: map['paciente'],
        medico: map['medico'],
        data: map['data'],
        exames: map['exames'],
      );

  Map<String, dynamic> toMap() {
    return {
      'paciente': paciente,
      'medico': medico,
      'exames': exames,
      'data': data,
    };
  }

  @override
  String toString() =>
      "\nPaciente: $paciente\nMédico: $medico\nExames: $exames\nData: $data";
}

void main() {
  final map = {
    "paciente": "João da Silva",
    "medico": "Dra. Maria Oliveira",
    "exames": ["Hemograma", "Glicemia"],
    "data": "2026-05-17",
  };

  //* 1. Crie uma abstração para a entidade acima (abstract)
  //* 2. Crie uma classe de modelo que herde da sua abstração
  //* 3. na classe de modelo implemente um construtor para transformar de map em classe
  //* 4. na classe modelo crie um método que vai trasnformar a instancia atual em map

  final consultaModel = ConsultaModel.fromMap(map); // Map -> Model
  final consultaMap = consultaModel.toMap(); // Model -> Map

  print("Model: $consultaModel");
  print("\nMap: $consultaMap");
}
