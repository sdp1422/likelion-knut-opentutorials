# [Django] Week 2_2 Wordcount 실습 1

## 준비작업

1. 가상환경 진입

   ```bash
   $ source myvenv/bin/activate
   ```

2. 프로젝트 만들기

   ```bash
   $ django-admin startproject firstproject
   ```



## wordcount 만드는 작업순서

1. 프로젝트 안으로 들어가자

   ```bash
   $ cd firstproject
   ```

2. 앱을 만들자

   ```bash
   $ python manage.py startapp wordcount
   ```

3. settings.py에 들어가서 앱을 알려주자

   INSTALLED_APPS에 추가

   ```python
   'wordcount.apps.WordcountConfig',
   ```

4. 템플릿 폴더 만들기

5. 템플릿 파일 추가

   home.html



6. 어떻게 보여질 건지 view.py에서 함수정의

   ```python
   def home(request):
       return render(request, 'home.html')
   ```


***근데 render 함수 정체란?***

* 세 개의 인자까지 받을 수 있다.

  ```python
  render(request, '보여줄 html', 딕셔너리형 자료형)
  ```


7. urls.py에 적어주자.

   ```python
   import wordcount.views
   
   # 밑에 추가
   path('', wordcount.views.home, name = "home")
   ```

8. 자, 이제 home.html을 만져보자.

   ```html
   <h1>여기서 글자를 세세요.</h1>
   
   <a href = "">ABOUT</a>
   
   <form action ="">
       <textarea cols = "40" rows = "30" name = "fulltext">
       
       </textarea>
       <input type = "submit" value = "Count!"
   </form>
   ```

   * html 문법은 html 카테고리에서 공부하자!

9. about.html을 작성하자.

   ```html
   <h1>About</h1>
   
   <p>
       여기는 글자를 세주는 페이지입니다.
   </p>
   ```

10. view.py 에 가서 이 함수를 만들어주자. 

    ```python
    def about(request):
        return render(request, 'html.html')
    ```

11. url.py 에 가서 경로를 알려주자.

    ```python
    path('/about/', wordcount.views.about, name = "about"),
    ```

12. 이제 home.html 이랑 about.html이랑 연결하자.

    * 템플릿 태그를 사용해서 url을 표현한다!

      ```html
      <a href = "{%url 'about'%}">ABOUT</a>
      ```

13. about.html 에서 home으로 돌아가자.

    ```html
    <a href = "{% url 'home'%}">홈으로 돌아가기</a>
    ```
