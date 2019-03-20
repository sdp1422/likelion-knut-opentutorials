# [Django] Week 1_3 Hello World 실습



## Project 만들기



1. 가상환경 키기

   ```bash
   $ source myvenv/bin/activate
   ```

2. 장고 프로젝트 만들기

   ```bash
   $ django-admin startproject djangoproject
   ```

   <img width="1138" alt="2019-01-17 5 42 50" src="https://user-images.githubusercontent.com/37871541/51305895-6b9b0100-1a7f-11e9-8973-b2e84d895c69.png">

   (귀찮아서 이름바꾸는 거 안했습니다. 양해좀..)

   my project안에는 이제 다른 파일들의 꾸러미가 있는데 지금은 상관하지 않겠습니다.

3. 서버를 돌려보자.

   ```bash
   $ pwd # (present work directory) # 현재 디렉토리 파악
   $ cd djangoproject	# 작업환경 바꾸고
   $ python manage.py runserver  # 서버돌리기
   ```

   <img width="1138" alt="2019-01-17 5 48 43" src="https://user-images.githubusercontent.com/37871541/51306317-62f6fa80-1a80-11e9-982a-3ad5901ac436.png">

   * 127.0.0.1 => 내 컴퓨터를 의미
   * :8000 => 포트 번호 8000
   * 그걸 누르면 창이 뜬다!

4. 서버를 끄자.

   ```:8ball:
   $ ctrl + c
   ```




## APP 만들기

1. 앱 만들기

   ```:8ball:
   $ python manage.py startapp myapp
   ```

   <img width="1228" alt="2019-01-17 5 56 59" src="https://user-images.githubusercontent.com/37871541/51306715-65a61f80-1a81-11e9-8f88-37bf56b5cfff.png">

   * 역시나 my app 안에는 여러 파일과 폴더가 생성되어 있을 것인데 일단 무시!
   * 그 안에 있는 파일들 끼리 정보를 주고 받을 예정!

2. templates 폴더 생성

   <img width="1228" alt="2019-01-17 6 01 18" src="https://user-images.githubusercontent.com/37871541/51307145-4cea3980-1a82-11e9-8a66-7dbcfdbb9583.png">

3. templates 폴더 안에 html 파일 생성하기

   <img width="1228" alt="2019-01-17 6 05 47" src="https://user-images.githubusercontent.com/37871541/51307265-95a1f280-1a82-11e9-87be-74e270ae6f13.png">

   home 안에 

   ```:8ball:
   <h1>hello world!!!</h1>
   ```

   를 넣어주자.

4. app의 존재를 project한테 알려주자. (setting.py)

   setting.py -> INSTALLED_APPS

   여기에 적혀있는 것을 내가 판단해보면, '' 안에 들어있는 ***객체*** 를 불라오라는 의미이다.

   <img width="1228" alt="2019-01-17 7 05 29" src="https://user-images.githubusercontent.com/37871541/51311068-6774e080-1a8b-11e9-9c19-2eb870323311.png">

   * <app이름>.apps.<첫문자 대문자로 app이름>Config
   * 여기서 마지막에 콤마!!!!    **,** 를 꼭 넣어 주어야 한다!!!

5. 이걸 확인하려면 myapp 폴더 안에 apps.py 를 보면 이 객체가 선언되어 있음을 알 수 있다.

   객체에 대한 내용은 추가로 다루자.

   <img width="1228" alt="2019-01-17 7 18 24" src="https://user-images.githubusercontent.com/37871541/51311666-c7b85200-1a8c-11e9-9f70-49912abf61ed.png">

6. 이제 project에 app이 있음을 알려줬고, app에 어떤걸 보여줄지도 만들었다.

   다음은, 어떤 상황에 어떤걸 보여줄지 설정해야 한다.

   그건 `view.py`에 작성한다고 했다.


   <img width="1228" alt="2019-01-17 7 23 53" src="https://user-images.githubusercontent.com/37871541/51311979-8bd1bc80-1a8d-11e9-96bd-0d0d157e1517.png">

   ```python
   def home(request):
       return render(request, 'home.html')
   ```

   **요청** 이 들어오면, home.html를 리턴해줘 라는 뜻

   함수에 대한 설명은 추가적으로 작성

7. 서버에 접근 했을 때 어떤 url에 접근할 것인지 만들어야 한다.

   url.py에 접근해서 urlpattern의 리스트에 추가해주면 된다.

   <img width="1228" alt="2019-01-19 12 00 32" src="https://user-images.githubusercontent.com/37871541/51394629-27425a80-1b7e-11e9-8de3-4d5e36796715.png">




   그 전에 이 html를 어떻게 보여줄지에 대한 함수가 적힌 (왜 함수냐면 출력 값이 html을 줄거기 때문에)

   녀석을 불러와야 한다!

   <img width="1228" alt="2019-01-19 12 16 51" src="https://user-images.githubusercontent.com/37871541/51395205-9bc9c900-1b7f-11e9-989b-20aae91e24eb.png">


   그리고 나서 아까 urlpattern 의 리스트에 다음을 추가해준다.

   ```:eight:
   path('', myapp.views.home, name = "home"),
   ```



   ```:eight:
   '' # (라우트) 안에 있는 내용은 조건임, 해당 조건이 시작될 떄,
   
   myapp.views.home #myapp 폴더 안에 있는 views라는 폴더안에 있는 home이라는 함수를 실행해라.
   
   name = "home" # 이 경로자체를 home이라고 부르겠다.
   ```



   * 이름을 왜 괜히 붙이지?
     * 만약 이 이름이 없다면 view.py에서 함수이름을 바꿔줘야 한다.
     * 그래서 path 전체를 바꿔줘야 하는데 여튼.. 그런 문제가 있다.
     * 그래서 함수랑 url을 같은 이름을 쓰면 편함

   <img width="1228" alt="2019-01-19 12 27 48" src="https://user-images.githubusercontent.com/37871541/51395826-1c3cf980-1b81-11e9-942f-47d20bbb43fc.png">

8. 서버 돌려보자

   ```:eight:
   python manage.py runserver
   ```

   hello world! 가 출력된다!