class Takeaway
	attr_accessor :dishes

	def initialize
		dishes =[]
		@dishes = dishes
	end

	# def dishcount(x)
 #        k=Hash.new(0)
 #        self.each{|x| k[x]+=1 }
 #        k
 #    end

	
    def your_order
		@dishes << "sausages" << "hamburger" << "tofu" << "carrot pizza"
		@list = {@dishes[0] => 4.30 ,@dishes[1] => 3.20 , @dishes[2] => 3.40 , @dishes[3] => 5}
		    
		@order = %w[sausages hamburger hamburger tofu]
		

		@counts = Hash.new(0)
		@order.each { |name| @counts[name] += 1 }

		@sum= 0 

		if 
		puts "The order was placed. It will be delivered in one hour from now."

		@order.each do |d|
			if @list.include?(d)
			puts "dish: #{d} price: #{@list[d]} quantitiy: #{@counts[d]}" 
			@sum << @list[d]
			end
			
		end

		require 'rubygems'
		require 'twilio-ruby'

		@account_sid = 'AC4a881869c532d92f055c5c6d6b88a3e2'
		@auth_token = 'f740731047cb0ab6bcaf440b69e812a5'


		@client = Twilio::REST::Client.new(@account_sid, @auth_token)


		@account = @client.account
		@message = @account.sms.messages.create({:from => '+441925321642', :to => '+491722577800', :body => 'Thanks for your order. Your order was placed and will be delivered within the next hour.'})
		puts @message
	end

end


takeaway = Takeaway.new
takeaway.your_order


