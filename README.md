# README

Serviço de Streaming baseado em Reuso de Softeware e metodologias ageis

Criados microserviços independentes de: Notificação, Autenticação, Registro de Mídia(Vídeo, conteúdo para o catálogo) e pagamento

POST /authenticate
POST /notifications
POST /videos
POST /subscriptions

Presença também de CRUD de operações básicas para usuários, vídeos e pagamentos

<h2>Caminhos para os serviços:</h2>
AUTENTICAÇÃO: app/services/authenticate/json_web_token.rb
VÍDEO: app/services/video_service.rb
PAGAMENTO: app/services/payment_service.rb
NOTIFICAÇÃO; app/services/notification_service.rb
