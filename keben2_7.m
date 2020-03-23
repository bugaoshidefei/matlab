F_handle=@cos;
X=0:0.25*pi:2*pi;
F_handle(X)
F_handla=@exp;
functions(F_handla)
isa(F_handla,'function_handle')
isequal(F_handla , F_handle)