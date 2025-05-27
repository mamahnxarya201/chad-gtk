project('chads', 'c',
  version: '0.1.0',
  meson_version: '>= 1.0.0',
  default_options: ['warning_level=2', 'c_std=gnu11']
)

gnome = import('gnome')
i18n = import('i18n')

config_h = configuration_data()
config_h.set_quoted('GETTEXT_PACKAGE', 'chads')
configure_file(output: 'config.h', configuration: config_h)

add_project_arguments('-include', 'config.h', language: 'c')

subdir('src')
subdir('po')
