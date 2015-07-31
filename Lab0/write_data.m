fp = fopen('data2.res','w');
for(ct=1:4)
  fprintf(fp,'%1.2f \n',a(ct,1));
end
