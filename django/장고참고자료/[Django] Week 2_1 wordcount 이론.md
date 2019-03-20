# [Django] Week 2_1 wordcount 이론



## Wordcount page

* 사용자가 텍스트를 넣으면 해당 글자가 몇번나왔는지 제공해주는 페이지
* about을 누르면 어떤 프로그램인지 정보가 출력됨





## Project Sketch

### 우리가 만들어야 하는 페이지

1. home.html
   * about 페이지와 링크로 연결해준다.
   * 사용자로부터 입력을 받는다.
   * 제출버튼

2. about.html
   * home 페이지와 링크로 연결
   * about에 대한 내용이 적힌다.

3. result.html
   * home에서 입력받은 데이터를 처리한 값을 받아 출력한다.



### 우리가 만들어야 하는 함수

* views.py
  * home을 띄우는 함수
  * about을 띄우는 함수
  * Result에 전달할 함수 (home에서 입력받은 데이터를 처리하는 함수)



### 우리가 만들어야 하는 URL

1. home을 띄우는 url

   뒤에 아무것도 안붙는 url (www.FWEF.com)

2. about을 띄우는 url

   (www.SDFSF.com/about)

3. result를 띄우는 url

   (www.sfsdf.com/result)



### Template 언어

원래 html에서 파이썬 언어같은 것 쓰지 못한다.

여기서 장고에서 가능하게 해주는 언어를 template언어 라고 한다.



1. **템플릿 변수**

   ```html
   {{ python_variable}}
   ```



   **해당 파이썬 변수를 html 파일에 담아 화면에 출력하라 **



2. **템플릿 필터**

   ```python
   {{ python_value | filter}}
   ```



   ***Example***

   ```python
   {{ value | length}} # value의 길이 변환
   {{ value | lower}} # value를 소문자로 출력
   ```



3. **템플릿 태그**

   * html상에서 파이썬 문법 사용

   * url생성 등의 기능 제공


   ```python
   {% tag %}
   	# 태그 내용
   {% endtag %} # 끝나는 태그가 있어야 한다.
   ```



   ***Example1***

   * 파이썬 파일

   ```python
   Aclass = ["민철", "철수", "영희"]
   ```



   * HTML

   ```html
   number of student = {{Aclass | length}}
   {% for students in Aclass %}
   	{{ students }}   // 출력해라
   {% endfor %}
   ```

   즉, html 안에서 파이썬 코드 사용할 수 있다.



   ***Example2***

   ```html
   {% url 'url_name' %}
   ```


4. **템플릿 상속**

   ~~나중에~~





