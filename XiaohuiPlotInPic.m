% 为庆祝山东建筑大学65周年校庆，使用MATLAB绘制学校校徽
% 主体思路是：在完成字体和圆圈绘制后，插入“建”图片
% 由于插入图片后，字体的角度都发生变化，所以需对每个字的角度进行调整
% 完成人：测绘191班 张垄戈 孟慧 王骞 陈梅
% 指导教师：毕京学-测绘学院
% 日期：2021-10-18
clear;
clc;
figure;
% 加载图片
[im,~,alpha]=imread('jian.png');
h=image(im,'XData',[-24,24],'YData',[-24,24]);
set(h,'AlphaData',alpha);
JiandaRGB=[255,80,10]/255;
ax=gca;
hold(ax,'on');
axis(ax,'equal','off',[-40,40,-40,40]);
% 画外圆
plot(ax,40*exp(1i*(0:0.01:3*pi)),'Color',JiandaRGB,'LineWidth',5);
hold on;
% 画圈内细圆
plot(ax,38.5*exp(1i*(0:0.01:3*pi)),'Color',JiandaRGB,'LineWidth',1);
hold on;
% 画内圆
plot(ax,25.5*exp(1i*(0:0.01:3*pi)),'Color',JiandaRGB,'LineWidth',1);
% 环绕字体
circleWord = ' 学大筑建东山 · Shandong · Jianzhu · University ·';
% circleWord = ' 山东建筑大学 · ytisrevinU · uhznaiJ · gnodnahS ·';
step = [10 10 10 10 10 10 10];
% 旋转角度
R = [100 100-200/sum(step).*cumsum(step) linspace(95,-95,35)];
for ii = 1:length(circleWord)
    t = text(ax,0,0,circleWord(ii));
    if ii <= 2 % 空格和学
        t.Position = [33*cosd(R(ii)+270) 33*sind(R(ii)+270)]; 
        t.FontName = '草檀斋毛泽东字体';
        t.FontSize = 32;
        t.Rotation = R(ii)-135;
    elseif ii ==3 % 大
        t.Position = [33*cosd(R(ii)+270) 33*sind(R(ii)+270)]; 
        t.FontName = '草檀斋毛泽东字体';
        t.FontSize = 32;
        t.Rotation = R(ii)-80;
    elseif ii ==4 % 筑
        t.Position = [33*cosd(R(ii)+270) 33*sind(R(ii)+270)]; 
        t.FontName = '草檀斋毛泽东字体';
        t.FontSize = 32;
        t.Rotation = R(ii)-50;
    elseif ii ==5 % 建
        t.Position = [33*cosd(R(ii)+270) 33*sind(R(ii)+270)]; 
        t.FontName = '草檀斋毛泽东字体';
        t.FontSize = 32;
        t.Rotation = R(ii)+30;
    elseif ii ==6 % 东
        t.Position = [33*cosd(R(ii)+270) 33*sind(R(ii)+270)]; 
        t.FontName = '草檀斋毛泽东字体';
        t.FontSize = 32;
        t.Rotation = R(ii)+60;
    elseif ii >6 && ii <=8 % 山/空格 标量用&&，向量用&
        t.Position = [33*cosd(R(ii)+270) 33*sind(R(ii)+270)]; 
        t.FontName = '草檀斋毛泽东字体';
        t.FontSize = 32;
        t.Rotation = R(ii)+115;
    % 调整英文字母的角度
    elseif ii>10 && ii <=11 % S
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)-167;
    elseif ii>11 && ii <=12 % h
        t.Position = [32.2*cosd(R(ii)+90) 32.2*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)-157;
    elseif ii>12 && ii <=13 % a
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)-145;
    elseif ii>13 && ii <=14 % n
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)-135;
    elseif ii>14 && ii <=15 % d
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)-123;
    elseif ii>15 && ii <=16 % o
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)-112;
    elseif ii>16 && ii <=17 % n
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)-102;
    elseif ii>17 && ii <=18 % g
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)-90;
    elseif ii>18 && ii <=22 % J
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)-45;
    elseif ii>22 && ii <=23 % i
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)-33;
    elseif ii>23 && ii <=24 % a
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)-22;
    elseif ii>24 && ii <=25 % n
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)-12;
    elseif ii>25 && ii <=26 % z
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii);
    elseif ii>26 && ii <=27 % h
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)+12;
    elseif ii>27 && ii <=28 % u
        t.Position = [31.9*cosd(R(ii)+90) 31.9*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)+23;
    elseif ii>28 && ii <=32 % U
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)+67;
    elseif ii>32 && ii <=33 % n
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)+77;
    elseif ii>33 && ii <=34 % n
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)+89;
    elseif ii>34 && ii <=35 % v
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)+101;
    elseif ii>35 && ii <=36 % e
        t.Position = [32.1*cosd(R(ii)+90) 32.1*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)+113;
    elseif ii>36 && ii <=37 % r
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)+122;
    elseif ii>37 && ii <=38 % s
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)+132;
    elseif ii>38 && ii <=39 % i
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)+143;
    elseif ii>39 && ii <=40 % t
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)+153;
    elseif ii>40 && ii <=41 % y
        t.Position = [32*cosd(R(ii)+90) 32*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)+163;
    else
        t.Position = [32*cosd(R(ii)+90) 3*sind(R(ii)+90)];
        t.FontName = 'Times New Roman';
        t.FontSize = 24;
        t.Rotation = R(ii)+170;
    end
    t.FontWeight = 'bold';
    t.Color = JiandaRGB;
    t.HorizontalAlignment = 'center';
end