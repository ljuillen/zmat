function [output, info]=zmat(input, iscompress, method)
%
% output=zmat(input)
%    or
% [output, info]=zmat(input, iscompress, method)
%
% A portable data compression/decompression toolbox for MATLAB/GNU Octave
% 
% author: Qianqian Fang <q.fang at neu.edu>
% date for initial version: 04/30/2019
%
% input:
%      input: a string, int8 or uint8 array
%      iscompress: (optional) if iscompress is 1, zmat compresses the input, 
%             if 0, it decompresses the input. Default value is 1.
%      method: (optional) compression method, currently, zmat supports the below methods
%             'zlib': zlib/zip based data compression (default)
%             'gzip': gzip formatted data compression
%
% output:
%      output: a uint8 row vector, storing the compressed or decompressed data
%      info: (optional) a struct storing additional info regarding the input data, may have
%            'type': the class of the input array
%            'size': the dimensions of the input array
%
% note: This function only works for matlab
%
% example:
%
%   [ss, info]=zmat(uint8(eye(5)))
%   orig=zmat(ss,0)
%   orig=reshape(orig, info.size)
%
% -- this function is part of ZMAT toolbox (http://iso2mesh.sf.net/jsonlab)
%