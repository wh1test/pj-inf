from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def hello(request):
    l = list(range(5))
    return render(request,'index.html',{'indexs':l})
    #return HttpResponse ("H W")