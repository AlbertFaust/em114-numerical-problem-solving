clear all;
the_data = load('lab0_data.res');
col_2 = the_data(:,2);
S = 0;
for ct = 1:1000
  S = S + col_2(ct)
end
fprintf(1,'S equals %d\n',S);
