%-----------------------------------------------------------------------
% Incluir los residuales de solamente los sujetos NORMALES, 
%-----------------------------------------------------------------------
matlabbatch{1}.spm.util.imcalc.input = {
                                        '/home/labneuroimage/DATA/vbm/wmaps/Res_0001.nii,1'
                                        '/home/labneuroimage/DATA/vbm/wmaps/Res_0002.nii,1'
                                        '/home/labneuroimage/DATA/vbm/wmaps/Res_0003.nii,1'
                                        '/home/labneuroimage/DATA/vbm/wmaps/Res_0004.nii,1'
                                        };
matlabbatch{1}.spm.util.imcalc.output = 'RES_std';
matlabbatch{1}.spm.util.imcalc.outdir = {'/home/labneuroimage/DATA/vbm/wmaps'};
matlabbatch{1}.spm.util.imcalc.expression = 'std(X)';
matlabbatch{1}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{1}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{1}.spm.util.imcalc.options.mask = 1;
matlabbatch{1}.spm.util.imcalc.options.interp = 1;
matlabbatch{1}.spm.util.imcalc.options.dtype = 4;
