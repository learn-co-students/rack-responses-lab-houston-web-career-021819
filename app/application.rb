require 'date'
class Application
    def call(env)
        time = Time.now.hour
        resp = Rack::Response.new
        if time >= 0 && time < 12
            resp.write "Good Morning!"
        elsif time > 12 && time < 24
            resp.write "Good Afternoon!"
        end


        resp.finish
    end


end