# Gb_docker_flask_project

Итоговый проект курса "Машинное обучение в бизнесе"

Стек:

ML: sklearn, pandas, numpy API: flask Данные: с kaggle - https://www.kaggle.com/blastchar/telco-customer-churn

Задача: предсказать по признакам клиента его отток (поле Churn). Бинарная классификация

Используемые признаки:

* tenure (int)
* OnlineSecurity (int)
* PhoneService (int)

Преобразования признаков: standardScaler(tenure), OHE-кодирование.

Модель: logreg

### Клонируем репозиторий и создаем образ
```
$ git clone https://github.com/juliazhigaryova/GB_docker_flask_Project.git
$ cd GB_docker_flask_Project.git
$ docker build -t gb_docker_flask_project .
```


### Запускаем контейнер

Здесь Вам нужно создать каталог локально и сохранить туда предобученную модель (<your_local_path_to_pretrained_models> нужно заменить на полный путь к этому каталогу)
```
$ docker run -d -p 8080:8080  -v <your_local_path_to_pretrained_models>:/app/app/models gb_docker_flask_project
```

### Переходим на localhost:8080