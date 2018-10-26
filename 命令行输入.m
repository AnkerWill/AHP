A= [1	1/5	1/3
5	1	3	
3	1/3	1];
  P1=[1	3	5	4	7		
1/3	1	3	2	5		
1/5	1/3	1	1/2	2		
1/4	1/2	2	1	3		
1/7	1/5	1/2	1/3	1
];
P2= [1	1/7	1/3	1/5
7	1	5	2
3	1/5	1	1/3
5	1/2	3	1];
P3=[1	1	3	3
1	1	3	3
1/3	1/3	1	1
1/3	1/3	1	1];
[max(1),wA]= maxeigvalvec(A);
[max(2),wP1]= maxeigvalvec(P1);
[max(3),wP2]= maxeigvalvec(P2);
[max(4),wP3]= maxeigvalvec(P3);


[RIA,CIA]= sglsortexamine(max(1),A);
[RIP1,CIP1]= sglsortexamine(max(2),P1);
[RIP2,CIP2]= sglsortexamine(max(3),P2);
[RIP3,CIP3]= sglsortexamine(max(4),P3);

dw=zeros(5,3);
dw(1:5,1)=wP1;
dw(2:5,2)=wP2;
dw(1:4,3)=wP3;
CIC=[CIP1;CIP2;CIP3];
RIC=[RIP1;RIP2;RIP3];
tw=tolsortvec(wA,dw,CIC,RIC);


clear max;
[MAX,CHOICE] = max(tw);      	%×î¼ÑÑ¡Ôñ
CHOICE

