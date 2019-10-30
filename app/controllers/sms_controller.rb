class SmsController < ApplicationController
    def new
      
    end

    def create
        @sms = Sm.new(sms_params);
        account_sid = 'AC1540b23ac2a138653f7070abd20f5caa'
        auth_token = 'e63405f59f96f6eed2e9f864b4529a0a'
        @client = Twilio::REST::Client.new account_sid, auth_token
      
        @client.messages.create({
          from: '+13346506011',
          to: "+#{@sms.telephone}",
          body: "#{@sms.message}"
        })
    end

    private
        def sms_params
            params.require(:sms).permit(:telephone, :message)
        end
 
end
