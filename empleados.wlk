//Escribir aqui los objetos

object galvan {
    var sueldo = 15000
    var deuda = 0
    var dinero = 0
    method sueldo () {
        return sueldo
    }
    method nuevoSueldo (_sueldo){
        sueldo = _sueldo
    }
    method gastar(montoAGastar){
        if (dinero < montoAGastar){
            self.adeudado(montoAGastar)
        } else {
            dinero= dinero - montoAGastar
        }
    }
    method adeudado(montoAGastar) {
        deuda = deuda + (montoAGastar - dinero)
        dinero = 0
    }
    method dinero (){
        return dinero
    }
    method deuda () {
        return deuda
    }
    method cobrarSueldo(){
        if (self.sueldo() < deuda ){
            deuda = deuda - sueldo
        } else {
            self.saldarDeuda()
        }
    }
    method saldarDeuda(){
        dinero = dinero + (sueldo - deuda)
        deuda = 0
    }
}

object baigorria {
    var empanadasVendidas = 0
    var cobroPorEmpanadas = 15
    method venderEmpanadas (cantidad){
        empanadasVendidas = empanadasVendidas + cantidad
    }
    method sueldo(){
        return (cobroPorEmpanadas * empanadasVendidas)
    }
    method totalCobrado(){
        return self.sueldo()
        empanadasVendidas = 0
    }
}

object gimenez {
    var fondosSueldos = 300000
    method fondos(){
        return fondosSueldos
    }
    method pagarSueldo (empleado){
        fondosSueldos = fondosSueldos - empleado.sueldo()
    }
}