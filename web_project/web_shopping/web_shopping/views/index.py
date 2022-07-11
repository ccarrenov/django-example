from django.shortcuts import render
from pathlib import Path
import glob, os
from web_shopping.views import carts

def load(request): 
    quanty = carts.load_carts(request)
    return render(request, 'index.html', {'imgs' : load_imgs(), 'quantity': carts.load_carts(request)})

def load_imgs():
    print('load img carousel')
    base_dir = Path(__file__).resolve().parent.parent
    dir_img = os.path.join(base_dir, 'static', 'img', 'carousel')
    imgs = os.listdir(dir_img)
    return imgs
