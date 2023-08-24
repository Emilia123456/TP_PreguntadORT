public class Preguntas{
    public int idPregunta {get; set;}
    public int idCategoria {get; set;}
    public int idDificultad {get; set;}
    public string Enunciado {get; set;}
    public string Foto {get; set;}
    public int idOpcion {get; set;}

    public Preguntas(){
    
    }

    public Preguntas(int idPregunta, int idCategoria, int idDificultad, string enunciado, string foto, int idOpcion ){
    idPregunta=idPregunta;
    idCategoria=idCategoria;
    idDificultad=idDificultad;
    Enunciado=enunciado;
    Foto=foto;
    idOpcion=idOpcion;
    }
}
