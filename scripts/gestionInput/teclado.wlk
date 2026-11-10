
import scripts.personaje.personaje.*
import scripts.gestionNiveles.niveles.pantallaTitulo.*
import scripts.gestionMenus.gestorMenu.*
import scripts.gestionInput.gestorInput.*
import scripts.gestionNiveles.gestorNivel.*


object controlesJuego
{
    method configurar()
    {
        // control de movimiento del personaje con flechas
        keyboard.right().whilePressedDo({ personaje.moverDerecha() })
        keyboard.left().whilePressedDo({ personaje.moverIzquierda() })
        keyboard.up().whilePressedDo({ personaje.moverArriba() })
        keyboard.down().whilePressedDo({ personaje.moverAbajo() })

        // control de movimiento del personaje con AWSD
        keyboard.d().whilePressedDo({ personaje.moverDerecha() })
        keyboard.a().whilePressedDo({ personaje.moverIzquierda() })
        keyboard.w().whilePressedDo({ personaje.moverArriba() })
        keyboard.s().whilePressedDo({ personaje.moverAbajo() })

        // controles generales
        keyboard.space().onPressDo({personaje.ataque()})
        keyboard.e().onPressDo({personaje.interact()})
        keyboard.r().onPressDo({gestorNivel.reiniciarNivel()})

        //keyboard.l().onPressDo({gestorNiveles.pasarNivel() })
        keyboard.p().onPressDo({game.stop()})
    }
}

object controlesMenu {
    method configurar() {

        // control de movimiento con flechas
        keyboard.up().onPressDo        ({ gestorInput.up() })
        keyboard.left().onPressDo      ({ gestorInput.left() })
        keyboard.down().onPressDo      ({ gestorInput.down() })
        keyboard.right().onPressDo     ({ gestorInput.right() })

        // control de movimiento con WASD
        keyboard.w().onPressDo         ({ gestorInput.up() })
        keyboard.a().onPressDo         ({ gestorInput.left() })
        keyboard.s().onPressDo         ({ gestorInput.down() })
        keyboard.d().onPressDo         ({ gestorInput.right() })
        
        // controles generales
        keyboard.enter().onPressDo     ({ gestorInput.enter() })
        keyboard.backspace().onPressDo ({ gestorInput.backspace() })
        keyboard.space().onPressDo     ({ gestorInput.space() })
        keyboard.r().onPressDo         ({ gestorInput.pressR() })
        keyboard.e().onPressDo         ({ gestorInput.pressE() })

        // Testeo
        keyboard.p().onPressDo         ({game.stop()})
        keyboard.l().onPressDo         ({gestorNivel.pasarNivel()})
    }  
}