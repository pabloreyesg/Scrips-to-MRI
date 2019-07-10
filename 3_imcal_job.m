% Pablo Reyes 1th step to w-scores
% info pabloreyesg@gmail.com
%-----------------------------------------------------------------------
% En este ejemplo se debe reemplazar la imagen i1 y que vendria siendo la del paciente,
% se deben cambiar los valores para cada sujeto dado que no esta en loop, esta es la verision manual
%-----------------------------------------------------------------------
matlabbatch{1}.spm.util.imcalc.input = {
                                        '/home/labneuroimage/DATA/vbm/smwp1nrsDFT00051.nii,1'
                                        '/home/labneuroimage/DATA/vbm/wmaps/beta_0001.nii,1'
                                        '/home/labneuroimage/DATA/vbm/wmaps/beta_0002.nii,1'
                                        '/home/labneuroimage/DATA/vbm/wmaps/RES_std.nii,1'
                                        };
matlabbatch{1}.spm.util.imcalc.output = 'wmap';
matlabbatch{1}.spm.util.imcalc.outdir = {'/home/labneuroimage/DATA/vbm/wmaps/'};
matlabbatch{1}.spm.util.imcalc.expression = '(i1-((i3.*65)+i2))./i4';
matlabbatch{1}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{1}.spm.util.imcalc.options.dmtx = 0;
matlabbatch{1}.spm.util.imcalc.options.mask = 0;
matlabbatch{1}.spm.util.imcalc.options.interp = 1;
matlabbatch{1}.spm.util.imcalc.options.dtype = 4;
