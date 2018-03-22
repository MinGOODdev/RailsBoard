# RoR CRUD

## form helper의 공통점
* 자동으로 CSRF 방지 코드 삽입
* 기본 method는 POST

## for_tag (form helper)
* 범용적인 입력 양식(O) / 특정한 모델 편집(O) ex) 검색 키워드, 조건

## form_for (form helper) 매우 중요하다
* 범용적인 입력 양식(X) / 특정한 모델 편집(O) ex) 게시물 생성 및 수정
* 모델의 속성 이름으로 input을 지정해야 한다.
* 모델 객체 (post)가 신규 or 이미 저장 완료되었는지를 판단해 적절한 url로 안내한다.
* @post = Post.new면 create action으로
* @post = Post.find(params[:id])면 update action으로 알아서 보낸다.<br>
<%= form_for Post.find(id) url: post_path, method: 'put' do |f| %><br>
　　　　<%= input들 %><br>
<% end %>