Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, #ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
    '1015482664789-43pvjm1uobmjt7p6qg4rhg4gav2fjipk.apps.googleusercontent.com',
    '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',
    {:client_options => {:ssl => {:verify => false}}}
end
