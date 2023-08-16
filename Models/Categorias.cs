public class Categorias{
    public int IdCategoria {get; set;}
    public string Nombre {get; set;}
    


    public Categorias(){
    
    }

    public Categorias(int idcategoria, string nombre ){
        IdCategoria=idcategoria;
        Nombre=nombre;
    }
}