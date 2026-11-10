import scripts.personaje.personaje.*
import scripts.gestionObjetos.gestorObjetos.mapaObjetos
import scripts.gestionObjetos.misObjetos.Objeto.*
import scripts.gestionSonidos.gestorSonidos.*

class Intento inherits Objeto(image = "sprites/objetos/intento/corazonItem.png")
{
    override method sePoneEncima(entidad)
    {
        if (entidad.nombre() == "personaje" )
        {
            game.removeVisual(self) 
            mapaObjetos.removerObjeto(self, game.at(0,0))
            personaje.añadirIntento()
        }
        
    }
}