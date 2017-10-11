function [ v ] = extraction( a )

  u1 = mean(a(1:5,1:3));
  u2 = mean(a(end-15:end,1:3));

  xy = corr(a(:,1),a(:,2));
  xz = corr(a(:,1),a(:,3));
  yz = corr(a(:,2),a(:,3));

  meds = median(a);
  sd = std(a(:,1:3));

  bigger = [ sum(a(:,1)>0)/length(a)  sum(a(:,2)>0)/length(a)  sum(a(:,3)>0)/length(a) ];
  smaller = [ sum(a(:,1)<0)/length(a)  sum(a(:,2)<0)/length(a)  sum(a(:,3)<0)/length(a) ];

  v = [u1 u2 xy xz yz bigger smaller meds];

end
