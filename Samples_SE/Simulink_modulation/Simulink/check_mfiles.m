% (c) Aldec, Inc.
% All rights reserved.

% Last modified: $Date: 2009-06-05 12:09:45 +0200 (Fri, 05 Jun 2009) $
% $Revision: 115621 $

function [noMfile] = check_mfiles()
if (not(exist('top_demodulator.m','file') && exist('mult.m','file')))
    noMfile=1;
else
    noMfile=0;
end
