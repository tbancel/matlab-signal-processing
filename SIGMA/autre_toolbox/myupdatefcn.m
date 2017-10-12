function txt = myupdatefcn(trash,event)
pos = get(event,'Position');
dts = get(event.Target,'Tag');
txt = {dts,...
       ['X: ',num2str(pos(1))],...
	   ['Y: ',num2str(pos(2))]};
end