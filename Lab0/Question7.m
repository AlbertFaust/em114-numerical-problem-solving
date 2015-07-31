clear all;
the_data = load('lab0_data.res');
col_2 = the_data(:,2);
sum = 0;
for ct = 1:1000
  sum = sum + col_2(ct)
end
