library(ggplot2)

df <- datasets::iris

ggplot(df, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point() + 
  labs(title = 'Iris Data Scatter Plot',
       x = 'Sepal Length',
       y = 'Sepal Width')

ggplot(df, aes(x=Species, y=Sepal.Length, fill=Species)) +
  geom_boxplot()


library(plotly)

plot_ly(df, x=~Sepal.Length, y=~Sepal.Width, color=~Species, type='scatter', mode='markers') %>%
  layout(title='Iris Data Scatter Plot',
         yaxis=list(title='Sepal Width'),
         xaxis=list(title='Sepal Length'))

plot_ly(df, x=~Species, y=~Sepal.Length, color=~Species, type='box')
