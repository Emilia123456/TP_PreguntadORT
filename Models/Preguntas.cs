public class Preguntas{
    public int IdPregunta {get; set;}
    public int IdCategoria {get; set;}
    public int IdDificultad {get; set;}
    public string Enunciado {get; set;}
    public string Foto {get; set;}
    public int IdOpcion {get; set;}

    public Preguntas(){
    
    }

    public Preguntas(int IdPregunta, int IdCategoria, int IdDificultad, string Enunciado, string Foto, int IdOpcion ){
    IdPregunta=IdPregunta;
    IdCategoria=idCategoria;
    IdDificultad=idDificultad;
    Enunciado=enunciado;
    Foto=foto;
    IdOpcion=idOpcion;
    }
}
