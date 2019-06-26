ActionMailer::Base.smtp_settings = {
	:address	=> 'smtp.gmail.com',
	:port		=> 587,
	:user_name	=> 'railscasts',
	:password	=> 'secret',
	:authentication => 'plain',
	:enable_starttls_auto =>  true
}
