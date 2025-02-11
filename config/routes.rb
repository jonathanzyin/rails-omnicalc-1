Rails.application.routes.draw do

  get("/square/new", { :controller => "math", :action => "square"})
  get("/square/result", { :controller => "math", :action => "square_result" })
  
  get("/square_root/new", { :controller => "math", :action => "square_root"})
  get("/square_root/result", { :controller => "math", :action => "square_root_result" })

  get("/payment/new", { :controller => "math", :action => "payment"})
  get("/payment/result", { :controller => "math", :action => "payment_result" })

  get("/random/new", { :controller => "math", :action => "random"})
  get("/random/result", { :controller => "math", :action => "random_result" })

  get("/", { :controller => "math", :action => "home"})

end
