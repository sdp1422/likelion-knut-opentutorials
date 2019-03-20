# [Django] Week 1_2 Hello World 이론

## 유의사항

* 장고 처음 진입장벽이 높다..
* 큰 그림을 먼저 보고 접근할 생각이다.
* 모든 것을 이해하는 시도는 자제하자.



## 목표

* Django내에서 정보의 흐름을 이해하자.



## Django는 어떻게 작동할까?

> 파일 및 폴더의 **티키타카**



1. **어디서 티키타카?**
2. **어떻게 티키타카?**



## 어디서 티키타카?

###What is Project

* 프로그램을 실행시키기 위한 가장 큰 단위



Django Project 설정

```bash
django-admin starproject (프로젝트 이름)
```

***실행 후 모습***

<img width="800" alt="2019-01-17 4 32 03" src="https://user-images.githubusercontent.com/37871541/51302366-76509880-1a75-11e9-8665-db5f0c45687c.png">



* 벌써 머리가 아프다.
* 이녀석들만 먼저 생각하자.

<img width="800" alt="2019-01-17 4 33 45" src="https://user-images.githubusercontent.com/37871541/51302416-ab5ceb00-1a75-11e9-8c9e-c4e87579413f.png">



1. manage.py

   * 저기 보이는 히오스는 서버를 돌리는 녀석이다.

   * 서버를 돌리는 방법?

     ```bash
     python manage.py runserver
     ```





###What is APP

* 프로젝트의 구성 단위

* 이 앱들이 모인 것이 프로젝트!

* 실행 명령어

  ```bash
  python manage.py startapp
  ```

  ***실행 후 모습***

  <img width="800" alt="2019-01-17 4 38 22" src="https://user-images.githubusercontent.com/37871541/51302636-5077c380-1a76-11e9-861b-57a83cc6f25a.png">





### 중간 정리

* 장고를 가지고 만들기 위해서는
  1. 가상환경
  2. 장고를 사용해 프로젝트 생성
  3. 프로젝트를 이루는 앱도 만들어 주어야 한다.
  4. 여기서 manage.py로 서버를 돌릴 수 있고
  5. 프로젝트에서 생성되는 몇몇개의 파일과 앱 폴더에서 생성되는 몇개의 파일과 티키타카를 진행한다.


<img width="800" alt="2019-01-17 4 41 35" src="https://user-images.githubusercontent.com/37871541/51302793-c419d080-1a76-11e9-96df-9a637691bc34.png">







## 어디서 티키타카?

* APP 폴더안의 파일을 살펴보면 된다.
* 여기서 추가적으로 만들어야 되는 폴더가 존재한다.
* 바로 ***templates*** 폴더!


<img width="800" alt="2019-01-17 4 46 26" src="https://user-images.githubusercontent.com/37871541/51303035-7b164c00-1a77-11e9-8a99-542240c0acad.png">





* 프로젝트를 생성하고, APP을 생성했을 때 딸려서 태어나는 폴더랑 파일을 시각화하면 이거다!



<img width="800" alt="2019-01-17 4 48 19" src="https://user-images.githubusercontent.com/37871541/51303113-b3b62580-1a77-11e9-9e65-6765afc9cb10.png">



* 아 너무 어렵고 하기 싫어지니까 핵심적인 녀석만 빼보자.



<img width="800" alt="2019-01-17 4 49 51" src="https://user-images.githubusercontent.com/37871541/51303184-ea8c3b80-1a77-11e9-95f9-555f2ea8d173.png">

 

* 그런데 Project를 우리가 만들고, App을 만들었다고 해서 바로 Project가 이걸 인지할 수 가 없다!



<img width="800" alt="2019-01-17 4 52 29" src="https://user-images.githubusercontent.com/37871541/51303289-48b91e80-1a78-11e9-9ed6-3de0e34c3712.png">



* 그래서 이런식으로 알려줘야한다!



* 자 그런데, 우리는 Hello world를 출력하는 app을 만들고 싶은거야.
* 우리는 웹프로그래밍을 하고 있으니까 웹창이 **딱!** 하고 뜨면 되겠지.
* 그걸 App폴더에서 해줘야해.
* 그럼 그걸 보여줄 Html 파일을 만들어야 겠지.
* 그걸 담는 공간이 templates 폴더야.
* 폴더를 만들어서 보관하는 이유는 여러개가 생길수도 있으니까 그런거야.



<img width="800" alt="2019-01-17 4 57 23" src="https://user-images.githubusercontent.com/37871541/51303517-f7f5f580-1a78-11e9-945a-368e9f52edbb.png">



* 쉽게 말하면 누군가한테 과일을 주는 상인이야. 이걸 상인 app이라 생각해보자.
* 그러면 나는 사과 오렌지 포도의 과일을 가지고 있어.  이게 templates 폴더에 들어가 있는거야.
* 그러면 고객이 왔을 때 과일을 주고 돈받는게 내 목적인데
* 고객이 사과달라하면 사과를 주고 오렌지달라하면 오렌지를 줘야겠지.
* 그렇게 어떻게 할거냐. 즉, 어떤 화면을 보여줄거냐? 하는 고민을 view.py로 관리하는 거야.
* 이건 함수겠지. 어떤 입력에 따라 어떤 걸 줘야되는 거니까!



<img width="800" alt="2019-01-17 4 57 41" src="https://user-images.githubusercontent.com/37871541/51303529-0217f400-1a79-11e9-8ed4-2fcea54a876a.png">



* 자 그런데 우리같은 과일 상인은 한곳만 있는게 아니야.
* 우리 가게 오게하려면 광고를 하든 결국 내 가게 주소를 알려야겠지.
* 그럼 어떤 주소를 입력했을 때 우리가게가 보여지게 해야해.
* 그건 url.py라는 친구가 관리하는 거야.



<img width="800" alt="2019-01-17 5 00 02" src="https://user-images.githubusercontent.com/37871541/51303654-56bb6f00-1a79-11e9-8235-67d472c494c7.png">





### 마지막 정리

장고로 웹개발을 하고싶어!

1. 프로젝트 폴더를 만들어준다.
2. 프로젝트의 작은 구분인 app을 만든다.
3. 프로젝트한테 app이 만들어졌다고 알려준다. (setting.py)
4. 앱안에 어떤 html을 보여줄지 **templates** 폴더를 만들고 안에다가 넣는다.
5. 언제, 어떻게 보여질지에 대한 함수를 만든다. (view.py)
6. 마지막으로 해당 html 파일을 url로 연결해준다. (url.py)