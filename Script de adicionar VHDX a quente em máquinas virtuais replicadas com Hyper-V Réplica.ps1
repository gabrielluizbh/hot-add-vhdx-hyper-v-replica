# Script de adicionar VHDX "a quente" em máquinas virtuais replicadas com Hyper-V Réplica - Créditos Gabriel Luiz - www.gabrielluiz.com ##


# Adcionar todos os discos rígidos virtuais presentes na máquina virtual com o nome VM a replicação do Hyper-V Réplica.

Set-VMreplication -VMName VM -ReplicatedDisks (Get-VMHardDiskDrive -VMName VM)


# Adcionar os discos rígidos virtuais (VHDX) vhd1, vhd2, vhd3, presentes na máquina virtual com o nome VM a replicação do Hyper-V Réplica.


$VHDS = @("C:\VHDX\vhd1.vhdx", "C:\VHDX\vhd2.vhdx", "C:\VHDX\vhd3.vhdx")

Set-VMReplication -VMName "VM" -ReplicatedDiskPaths $VHDS



<#
Referências:

https://docs.microsoft.com/en-us/powershell/module/hyper-v/set-vmreplication?view=windowsserver2022-ps&WT.mc_id=WDIT-MVP-5003815

https://charbelnemnom.com/hyperv-vnext-demo02-hyper-v-replica-support-for-hot-addremove-of-vhdx/

#>