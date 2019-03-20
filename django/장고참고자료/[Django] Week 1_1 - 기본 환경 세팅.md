# Week 1_1 - 기본 환경 세팅

## 가상환경이란?

* 먼저, 컴퓨터를 무언가를 담을 수 있는 큰 통이라 생각하자.
* 여기에 각종 음료를 담을 것인데, 콜라, 오렌지 주스, 포도 주스를 담아볼 거다.
* 그러면 검은색 노란색 파란색이 섞여 그지같은 모양을 하고 있을 거다.
* 우리는 그렇게 음료먹기를 선호하지(?) 않는다.
* 그래서! 나눠서 담을 수 있는 것이 필요하다!
* 여러개의 다른 통을 만들어주는 것을 가상환경이라 한다.



<img width="800" alt="2019-01-17 2 17 23" src="https://user-images.githubusercontent.com/37871541/51297179-9d519f00-1a62-11e9-99bf-a04d815d5d1a.png">





## Django Project

* 장고를 사용한 프로젝트를 만들고 싶다면 이제,
  1. 통을 만든다. (Django project) 가상환경을 만들어준다.
  2. 그 통안에 넣을 녀석들을 채운다.
  3. 장고를 사용할 것이기 때문에 장고 패키지를 넣어주어야 한다.



### HOW?

* pip 패키지
  * 파이썬으로 작성된 패키지 소프트웨어를 **설치 관리** 하는 패키지 관리 시스템



<img width="800" alt="2019-01-17 3 12 46" src="https://user-images.githubusercontent.com/37871541/51299044-5a93c500-1a6a-11e9-9183-9a4038a6d23e.png">





## 실습

1. 환경 세팅

   * open folder (폴더 만들어준다.)

     <img width="1024" alt="2019-01-17 3 19 51" src="https://user-images.githubusercontent.com/37871541/51299317-6fbd2380-1a6b-11e9-85b6-050bc9ef8517.png">

   * terminal 킨다.

     <img width="800" alt="2019-01-17 3 20 49" src="https://user-images.githubusercontent.com/37871541/51299354-8b282e80-1a6b-11e9-8d0f-81a5fea84f16.png">

   * python version 확인 (터미널 창 입력)

     ```
     $ python --version
     
     Python 3.6.5 :: Anaconda, Inc. // 제가 아나콘다 받아서 이렇게 뜬겁니다. 아닐 수 있어요
     ```

   * 가상환경 설정

     ```
     $ python -m venv myvenv
     			(vertual environment) (내가 짓고 싶은 가상환경 이름)
     ```

     <img width="1093" alt="2019-01-17 3 27 02" src="https://user-images.githubusercontent.com/37871541/51299619-7304df00-1a6c-11e9-9e22-b3feb6bc647b.png">

   * 가상환경 실행

     ```
     $ source myvenv(가상환경 이름)/Scripts/activate
     
     $ source myvenv(가상환경 이름)/bin/activate // 맥
     ```

     <img width="1050" alt="2019-01-17 3 34 12" src="https://user-images.githubusercontent.com/37871541/51299931-72207d00-1a6d-11e9-918b-6c40a9bdb0b3.png">

   * (가상환경 종료)

     ```
     $ deactivate
     ```

   * 장고 설치 ( 처음에는 가상환경에 들어가서 설치할 것! )

     ```
     $ pip install django
     ```

     * 폴더에 띄어쓰기 쓰면 오류 뜰 수 있다.

   * 장고 삭제 

     ```
     $ pip uninstall django
     ```


