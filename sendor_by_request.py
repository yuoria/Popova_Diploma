# Юлия Попова, 16-я когорта — Финальный проект. Инженер по тестированию плюс
import functions
import data


# Автотест
def test_order_creation_and_retrieval():
    response = functions.create_order(data.order_body)

    track_number = response.json()["track"]

    # Получение данных заказа по треку
    order_response = functions.get_order(track_number)

    assert order_response.status_code == 200
