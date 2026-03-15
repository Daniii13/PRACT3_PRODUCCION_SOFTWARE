Feature: Gestión de gastos
  Como estudiante
  Quiero gestionar mis gastos
  Para llevar un control de mi economía

  Scenario: Añadir un nuevo gasto incrementa el total
    Given un gestor de gastos vacío
    When añado un gasto de 10 euros llamado "Comida"
    Then el total de dinero gastado debe ser 10 euros
    And debe haber 1 gastos registrados

  Scenario: Eliminar un gasto reduce el total
    Given un gestor con un gasto de 20 euros
    When elimino el gasto con id 1
    Then el total de dinero gastado debe ser 0 euros
    And debe haber 0 gastos registrados

  Scenario: Añadir varios gastos acumula el total correcto
    Given un gestor de gastos vacío
    When añado un gasto de 15 euros llamado "Libro"
    And añado un gasto de 5 euros llamado "Café"
    Then el total de dinero gastado debe ser 20 euros
    And debe haber 2 gastos registrados