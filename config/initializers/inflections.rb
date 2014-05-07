# Be sure to restart your server when you modify this file.

ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'ator', 'atores'
  inflect.irregular 'diretor', 'diretores'
  inflect.irregular 'pais', 'paises'
  inflect.irregular 'midia', 'midias'
  inflect.irregular 'roteirista', 'roteiristas'
end

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end
