%%%%%% ���Դ�Ƭ�׸����װ��İ�����%%%%%%%%%%%%%%%%%%%%%
%%%%%%% http://w3.jbzcjsj.pw/pw/thread-htm-fid-112.html %%%%%%%%%
clc; clear ;
%% ���ݴ������ı���01����������ת�����߼�����
A = textread('bite_data.txt','%s');
A = A{1};
B1 = logical(A-48);
%% ���߼����������ƶ�һλ�����һλ������ԭ�����ݲ��� 
for i=2:length(B1)
    if i==length(B1)
        B2(i-1)= B1(i);
        B2(i)= B1(i);
    else
        B2(i-1)=B1(i);
    end       
end
%% ��ԭ��������λ�ƹ�������ݰ�λ��򣬻�ô���0-1��0-1ת����λ�á�
C = bitxor(B1,B2);
D = find(C==1);
%% ��0-1 ��1-0 ���ֲ�ͬת��λ�÷ֿ���
k = length(D);
if B1(D(1)==0)
    Check0_1 = D(1:2:k);
    Check1_0 = D(2:2:k);
else
    Check1_0 = D(1:2:k);
    Check0_1 = D(2:2:k);
end


