require_relative '../../domain/model/fizz_buzz_value.rb'
require_relative '../../application/service/fizz_buzz_value_command.rb'
require_relative '../../domain/type/fizz_buzz_type.rb'
require_relative '../../domain/type/fizz_buzz_type_01.rb'

module FizzBuzz
  module Application
    module Service
      class FizzBuzzService
        def generate(number)
          command =
            FizzBuzz::Application::Service::FizzBuzzValueCommand.new(
              FizzBuzz::Domain::Type::FizzBuzzType.create(
                FizzBuzz::Domain::Type::FizzBuzzType::TYPE_01
              )
            )
          result = command.execute(number.to_i)
          result.to_json
        end
      end
    end
  end
end