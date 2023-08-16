public class Juego{
    public string _username {get; set;}
    public int _puntajeActual {get; set;}
    public int _cantidadPreguntasCorrectas {get; set;}
    public List<Preguntas> _preguntas {get; set;}
    public List<Respuestas> _respuestas {get; set;}
    public List<Categorias> _categorias {get; set;}
    public List<Dificultades> _dificultades {get; set;}


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

    public void CargarPartida(string username, int dificultad, int categoria){
        _preguntas = BD.ObtenerPreguntas();
        _respuestas = BD.ObtenerRespuestas();
    }

    public Preguntas ObtenerProximaPregunta(){
        Random rnd = new Random();
        int preguntaElegida  = rnd.Next(1, 13);
        return _preguntas[preguntaElegida];
    }

    public Respuestas ObtenerProximasRespuestas(int idPregunta){
        return _respuestas[idPregunta];
    }

    public bool VerificarRespuesta(int idPregunta, int idRespuesta){
        //ver si es correcta 
        //
        //si lo es hay que sumar a puntaje y a cant de preg correctas
        //y eliminar la pregunta de la lista 
        bool ok;
        if(_preguntas[idPregunta] = _respuestas[idPregunta])
        {
             ok=true;
            _puntajeActual++;
            _cantidadPreguntasCorrectas++;

        }else{
            ok=false;
           
        }


        return ok;
    }
}
//hola