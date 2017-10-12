function mousebuttondownCallback(src, evnt) 

hfig = gcf;
Ref_info = evalin('base', 'Ref_info');
init = evalin('base', 'init');

scale = getappdata(hfig,'SCALE');
mainaxes = findobj(hfig,'tag','axes1'); 

currentxlim = get(mainaxes, 'Xlim');
currentylim = get(mainaxes, 'Ylim');
mousepos = get(mainaxes, 'currentpoint');
position = get(mainaxes, 'Position');

ratio = currentxlim(2)/0.5;

x = (mousepos(1, 1)/currentxlim(1,2))*ratio; 
y = (mousepos(1, 2)/currentylim(1,2))*ratio;

%x = mousepos(1, 1)+0.15; 
%y = (mousepos(1, 2)+0.15)/currentylim(1,2);


Xmin = position(1);
Ymin = position(2);
Xmax = position(3);
Ymax = position(4);

Xlength=Xmax-Xmin;
Ylength=Ymax-Ymin;

lengthOI=max(Xlength,Ylength);

radius_of_circle = 0.05;
%init.pointSize/lengthOI;

if isempty(mousepos)
    return;
end

% if the mouse is not in the viewing window
if x<=1&&y<=1
   selectype = lower(get(hfig,'SelectionType'));
   
if strcmp(selectype,'normal')
   for e_cpt=1:length(init.Eaxes)
       rep='';
       
       if x-radius_of_circle <= init.Eaxes(e_cpt,2)/0.5 && y-radius_of_circle <= init.Eaxes(e_cpt,1)/0.5 && x+radius_of_circle >= init.Eaxes(e_cpt,2)/0.5&& y+radius_of_circle >= init.Eaxes(e_cpt,1)/0.5
           rep='yatta';          
           electrode_to_disable=find(Ref_info.EOI==e_cpt);
          if isnan(Ref_info.EOI(e_cpt))
             Ref_info.EOI(e_cpt)=e_cpt;
          else
             Ref_info.EOI(electrode_to_disable)=[nan];
          end          
       end
       
   end
  
 
    assignin('base','Ref_info',Ref_info);
    draw_All()
end 
    
end