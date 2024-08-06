class ApplicationMailer < ActionMailer::Base
  helper :anmol
  default from: "from@example.com"
  layout "mailer"
end
