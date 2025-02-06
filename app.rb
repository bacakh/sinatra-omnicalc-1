require "sinatra"
require "sinatra/reloader"

get("/square_root/new") do
  erb(:new_sq_root_calc)
  end

get("/square_root/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 0.5
  
  erb(:sq_root_results)
  end

  get("/square/new") do
    erb(:new_square_calc)
    end

    get("/square/results") do
      @the_num = params.fetch("users_number").to_f

      @the_result = @the_num ** 2
      
      erb(:square_results)
      end


      get("/payment/new") do
        erb(:new_pay)
        end
    
        get("/payment/results") do
          @apr = params.fetch("users_apr").to_f
          @year = params.fetch("users_yr").to_f
          @pri = params.fetch("users_p").to_f
    
          @r = @apr/1200
          @n = @year * 12
          @payment = (@pri* @r)/(1-((1+@r)**(-@n)))
          
          erb(:payment_results)
          end
          
          get("/random/new") do
            erb(:rand_calc)
            end
        
            get("/random/results") do
              @minu = params.fetch("users_min").to_f
              @maxi = params.fetch("users_max").to_f
        
              @the_random = rand(@minu..@maxi)
              
              erb(:rand_results)
              end         
get("/") do
  "
  <p>Enter a number</p>

  "
end
