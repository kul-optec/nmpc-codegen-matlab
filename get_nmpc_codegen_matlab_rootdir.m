function rootdir = get_nmpc_codegen_matlab_rootdir()
rootdir = which('get_nmpc_codegen_matlab_rootdir');
tokens = strsplit(rootdir, 'get_nmpc_codegen_matlab_rootdir.m');
rootdir = tokens{1};