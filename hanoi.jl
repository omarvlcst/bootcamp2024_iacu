function mover_disco(pila_inicio, pila_fin)
  println("Mover disco superior de la pila ", pila_inicio, "a la pila ", pila_fin)
end

function hanoi(numero_de_discos, pila_inicial, pila_auxiliar, pila_destino)
    if numero_de_discos == 1
      return mover_disco(pila_inicial, pila destino)
    else
      hanoi(numero_de_discos-1, pila_inicio, pila_destino, pila_auxiliar)
      hanoi(1, pila_inicio, pila_auxiliar, pila_destino)
      hanoi(numero_de_discos-1, pila_auxiliar, pila_inicio, pila_destino)
    end
end
