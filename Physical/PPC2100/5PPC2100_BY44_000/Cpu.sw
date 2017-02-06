<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio Version=4.2.7.54 SP?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1">
    <Task Name="Chart" Source="Sources.Chart.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4">
    <Task Name="mvClient" Source="Sources.mvClient.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="mvServer" Source="Sources.mvServer.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Table" Source="Sources.Table.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Simulation" Source="Sources.Simulation.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="VarList" Source="Sources.VarList.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="ProfileGen" Source="Sources.ProfileGen.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Communicat" Source="Sources.Communication.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#5" />
  <TaskClass Name="Cyclic#6" />
  <TaskClass Name="Cyclic#7" />
  <TaskClass Name="Cyclic#8" />
</SwConfiguration>