sum = 0;
for m = -2:10000
    sum = sum + 1/(m*m + 3000);
end
fprintf(1,'sum equals %1.6f\n',sum);

m = 0;
satisfied = 0;
while(satisfied == 0)
    if(1/(m*m + 3000) < 0.0001)
        fprintf(1,'m equals %d\n',m);
        satisfied = 1;
    end
    m = m + 1;
end
