public static class Juego{
    public static string _username {get; set;}
    public static int _puntajeActual {get; set;}
    public static int _cantidadPreguntasCorrectas {get; set;}
    public static List<Preguntas> _preguntas {get; set;}
    public static List<Respuestas> _respuestas {get; set;}
    public static List<Categorias> _categorias {get; set;}
    public static List<Dificultades> _dificultades {get; set;}


    public static void InicializarJuego(){
        _username = "";
        _puntajeActual = 0;
        _cantidadPreguntasCorrectas = 0;
    }

    public static List<Categorias> ObtenerCategorias(){
        _categorias = BD.ObtenerCategorias();
        return _categorias;
    }

    public static List<Dificultades> ObtenerDificultades(){
        _dificultades = BD.ObtenerDificultades();
        return _dificultades;
    }

    public static void CargarPartida(string username, int dificultad, int categoria){
        _preguntas = BD.ObtenerPreguntas(dificultad,categoria);
        _respuestas = BD.ObtenerRespuestas(_preguntas);
    }

    public static Preguntas ObtenerProximaPregunta(){
        Random rnd = new Random();
        int preguntaElegida  = rnd.Next(1, 13);
        return _preguntas[preguntaElegida];
    }

    public static Respuestas ObtenerProximasRespuestas(int idPregunta){
        return _respuestas[idPregunta];
    }

    public static bool VerificarRespuesta(int idPregunta, int idRespuesta){
        //ver si es correcta 
        //
        //si lo es hay que sumar a puntaje y a cant de preg correctas
        //y eliminar la pregunta de la lista 
        bool ok = false;
        if(_respuestas[idRespuesta].Correcta == true &&  idPregunta == _respuestas[idRespuesta].IdPregunta)
        {   ok=true;
            _puntajeActual++;
            _cantidadPreguntasCorrectas++;
        }
        BD.EliminarPregunta(idPregunta);
        return ok;
    }
}
