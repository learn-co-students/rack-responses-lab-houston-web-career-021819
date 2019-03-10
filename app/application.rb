class Application
    def call(env)
        resp = Rack::Response.new
        time = Time.now.hour
        if time  >= 0 && time < 12
            resp.write "Morning!\n"
        elsif time > 12 && time < 24
            resp.write "Afternoon!\n"
        end
      resp.finish
    end
end