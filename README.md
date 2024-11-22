# README

Serviço de Streaming baseado em Reuso de Softeware e metodologias ageis

Criados microserviços independentes de: Notificação, Autenticação, Registro de Mídia(Vídeo, conteúdo para o catálogo) e pagamento

<li>POST /authenticate
<li>POST /notifications
<li>POST /videos
<li>POST /subscriptions

Presença também de CRUD de operações básicas para usuários, vídeos e pagamentos

<h2>Caminhos para os serviços:</h2>
<ul>
  <li>AUTENTICAÇÃO: <a href="https://github.com/leonardo-vinicius/streaming_project/tree/master/app/services/authenticate/json_web_token.rb">app/services/authenticate/json_web_token.rb</a></li>
  <li>VÍDEO: <a href="https://github.com/leonardo-vinicius/streaming_project/tree/master/app/services/video_service.rb">app/services/video_service.rb</a></li>
  <li>PAGAMENTO: <a href="https://github.com/leonardo-vinicius/streaming_project/tree/master/app/services/payment_service.rb">app/services/payment_service.rb</a></li>
  <li>NOTIFICAÇÃO: <a href="https://github.com/leonardo-vinicius/streaming_project/tree/master/app/services/notification_service.rb">app/services/notification_service.rb</a></li>
</ul>
