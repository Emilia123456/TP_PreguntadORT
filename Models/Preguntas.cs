public class Preguntas{
    public int IdPregunta {get; set;}
    public int IdCategoria {get; set;}
    public int IdDificultad {get; set;}
    public string Enunciado {get; set;}
    public string Foto {get; set;}
    public int IdOpcion {get; set;}

    public Preguntas(){
    
    }

    public Preguntas(int idPregunta, int idCategoria, int idDificultad, string enunciado, string foto, int idOpcion ){
    IdPregunta=idPregunta;
    IdCategoria=idCategoria;
    IdDificultad=idDificultad;
    Enunciado=enunciado;
    Foto=foto;
    IdOpcion=idOpcion;
    }
}
