function [] = vanDerWaalsSolver()

close all;
global gui;
gui.fig = figure('numbertitle', 'off', 'name', 'Van der Waals Equation Calculator');
   
%input variables needed: temperature of conditions (T), pressure of conditions(P), critical temperature
%of species (Tc) critical pressure species(Pc)


%temp conditions
gui.tempText = uicontrol('style','text','position',...
    [20 400 70 25], 'string','Temperature of Conditions:','horizontalalignment','left');
gui.tempInput = uicontrol('style','edit','position',[20 375 100 20]);
%pressure conditions
gui.pressText = uicontrol('style','text','position',...
    [20 350 70 25], 'string','Pressure of Conditions:','horizontalalignment','left');
gui.pressInput = uicontrol('style','edit','position',[20 325 100 20]);
%crit temp
gui.critTempText = uicontrol('style','text','position',...
    [20 270 70 40], 'string','Critical Temperature of Species:','horizontalalignment','left');
gui.critTempInput = uicontrol('style','edit','position',[20 245 100 20]);
%crit pressure 
gui.critPressText = uicontrol('style','text','position',...
    [20 200 70 40], 'string','Critical Pressure of Species:','horizontalalignment','left');
gui.critPressInput = uicontrol('style','edit','position',[20 175 100 20]);

%drop down menus for units
gui.tempUnits = uicontrol('style','popupmenu','string',{'Celsius';'Kelvin'},'position',[120 375 100 20],'horizontalalignment','left');
gui.pressUnits = uicontrol('style','popupmenu','string',{'Atmospheres';'Pascals'},'position',[120 325 100 20],'horizontalalignment','left');
gui.critTempUnits = uicontrol('style','popupmenu','string',{'Celsius';'Kelvin'},'position',[120 245 100 20],'horizontalalignment','left');
gui.critPressUnits = uicontrol('style','popupmenu','string',{'Atmospheres';'Pascals'},'position',[120 175 100 20],'horizontalalignment','left');

  function [] = solve()
        %calculate a and b constants 
        
  end

%    function [] convertUnits()
        %if temp given in celcius, convert to kelvin 
        %if pressure given in atm, convert to Pa 
      


%end


%output variables: specific volume of non-ideal gas
end 