version: '3'
services:
  app:
    image: poojamishra1/bookproject:latest
    ports:
      - "3000:3000"
    depends_on:
      - db
  db:
    image: postgres:latest
    environment:
      POSTGRES_DB: booksstore
      POSTGRES_USER: postgres
      POSTGRES_PASSWORD: 1234
  pgadmin:
    image: dpage/pgadmin4
    environment:
      PGADMIN_DEFAULT_EMAIL: pooja.mishra@plutustec.com
      PGADMIN_DEFAULT_PASSWORD: 1234
    ports:
      - "5050:80"
    depends_on:
      - db

