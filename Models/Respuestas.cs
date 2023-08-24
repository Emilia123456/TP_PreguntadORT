public class Respuestas{
    public int idRespuesta {get; set;}
    public int idPregunta {get; set;}
    public int Opcion {get; set;}
    public string  Contenido {get; set;}
    public bool Correcta {get; set;}

    public Respuestas(){
    
    }

    public Respuestas(int idRespuesta, int idPregunta, int opcion, string  contenido, bool correcta){
    idRespuesta=idRespuesta;
    idPregunta=idPregunta;
    Opcion=opcion;
    Contenido=contenido;
    Correcta=correcta;
    }
}
