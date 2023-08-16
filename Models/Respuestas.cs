public class Respuestas{
    public int IdRespuesta {get; set;}
    public int IdPregunta {get; set;}
    public int Opcion {get; set;}
    public string  Contenido {get; set;}
    public bool Correcta {get; set;}

    public Respuestas(){
    
    }

    public Respuestas(int IdRespuesta, int IdPregunta, int Opcion, string  Contenido, bool Correcta){
    IdRespuesta=IdRespuesta;
    IdPregunta=idPregunta;
    Opcion=opcion;
    Contenido=contenido;
    Correcta=correcta;
    }
}
