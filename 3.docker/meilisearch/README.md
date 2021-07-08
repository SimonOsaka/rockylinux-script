## How to use meilisearch
### in production
- add environment key `MEILI_ENV=production`.
- add environment key `MEILI_MASTER_KEY=meili-master-key`.
- Run.
- api provide permission `-H "X-Meili-API-Key: meili-master-key"` to access.

### in development
- comment `MEILI_ENV` and `MEILI_MASTER_KEY`.
- Run.
- import movies.json: `curl -X POST 'http://127.0.0.1:7700/indexes/movies/documents' --data @movies.json`, wait a few seconds to finish.
- query key `batman`: `curl 'http://127.0.0.1:7700/indexes/movies/search' --data '{ "q": "botman" }'`.
- query response: 
```json
{
  "hits": [
    {
      "id": "29751",
      "title": "Batman Unmasked: The Psychology of the Dark Knight",
      "poster": "https://image.tmdb.org/t/p/w1280/jjHu128XLARc2k4cJrblAvZe0HE.jpg",
      "overview": "Delve into the world of Batman and the vigilante justice tha",
      "release_date": "2008-07-15"
    },
    {
      "id": "471474",
      "title": "Batman: Gotham by Gaslight",
      "poster": "https://image.tmdb.org/t/p/w1280/7souLi5zqQCnpZVghaXv0Wowi0y.jpg",
      "overview": "ve Victorian Age Gotham City, Batman begins his war on crime",
      "release_date": "2018-01-12"
    }
    ...
  ],
  "offset": 0,
  "limit": 20,
  "processingTimeMs": 2,
  "query": "botman"
}
```
- web interface: `http://127.0.0.1:7700`, only run in development mode.
