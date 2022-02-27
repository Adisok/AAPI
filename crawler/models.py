# Create your models here.

from django.db import models


class Car(models.Model):
    brand = models.CharField(max_length=150)

    class Meta:
        verbose_name = 'Car'
