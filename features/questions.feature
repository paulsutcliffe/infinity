# language: es

Característica: administrar la página de preguntas

@admin
Escenario: agregar pregunta
  Dado que estoy en la página inicial
  Cuando hago click en "FAQ"
  Y hago click en "New Question"
  Y lleno "Question" con "¿Aceptan tarjeta de crédito?"
  Y lleno "Answer" con "Sí, aceptamos Visa y Mastercard"
  Cuando presiono "Save"
  Entonces debería ver "Question was successfully created."
  Y debería ver "¿Aceptan tarjeta de crédito?"
  Y debería ver "Sí, aceptamos Visa y Mastercard"

@admin
Escenario: editar pregunta
  Dado que existe el pregunta "¿Aceptan tarjeta de crédito?"
  Y que estoy en la página inicial
  Cuando hago click en "FAQ"
  Y hago click en "Edit"
  Y lleno "Question" con "¿Aceptan tarjeta de crédito?"
  Y lleno "Answer" con "No, aceptamos solo Paypal y efectivo"
  Y presiono "Save"
  Entonces debería ver "Question was successfully updated."
  Y debería ver "No, aceptamos solo Paypal y efectivo"

@admin
Escenario: eliminar pregunta
  Dado que existe el pregunta "¿Aceptan tarjeta de crédito?"
  Y que estoy en la página inicial
  Cuando hago click en "FAQ"
  Y hago click en "Delete"
  Entonces debería ver "Question was successfully destroyed."
  Y no debería ver "¿Aceptan tarjeta de crédito?"

Escenario: el usuario puede ver los preguntas
  Dado que existe el pregunta "¿Aceptan tarjeta de crédito?"
  Y que estoy en la página inicial
  Cuando hago click en "FAQ"
  Entonces debería ver "¿Aceptan tarjeta de crédito?"
  Y no debería ver los controles de administración

