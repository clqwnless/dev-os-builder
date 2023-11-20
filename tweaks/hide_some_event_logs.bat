@echo off


reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\WMI\Autologger\EventLog-Application\{f1ef270a-0d32-4352-ba52-dbab41e1d859}" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\WMI\Autologger\EventLog-System\{555908d1-a6d7-4695-8e1e-26931d2012f4}" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\WMI\Autologger\EventLog-Application\{ed8b9bd3-f66e-4ff2-b86b-75c7925f72a9}" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\WMI\Autologger\EventLog-Application\{5bbca4a8-b209-48dc-a8c7-b23d3e5216fb}" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\WMI\Autologger\EventLog-Application\{f0be35f8-237b-4814-86b5-ade51192e503}" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\WMI\Autologger\EventLog-System\{fcbb06bb-6a2a-46e3-abaa-246cb4e508b2}" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\WMI\Autologger\EventLog-Application\{e23b33b0-c8c9-472c-a5f9-f2bdfea0f156}" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\WMI\Autologger\EventLog-Application\{dbe9b383-7cf3-4331-91cc-a3cb16a3b538}" /f > nul 2>&1

reg delete "HKEY_LOCAL_MACHINE\OFFLINE_SYSTEM\ControlSet001\Control\WMI\Autologger\EventLog-System\{1b562e86-b7aa-4131-badc-b6f3a001407e}" /f > nul 2>&1
