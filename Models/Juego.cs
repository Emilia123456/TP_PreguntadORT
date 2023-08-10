public class Juego{
    public string _username {get; set;}
    public int _puntajeActual {get; set;}
    public int _cantidadPreguntasCorrectas {get; set;}
    public List<Pregunta> _preguntas {get; set;}
    public List<Respuesta> _respuestas {get; set;}
    public List<Categorias> _categorias {get; set;}
    public List<Dificultades> _dificultades {get; set;}
}

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
    _preguntas = BD.ObtenerPreguntas();
    _respuestas = BD.ObtenerRespuestas();
}

public static int ObtenerProximaPregunta(){
    Random rnd = new Random();
    int preguntaElegida  = rnd.Next(1, 13);
    return preguntaElegida;
    
}