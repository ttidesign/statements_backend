# Generated by Django 3.0.7 on 2020-06-10 10:50

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('statements', '0005_statementdetail_line_item_order'),
    ]

    operations = [
        migrations.CreateModel(
            name='Transaction_StatementDetail_Bridge',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sign', models.IntegerField()),
                ('line_item', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='line_item_id', to='statements.StatementDetail')),
                ('transaction_property', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='transaction_property_id', to='statements.Transaction')),
            ],
        ),
    ]
