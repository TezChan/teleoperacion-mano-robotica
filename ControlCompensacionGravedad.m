function salida = ControlCompensacionGravedad(u)

L1 = Link ([0 0 0 -(pi/2)]);
L1.I = [0 0 0];
L1.r = [0 0 0];
L1.m = 0;
L2 = Link ([pi/2 0 0.054 0]);
L2.I = [1 1 1];
L2.r = [0.054/2 0 0];
L2.m = 1;
L3 = Link ([0 0 0.0384 0]);
L3.I = [1 1 1];
L3.r = [0.0384/2 0 0];
L3.m = 1;
L4 = Link ([0 0 0.0357 0]);
L4.I = [1 1 1];
L4.r = [0.0357/2 0 0];
L4.m = 1;

% L1.qlim = [-(64*pi)/180,(124*pi)/180];
L2.offset = -pi/2; % no entiendo por que si no metemos este offset no nos sale bien

L = [L1,L2,L3,L4]
dedoRobot = SerialLink(L,'name','AllegroFinger');

%Posición articular deseada
qd = [0; 0; pi/2; pi/2];

%Posición articual actual
q = u(1:4);

%Velocidad articular actual
qv = u(5:8);

%Error de posición 
Q = qd - q

%Ganancias del controlador
Kp = 10;
Kv = 10;

%Carga gravitacional de las articulaciones
g = dedoRobot.gravload(transpose(q));

%tau

tau = Kp*Q - Kv*qv + transpose(g);

salida = tau;


