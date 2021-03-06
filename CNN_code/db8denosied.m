function y=db8denoised(val)
% Decompose Signal using the MODWT
% Generated by MATLAB(R) 9.9 and Wavelet Toolbox 5.5.
% Generated on: 27-Oct-2021 01:11:20
% Logical array for selecting reconstruction elements
levelForReconstruction = [true, true, true, true, true, true, true, false, false];
% Perform the decomposition using modwt
wt = modwt(val, 'db8', 8);
% Construct MRA matrix using modwtmra
mra = modwtmra(wt, 'db8');
% Sum along selected multiresolution signals
y = sum(mra(levelForReconstruction,:),1);
end
