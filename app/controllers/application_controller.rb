class ApplicationController < ActionController::API
  # before_action :authorized
  #
  # def encode_token(payload)
  #   JWT.encode(payload,'737215(tetr|s)BOBsnobbledy')
  # end
  #
  # # def decode_token(token)
  # #   JWT.decode(token,'737215(tetr|s)BOBsnobbledy')[0]
  # # end
  #
  # def auth_header
  #   request.headers['Authorization']
  # end
  #
  # def decoded_token
  #   if auth_header
  #     token = auth_header.split(' ')[1]
  #     begin
  #       JWT.decode(token, '737215(tetr|s)BOBsnobbledy', true, algorithm: 'HSA256')
  #     rescue JWT::DecodeError
  #       nil
  #     end
  #   end
  # end
  #
  # def current_user
  #   if decode_token
  #     user_id = decoded_token()[0]["user_id"]
  #     user = User.find(user_id)
  #   end
  # end
  #
  # def logged_in?
  #   !!current_user
  # end
  #
  # def authorized
  #   render json: { message: "please log in"}, status: :unauthorized unless logged_in?
end
