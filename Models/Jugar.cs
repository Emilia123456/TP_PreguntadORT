using Microsoft.AspNetCore.Authentication.OAuth.Claims;

public static class Juego{
    public static string _username {get; set;}
    public static int _puntajeActual {get; set;}
    public static int _cantidadPreguntas {get; set;}
    public static int _cantidadPreguntasCorrectas {get; set;}
    public static List<Preguntas> _preguntas {get; set;}
    public static List<Respuestas> _respuestas {get; set;}
    public static List<Categorias> _categorias {get; set;}
    public static List<Dificultades> _dificultades {get; set;}
    public static int _cont {get; set;}



    public static void InicializarJuego(){
        _username = "";
        _puntajeActual = 0;
        _cantidadPreguntas = 0;
        _cantidadPreguntasCorrectas = 0;
        _cont=1;
    }

    public static List<Categorias> ObtenerCategorias(){
        _categorias = BD.ObtenerCategorias();
        return _categorias;
    }

    public static List<Dificultades> ObtenerDificultades(){
        _dificultades = BD.ObtenerDificultades();
        return _dificultades;
    }

    public static void CargarPartida(string _username, int dificultad, int categoria){
        _preguntas = BD.ObtenerPreguntas(dificultad,categoria);
        _respuestas = BD.ObtenerRespuestas(_preguntas);
    }

    public static Preguntas ObtenerProximaPregunta(){
        Random rnd = new Random();
        int preguntaElegida  = rnd.Next(1, _preguntas.Count);
        _cantidadPreguntas++;
        // Tenemos que hacer que se returnee _preguntas CON EL ID, osea que el numero que le estemos pasando "preguntaElegida", sea tomado como idPregunta
        return _preguntas[preguntaElegida];
       //no returnea bien el enunciado. necesitamos que mande el capmpo enunciado del objeto (pregunta[preguntaELegida]) de una lista de objetos (_preguntas[]) 
    }

    

    public static List<Respuestas> ObtenerProximasRespuestas(int idPregunta){
        // crean una lista de respuestas vacia.
        //recorren las respuestas y suman a esa lista las que sean de esta pregunta. devuelven esa lista
        List<Respuestas> respuestas = new List <Respuestas>();
        foreach(Respuestas resp in Juego._respuestas){
            if(resp.idPregunta==idPregunta){
                respuestas.Add(resp);
                
            }
        }
        return respuestas;
   }

    public static bool VerificarRespuesta(int idPregunta, int idRespuesta)
    {
        bool ok = false;
        
        foreach (Respuestas res in _respuestas)
        {
            if (res.idRespuesta == idRespuesta)
            {
                if (res.Correcta==true)
                {
                    ok = true;
                    _puntajeActual = _puntajeActual + 50;
                    _cantidadPreguntasCorrectas++;
                }
        }
        
        
    }
    _cantidadPreguntas = _cantidadPreguntas + 1;
        return ok;
    }

  public static void EliminarPregunta(int idPregunta)
{
    //funciona pero hay que frenarlo cuando se cae
    _preguntas.RemoveAll(pregunta => pregunta.idPregunta == idPregunta);
}

}


