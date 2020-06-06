from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class UserTransaction(models.Model):
    transaction_type = models.CharField(max_length=255)
    transaction_date = models.DateField()
    accounting_date = models.DateField()
    description = models.TextField()
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='user')

class Transaction(models.Model):
    transaction_type = models.CharField(max_length=255)
    transaction_property = models.CharField(max_length=255)
    transaction_property_datatype = models.CharField(max_length=255, default='number')    

class UserTransactionDetail(models.Model):
    user_transaction = models.ForeignKey(UserTransaction, on_delete=models.CASCADE, related_name='user_transaction')
    transaction_property = models.CharField(max_length=255)
    transaction_value = models.IntegerField()