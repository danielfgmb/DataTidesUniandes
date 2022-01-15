tabla=readtable("averaged_resultados_uniandes.csv")
tamano=((1:length(tabla.gravity_average_m_s2_)).*12)./60

plot(tamano,tabla.gravity_average_m_s2_)
title("Variation of Gravity")
xlabel("Hours [h]")
ylabel("Gravity [m/s^2]")
legend("Inicio Hora UTC: 18:12:33 Inicio Hora Local: 13:12:33")
grid on