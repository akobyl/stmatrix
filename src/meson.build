stmatrix_sources = [
    'main.c',
]

stmatrix = executable('stmatrix_app',
                       stmatrix_sources,
                       dependencies : [
                         stm_sdk,
                         freertos,
                       ],
                         name_suffix: 'elf',
                       install : false,
                       link_args: linker_script_flags,
                       )
