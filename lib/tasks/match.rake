namespace :demo do
  desc "This is to send an email to users"
  task(:mail_users => :environment) do
    UserMailer.match_buddy(user).deliver!
  end
end
