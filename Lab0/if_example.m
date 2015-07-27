counter = 0;
satisfied = 0;
while(satisfied == 0)
if(counter * counter - 20 * counter - 30 > 500)
fprintf(1,'Counter equals %d \n',counter);
satisfied = 1;
end
counter = counter + 1;
end
