from django.db import models


# Create your models here.
class Blog(models.Model):
    title = models.CharField(max_length=200)
    pub_date = models.DateTimeField("date published", auto_now_add=False, name=None)
    body = models.TextField(auto_created=True)

    def __str__(self):
        return self.title
