project('STMatrix',
        ['c', 'cpp'],
         default_options : [
         'warning_level=3',
         'werror=false',
         'debug=true',
         'c_std=c17',
         'build.c_std=c17'
         ],
         version: '0.1')

# inc = include_directories('include')

# option('peripherals', type : 'array', choices : ['adc', 'bus', 'comp', 'cordic', 'cortex', 'crc', 'crs', 'dac', 'dma', 'dmamux', 'exti', 'fmac', 'fmc', 'gpio', 'hrtim', 'i2c', 'iwdg', 'lptim', 'lpuart', 'opamp', 'pwr', 'rcc', 'rng', 'rtc', 'spi', 'system', 'tim', 'ucpd', 'usart', 'usb', 'utils', 'wwdg'], value : [])

add_project_arguments('-DUSE_FULL_LL_DRIVER', language: 'c')
add_project_arguments('-DSTM32G474xx', language: 'c')
stm_sdk_options  = [
  'chip=STM32G474xx',
  'peripherals=gpio,adc'
  ]
stm_sdk_project = subproject('sdk', default_options: stm_sdk_options)
stm_sdk = stm_sdk_project.get_variable('stm_sdk_dep')

freertos_options = [
  'arch=ARM_CM4F',
  'memmang=heap_2',
  'cpu_clock_hz=64000000',
  'tick_rate_hz=1000',
  'total_heap_size=10000',
  'support_static_allocation=true',
  'use_malloc_failed_hook=false',
  'check_for_stack_overflow=false',
  'use_timers=true'
  ]

freertos_project = subproject('FreeRTOS',
                              default_options: freertos_options,
                              )
freertos = dependency('freertos')

# Linker settings
link_file = files(['linker/STM32G474RETx_FLASH.ld'])

linker_script_flags = ['-T' + '../linker/STM32G474RETx_FLASH.ld']

linker_script_flags += '-Wl,-Map,output.map'


subdir('src')
# subdir('test')

# Process source files
clangtidy_files = []
