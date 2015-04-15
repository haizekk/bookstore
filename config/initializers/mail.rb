MANDRILL_API_KEY = "bu4HYW9StEf4KjO_wKoZjw"

ActionMailer::Base.smtp_settings = {
    address: "smtp.mandrillapp.com",
    port: 587,
    enable_starttls_auto: true,
    user_name: "badoi.raluca@gmail.com",
    password: MANDRILL_API_KEY,
    authentication: "login"
}

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default charset: "utf-8"
