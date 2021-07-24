from django.shortcuts import render

"Creando las vistas de la pasarela de pagos"

def login(request):
    return render(request, "paypal.html")