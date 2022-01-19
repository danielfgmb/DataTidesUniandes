%% 
tabla=readtable("averaged_resultados_uniandes.csv")

%% 
spl1=split(tabla.datetime_start_utc_," ")
date=split(spl1(:,1),"-")
spl3=split(spl1(:,2),"+")
time=split(spl3(:,1),":")

%%
date_join=join(date,"-")
time_join=join(time,":")
dateti=join([date_join,time_join]," ")
initial_time_utc=strcat(date{1,1},"-",date{1,2},"-",date{1,3}," ",time{1,1},":",time{1,2},":",time{1,3})
dateti=string(dateti)
dates=datetime(dateti)
timestamp=posixtime(dates)
hours=((timestamp-timestamp(1))/60)/60


%%

plot(hours,tabla.gravity_average_m_s2_,'-*')
title("Variation of Gravity. Location: Bogotá, Uniandes (+05:00)")
xlabel("Hours [h]")
ylabel("Gravity [m/s^2]")
yline(mean(tabla.gravity_average_m_s2_),"--",strcat("Average: ",string(mean(tabla.gravity_average_m_s2_))) )
legend(strcat("Initial time (UTC): ",initial_time_utc))
grid on
grid minor