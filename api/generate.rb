require_relative './fizz_buzz/application/fizz_buzz_service.rb'

Handler =
  Proc.new do |req, res|
    number = req.query['number']
    service = FizzBuzz::Application::FizzBuzzService.new

    res.status = 200
    res['Content-Type'] = 'text/plain'
    res.body = service.generate(number)
  end
