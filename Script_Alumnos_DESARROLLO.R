# Proyecto Netzum

# Importar el archivo
df <- read.csv('https://raw.githubusercontent.com/mwaskom/seaborn-data/master/tips.csv')

# Carguemos las librerías que vamos a utilizar
library(ggplot2)

# 1. Generar un scatterplot entre total_bill y tip, donde se puede visualizar
# los colores de los puntos en función de la variable smoker.
ggplot(df, aes(x = total_bill, y = tip, color = smoker)) +
  geom_point() +  # Esto genera el scatterplot básico
  labs(title = "Relación entre Total de la Cuenta y la Propina",
       x = "Total de la Cuenta",
       y = "Propina") 

# 2. A la visualización anterior cambiarle el size = 4 en la geometría de points
ggplot(df, aes(x = total_bill, y = tip, color = smoker)) +
  geom_point(size = 4) +  # Cambia el tamaño de los puntos
  labs(title = "Relación entre Total de la Cuenta y la Propina con Puntos Más Grandes",
       x = "Total de la Cuenta",
       y = "Propina")

# 3. Colocar un alpha = 0.6
ggplot(df, aes(x = total_bill, y = tip, color = smoker)) +
  geom_point(size = 4, alpha = 0.6) +  # Cambia el tamaño y el alpha de los puntos
  labs(title = "Relación entre Total de la Cuenta y la Propina con Puntos Más Grandes y Alpha",
       x = "Total de la Cuenta",
       y = "Propina")
