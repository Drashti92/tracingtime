namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    #Scheduled to run at Sunday at 5 p.m
    #Iterate over all employees
    #Skip adminusers
    #send a message that has link that has instructions and a link to log time
  
  #User.all.each do |user|
   # SmsTool.send_sms()
 # end
 

    
  end

end
