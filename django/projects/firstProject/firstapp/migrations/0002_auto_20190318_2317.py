# Generated by Django 2.1.7 on 2019-03-18 14:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('firstapp', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='blog',
            old_name='title',
            new_name='title123',
        ),
        migrations.RemoveField(
            model_name='blog',
            name='pub_date',
        ),
        migrations.AddField(
            model_name='blog',
            name='흐으으음',
            field=models.DateTimeField(auto_now=True),
        ),
    ]