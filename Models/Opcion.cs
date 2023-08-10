public class Opcion{
    public int IdOpcion {get; set;}
    public string Opcion1 {get; set;}
    public string Opcion2 {get; set;}
    public string Opcion3 {get; set;}
    public string Opcion4 {get; set;}
}

public Respuestas(){
   
}

public Respuestas(int IdOpcion, string Opcion1, string Opcion2, string Opcion3, string Opcion4){
    IdOpcion=idOpcion;
    Opcion1=opcion1;
    Opcion2=opcion2;
    Opcion3=opcion3;
    Opcion4=opcion4;
}
