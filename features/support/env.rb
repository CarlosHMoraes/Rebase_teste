require "calabash-cucumber/cucumber"
require "calabash-cucumber/calabash_steps"
require "calabash-cucumber/wait_helpers"
require "calabash-cucumber/operations"
require "calabash-cucumber/ibase"
require "calabash-cucumber/launcher"
require "yaml"
require "pry"
require "pry-nav"
require "faker"
require "cpf_faker"
require "boleto_bancario"

World(Calabash::Cucumber::Operations)

ENV['ENV'] = 'HI' unless ENV.key?'ENV'

ENV['APP'] = '~/Library/Developer/Xcode/DerivedData/SantanderBrasil-gsvuwsghibzehgdpdzkhpmpymfye/Build/Products/Debug-iphonesimulator/SantanderBrasil.app' unless ENV.key?'APP'

## Massa de dados
MASSA = YAML.load_file('./fixtures/default_data.yml')[ENV['ENV']]
## Mensagens
MENSAGENS = YAML.load_file('./fixtures/messages.yml')[ENV['ENV']]
