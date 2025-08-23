//Escribir aqui los objetos

object galvan {
    var sueldo = 15000
    method sueldo () {
        return sueldo
    }
    method nuevoSueldo (_sueldo){
        sueldo = _sueldo
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
}

object gimenez {
    var fondosSueldos = 300000
    method fondos(){
        fondosSueldos
    }
    method pagarSueldo (empleado){
        fondosSueldos = fondosSueldos - empleado.sueldo()
    }
}