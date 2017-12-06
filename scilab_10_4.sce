function res=twoplains(A1,B1,C1,D1,A2,B2,C2,D2)
    k1=A1/A2;
    k2=B1/B2;
    k3=C1/C2;
    k4=D1/D2;
    if k1 == k2 == k3 == k4 then
        res='Belong to one surface';
    elseif (k1 == k2 == k3) && (k1~=k4) then
        res='parallel';
    elseif (k1~=k2) || (k2~=k3) || (k1~=k3) then
        res='intersect';
    end
endfunction
