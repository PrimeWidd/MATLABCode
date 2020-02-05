function dy=F_deterministicN(t,y,p)
% function dy=F_deterministicN(t,y,p)
% 
% RHS for deterministic case with N nodes

u=y(1:p.N);
v=y(p.N+1:2*p.N);
% A=reshape(y(2*p.N+1:end),p.N,p.N);
A=p.A;

L=diag(A*ones(p.N,1))-A;

% w=ones(p.N,1);

% Geirer Meinhart
du=p.p-u.*v.^2-p.D1*L*u;
dv=p.q-v+u.*v.^2-p.D2*L*v;

% dA=p.D3*A.*(1-A).*( p.epsilon - (u*w'-w*u').^2 );
% dA=p.D3*A.*(1-A).*( p.epsilon - abs(u*w'-w*u') );

dy=[du; dv];