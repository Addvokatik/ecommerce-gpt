Rails.application.config.middleware.use OmniAuth::Builder do
     provider :google_oauth2, '908028487309-rafp8hkaj7986s88r72j3p3f2e30t2lu.apps.googleusercontent.com', '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'
   end