#!/bin/bash

echo "Deteniendo contenedores..."
for i in {1..20}; do
  docker stop ubuntu_cont_${i} 2>/dev/null && echo "Contenedor ubuntu_cont_${i} detenido"
done

echo "Eliminando contenedores..."
for i in {1..20}; do
  docker rm ubuntu_cont_${i} 2>/dev/null && echo "Contenedor ubuntu_cont_${i} eliminado"
done

echo "Todos los contenedores han sido detenidos y eliminados."
