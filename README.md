# TheMovieTMDb SwiftUI.

### Язык: SwiftUI
### Архитектура: MVVM

### Задача:
Реализовать 3 экрана на базе [TMDb API](https://developers.themoviedb.org) используя SwiftUI.

**1. Login screen** - [Authentication API](https://developers.themoviedb.org/3/authentication/how-do-i-generate-a-session-id)
Простой экран с полями ввода и кнопкой 'Login'. Поля ввода предзаполняем кредами, основная задача организовать навигацию между экраном логина и основным экраном с фильмами.

Дополнительно реализован **ActivityIndicator** для визуального отображения состояния выполнения запроса и **Alert**, который транслирует оишбки возвращаемые сервером.


![](https://i.ibb.co/pZHWyR4/2021-01-24-18-32-56.png)

**2. PopularMovie** -  [get popular movies API](https://developers.themoviedb.org/3/movies/get-popular-movies) - отображется список самых полулярных фильмов на момент запроса.

**3. Movie details** - [get movie details API](https://developers.themoviedb.org/3/movies/get-movie-details) - детальная ифнормация выбранного фильма.

![](https://i.ibb.co/9cgMjXz/2021-01-24-18-34-44.png)
