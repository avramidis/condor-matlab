function example(name, a, b)
%EXAMPLE Example matlab function.
%
% Syntax:  example(name, a, b)
%
% Inputs:
%   name  - Input name
%   a		  - Input a
%   b		  - Input b
%
% Outputs:
%   none
%
% Example:
%   example(a, b)
%   This example print the input values.
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none
%
% See also: none
%
% $Author: Eleftherios Avramidis, Department of Plant Sciences, Cambridge $
% $Email: el.avramidis@gmail.com, ea461@cam.ac.uk $
% $Copyright: MIT License $
% $Date: 2017/12/06 $
% $Version: 1.0 $

tic
disp(['The first value is: ' num2str(a)])
disp(['The second value is: ' num2str(b)])

save([num2str(name) '_a.mat'],'a')
save([num2str(name) '_b.mat'],'b')
toc

end
