public static class Juego{
    public static string _username {get; set;}
    public static int _puntajeActual {get; set;}
    public static int _cantidadPreguntas {get; set;}
    public static int _cantidadPreguntasCorrectas {get; set;}
    public static List<Preguntas> _preguntas {get; set;}
    public static List<Respuestas> _respuestas {get; set;}
    public static List<Categorias> _categorias {get; set;}
    public static List<Dificultades> _dificultades {get; set;}


    public static void InicializarJuego(){
        _username = "";
        _puntajeActual = 0;
        _cantidadPreguntas = 0;
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
        _cantidadPreguntas++;
        return _preguntas[preguntaElegida];
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

    public static bool VerificarRespuesta(int idPregunta, int idRespuesta){
        bool ok = false;
        if(_respuestas[idRespuesta].Correcta == true &&  idPregunta == _respuestas[idRespuesta].idPregunta)
        {   ok=true;
            _puntajeActual=_puntajeActual+50;
            _cantidadPreguntasCorrectas++;
        }
        //_preguntas;
        return ok;
    }
}
