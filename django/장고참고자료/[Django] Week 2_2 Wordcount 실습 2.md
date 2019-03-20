# [Django] Week 2_2 Wordcount 실습 2

* 결과 보여주는 html 만들기

  result.html

* 여기 안에는 이런 식으로 적자.

   ```html
    <h1>당신이 입력한 텍스트는 <!-- 총단어수 --> 로 구성되어 있습니다. </h1> 
   <a href = "{% url 'home' %}"> 다시 하기 </a> 
   <br>
   <h2> 입력한 텍스트 : </h2>
   <!-- 입력받은 전체 텍스트 -->
   
   <h2> 단어 카운트 : </h2>
   <!-- '단어' - '단어가 나온 횟수' -->
   ```



 * 주석된 부분을 함수로 부터 전달받아서 넣어줄거야.

* 함수는 views.py로 부터!

* 근데 result.html 만들었으니까 추가해주자.

* views.py

  ```python
  def about(request):
     return render(request, 'result.html')
  ```


* url.py

  ```python
  path('result/', wordcount.views.result, name = "result"),
  ```







## 정보를 보내주자.

1. home.html 에서 작성한 글을 보낼거야

2. 이건 form 태그 action이 담당해

3. 이 안은 url이 적힐 거니까 템플릿 태그로 작성하자.

   ```html
   <form action = "{% url 'result'%}" >
       <textarea cols = "40" rows = "30" name = "fulltext"> 
           <!--이 textarea 이름이 fulltext이다! -->
       
       </textarea>
       <input type = "submit" value = "Count!"
   </form>
   ```

4. 자 이 제출 버튼을 누르게 되면 url.py 에 적은 result 라는 이름으로 된 경로가 불러오게 되고

   이 경로의 요청이 들어왔으므로 views.py의 result 함수가 실행된다.

5. 자, 그러면 여기서 요청이 들어왔을 때, 이번에는 데이터까지 같이 넘어온다.

   여기서 이 값을 받아줘야 한다.

   ```python
   def result(request):
       text = request.GET['fulltext']			# 이놈아가 중요!!!
       return render(request, 'result.html')
   
   ```

6. 자 근데 얘를 다시 보내줘야하잖아?

   여기서 render의 3번째 인자의 정체가 드러난다.

    3번째 인자에는 딕셔너리가 들어간다.

   ```python
   def result(request):
       text = request.GET['fulltext']			
       return render(request, 'result.html', {'full': text}) #  full(키) , text(값)
   
   ```

7. 우리가 하고 싶은 것은 full 을 result.html에서 보여주고 싶다!

   즉, 파이썬 변수를 보여주고 싶다!

   템플릿 변수 사용!

   result.html에,

   ```html
   
   <h2> 입력한 텍스트 : </h2>
   {{full}}		<!-- 키 값을 적어준다 -->
   
   ```

8. 다음은 총 단어수 차례다.

   몇 개의 단어가 있는 지 어떻게 알 수 있을까?

   공백기준으로 단어는 발생하니까! 이거 기준으로 나누자.

   그다음에 리스트에 얘를 넣은다음에

   리스트의 개수를 출력해주면 총 단어수!

   이걸 하기 위해 views.py로 가서 작성해주자.

   ```python
   def result(request):
       text = request.GET['fulltext']
       words = text.split()
       return render(request, 'result.html', {'full': text,  : 'total'' : len(words)}) 
   ```

   지금 GET으로 받은 text를 default 값인 " " 기준으로 자른 뒤

   값을 넘겨주기 위해 딕셔너리로 total이라는 키값을 새로 지정해주었다. 

   이 키 값은 words라는 리스트의 크기를 가진다.

9. 이제 result.html로 가서 총 단어 수 대신 {{total}}을 적어준다.

   ```html
   <h1>당신이 입력한 텍스트는 {{total}} 로 구성되어 있습니다. </h1>
   ```

10. 이제는 단어 - 단어가 나온 횟수 차례다!

    딕셔너리를 사용하자...!

    ```python
    dic = {나온 단어 : 나온 수}
    ```

    처음 나온 단어는 키 값으로 넣어두고

    두번 이상나오는 단어는 나온수를 증가시키자.

11.  views.py로 가자.

    ```python
    word_dic = {}
    
    for word in words: 			# words 배열 안에 들은 원소가 이미 문자형이다.
        if word in word_dic:
            # increasing
            word_dic[word] += 1
        else:
            # add to dictionary
            word_dic[word] = 1
    ```

12. 근데 여기서 우리가 result.html로 출력하고 싶은 것은 이 딕셔너리에서

    각각의 쌍 자체를 보내주고 싶다!

    ```python
    .items()
    ```

    이 함수를 사용하면 된다!

    결국 딕셔너리에 word_dic.items()를 쓰면 된다.

    ```python
    def result(request):
        text = request.GET['fulltext']
        words = text.split()
        word_dic = {}
    
    	for word in words: 			# words 배열 안에 들은 원소가 이미 문자형이다.
        	if word in word_dic:
            	word_dic[word] += 1
        	else:
            	# add to dictionary
            	word_dic[word] = 1
        return render(request, 'result.html', {'full': text,  : 'total'' : len(words), 'dictionary' : word_dic.items()}) 
    ```

    이걸 result.html에다가 사용해보자

    ```html
    {{dictionary}}
    ```



13. 출력해보면 굉장히 정직하게 딕셔너리 자체가 출력될 것이다.

    우리는 이걸 원하는 게 아니고 하나씩 출력하기를 원하니까 

    반복문을 사용하자

    그런데 html 안에서 쓸거기 때문에 템플릿 변수를 사용해줘야 한다.

    ```html
    {% for word, howmany in dictionary %}
    {{word}} : {{howmany}}
    <br>
    
    {% endfor %}
    ```

    word, how many 이건 문법이니까 암기하고 사용하도록 하자.

14. 이렇게 하고 서버를 실행시키면!

    끝~!