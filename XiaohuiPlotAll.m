% Ϊ��ףɽ��������ѧ65����У�죬ʹ��MATLAB����ѧУУ��
% ��Ҫ˼·�ǣ��Ȼ�����Ȧ����Ȧ�����壬Ȼ����ơ�������
% ����ˣ����191�� �ϻ� ��� ��¢�� ��÷
% ָ����ʦ���Ͼ�ѧ-���ѧԺ
% ���ڣ�2021-10-18
clear;
clc;
figure;
ax = gca;
hold(ax,'on');
axis(ax,'equal','off',[-35,35,-35,35]) 
 rectangle('position',[0-19,0-19,38,38],'curvature',[1,1],'edgecolor','r','facecolor','[1,0.3,0.04]');
% ������Բ
plot(ax,30*exp(1i*(0:0.01:3*pi)),'Color',[1,0.3,0.04],'LineWidth',6)
% ������Բ
plot(ax,28.5*exp(1i*(0:0.01:3*pi)),'Color',[1,0.3,0.04],'LineWidth',1)
% ��С��Բ
plot(ax,20*exp(1i*(0:0.01:3*pi)),'Color',[1,0.3,0.04],'LineWidth',1)
circleWord = ' ɽ��������ѧ �� Shandong��Jianzhu��University ��';
text(ax,-6,-15,'1 9 5 6','FontName','����ֺ�','FontSize',14,'FontWeight','bold','Color',[1,1,1])
step = [5 5 5 5 5 5 5 ];
% ��ת�Ƕ�
R = [100 100-200/sum(step).*cumsum(step) linspace(-90,120,35)];
for ii = 1:length(circleWord)
    t = text(ax,0,0,circleWord(ii));
    if ii <8
        t.Position = [24.5*cosd(R(ii)+90) 24.5*sind(R(ii)+90)]; 
        t.FontName = '��̴իë������';
        t.FontSize = 25;
        t.FontWeight = 'bold';
        t.Color = [1,0.3,0.04];
    else
        t.Position = [24*cosd(R(ii)+270) 24*sind(R(ii)+270)];
        t.FontName = 'Times New Roman';
        t.FontSize = 20;
        t.FontWeight = 'bold';
        t.Color = [1,0.3,0.04];
    end
    t.Rotation = R(ii);
    t.HorizontalAlignment = 'center';
end
% �ڲ���������
line([0,-13.5],[-5,-14],'color','w','linestyle','-','lineWidth',7);
line([0,13.5],[-5,-14],'color','w','linestyle','-','lineWidth',7);
line([0,0],[-5,19.5],'color','w','linestyle','-','lineWidth',7);%zhong
line([0,12.5],[-1,-9.3],'color','w','linestyle','-','lineWidth',7);
line([0,-8],[-1,-6.3],'color','w','linestyle','-','lineWidth',7);%fan
line([0,12.5],[3,-5.3],'color','w','linestyle','-','lineWidth',7);
line([0,-8],[3,-2.3],'color','w','linestyle','-','lineWidth',7);
line([0,10.5],[7,0],'color','w','linestyle','-','lineWidth',7);
line([0,-8],[7,1.7],'color','w','linestyle','-','lineWidth',7);
line([0,13],[11,2.4],'color','w','linestyle','-','lineWidth',7);
line([0,-8],[11,5.7],'color','w','linestyle','-','lineWidth',7);
line([0,10.5],[15,8],'color','w','linestyle','-','lineWidth',7);
line([0,-13],[15,6.4],'color','w','linestyle','-','lineWidth',7);
line([10.5,10.5],[8.6,-0.8],'color','w','linestyle','-','lineWidth',5);%youxiao
line([13,13],[3.1,-10],'color','w','linestyle','-','lineWidth',6);%zuiyou
line([-7.5,-7.5],[16,-8],'color','[1,0.3,0.04]','linestyle','-','lineWidth',7);%hongxian
line([11.7,11.7],[-1,-10],'color','[1,0.3,0.04]','linestyle','-','lineWidth',3);%hongxian
line([-8.9,-8.9],[10.1,-10.5],'color','w','linestyle','-','lineWidth',7);
line([-12,-12],[7.5,-10],'color','w','linestyle','-','lineWidth',7);