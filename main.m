%%%%%% 仅以此片献给我亲爱的阿龙兄%%%%%%%%%%%%%%%%%%%%%
%%%%%%% http://w3.jbzcjsj.pw/pw/thread-htm-fid-112.html %%%%%%%%%
clc; clear ;
%% 数据处理，将文本的01二进制数据转换成逻辑数据
A = textread('bite_data.txt','%s');
A = A{1};
B1 = logical(A-48);
%% 将逻辑数据向左移动一位，最后一位数据用原先数据补上 
for i=2:length(B1)
    if i==length(B1)
        B2(i-1)= B1(i);
        B2(i)= B1(i);
    else
        B2(i-1)=B1(i);
    end       
end
%% 将原先数据与位移过后的数据按位异或，获得触发0-1或0-1转换的位置。
C = bitxor(B1,B2);
D = find(C==1);
%% 将0-1 和1-0 两种不同转换位置分开。
k = length(D);
if B1(D(1)==0)
    Check0_1 = D(1:2:k);
    Check1_0 = D(2:2:k);
else
    Check1_0 = D(1:2:k);
    Check0_1 = D(2:2:k);
end


