sub print_usage
    {
    print "Usage:\n";

    }

sub print_help
    {
    print_usage();
    print "\n";
    print "$ProgName,Version $version\n";
    print "\n";
    print "This vmware Infrastructure monitoring plugin is free software, and comes with ABSOLUTELY NO WARRANTY.\n";
    print "It may be used, redistributed and/or modified under the terms of the GNU General Public Licence \n";
    print "(see http://www.fsf.org/licensing/licenses/gpl.txt).\n\n";
    print "Copyright (c) 2013 all modifications starting from check_vmware_api.pl Martin Fuerstenau - Oce Printing Systems <martin.fuerstenau\@oce.com>\n";
    print "Copyright (c) 2008 op5 AB Kostyantyn Hushchyn <dev\@op5.com>\n";
    print "\n";

    print "General options:\n";
    print "================\n";
    print "\n";
    print " -?, --usage                          Print usage information\n";
    print " -h, --help                           Print detailed help screen\n";
    print " -V, --version                        Print version information\n";
    print " --ignore_unknown                     Sometimes 3 (unknown) is returned from a component.\n";
    print "                                      But the check itself is ok.\n";
    print "                                      With this option the plugin will return 0 (0) instead of 3 (3).\n";
    print " -t, --timeout=INTEGER                Seconds before plugin times out (default: 30)\n";
    print " -v, --verbose                        Show details for command-line debugging (can repeat up to 3 times)\n";
    print "     --trace=<level>                  Set verbosity level of vSphere API request/respond trace.\n";
    print "\n";

    print "Options for authentication:\n";
    print "===========================\n";
    print "\n";
    print "     --sessionfile=SESSIONFILE        If this option is set a session file will be used for login. The name will \n";
    print "                                      be generated automatically. A good idea is to use the servicedescription. It is \n";
    print "                                      combined with the hostname and so it is dynamic for every service.\n";
    print " -u, --username=<username>            Username to connect with.\n";
    print " -p, --password=<password>            Password to use with the username.\n";
    print " -f, --authfile=<path>                Authentication file with login and password.\n";
    print "                                      File syntax :\n";
    print "                                      username=<login>\n";
    print "                                      password=<password>\n";
    print "\n";
    print "Options for threshold:\n";
    print " -w, --warning=<threshold>            Warning threshold.\n";
    print " -c, --critical=<threshold>           Critical threshold.\n";
    print "                                      Thresholds should be either a simple counter or a percentage value in the nn% (i.e. 90%).\n";

#--- Data Center ----------------------

    print "Monitoring the vmware datacenter:\n";
    print "=================================\n";
    print "\n";
    print " -D, --datacenter=<DCname>            Datacenter hostname.\n";
    print "\n";
    print "Volumes:\n";
    print "--------\n";
    print "\n";
    print " -S, --select=volumes                 Shows all Datastore info\n";
    print " -s, --subselect=(name)               free space info for datastore with name (name)\n\n";
    print "     --usedspace                      output used space instead of free\n";
    print "     --alertonly                      list only alerting volumes\n";
    print "     --isregexp                       whether to treat name as regexp\n";
    print " -x, --exclude=<black_list>           blacklist volumes.\n";
    print "     --blacklistregexp                whether to treat blacklist as regexp\n";
    print " -y, --include=<white_list>           whitelist volumes.\n";
    print "     --whitelistregexp                whether to treat whitelist as regexp\n";
    print "\n";

    print "        * runtime - shows all runtime info(except cluster and tools and no thresholds)\n";
    print "            + listvms - list of vmware machines and their statuses\n";
    print "            + listhost - list of vmware esx host servers and their statuses\n";
    print "            + listcluster - list of vmware clusters and their statuses\n";
    print "            + tools - vmware Tools status\n";
    print " -x, --exclude=<black_list>           blacklist VM's.\n";

    print "            + status - overall object status (gray/green/red/yellow)\n";
    print "            + issues - all issues for the host\n";
    print " -x, --exclude=<black_list>           blacklist volumes.\n";
    print "     --blacklistregexp                whether to treat blacklist as regexp\n";
    print " -y, --include=<white_list>           whitelist volumes.\n";
    print "     --whitelistregexp                whether to treat whitelist as regexp\n";

    print "SOAP API:\n";
    print "---------\n";
    print "\n";
    print " -S, --select=soap                    simple check to verify a successfull connection\n";
    print "                                      to VMWare SOAP API.\n";
    print "\n";

#--- Host ----------------------

    print "Monitoring the vmware host:\n";
    print "===========================\n";
    print "\n";
    print " -H, --host=<hostname>               ESX or ESXi hostname.\n";
    print "\n";
    print "CPU:\n";
    print "----\n";
    print "\n";
    print " -S, --select=cpu                    CPU usage in percentage\n";
    print " -s, --subselect=ready               Percentage of time that the virtual machine was\n";
    print "                                     ready, but could not get scheduled to run on the\n";
    print "                                     physical CPU. CPU ready time is dependent on the\n";
    print "                                     number of virtual machines on the host and their\n";
    print "                                     CPU loads. High or growing ready time can be a\n";
    print "                                     hint CPU bottlenecks\n";
    print "\n";
    print " -s, --subselect=wait                CPU time spent in wait state. The wait total includes\n";
    print "                                     time spent the CPU idle, CPU swap wait, and CPU I/O\n";
    print "                                     wait states. High or growing wait time can be a\n";
    print "                                     hint I/O bottlenecks.\n";
    print "\n";
    print "Memory:\n";
    print "-------\n";
    print "\n";
    print " -S, --select=mem                    all mem info(except overall and no thresholds)\n";
    print " -s, --subselect=usage               Average mem usage in percentage\n";
    print "\n";
    print " -s, --subselect=consumed            Amount of machine memory used on the host. Consumed\n";
    print "                                     memory includes Includes memory used by the Service\n";
    print "                                     Console, the VMkernel vSphere services, plus the\n";
    print "                                     total consumed metrics for all running virtual\n";
    print "                                     machines in MB\n";
    print "\n";
    print " -s, --subselect=swapused            Amount of memory that is used by swap. Sum of memory\n";
    print "                                     swapped of all powered on VMs and vSphere services\n";
    print "                                     on the host in MB\n";
    print "\n";
    print " -s, --subselect=overhead            additional mem used by VM Server in MB\n";
    print "\n";
    print " -s, --subselect=memctl              The sum of all vmmemctl values in MB for all powered-on\n";
    print "                                     virtual machines, plus vSphere services on the host.\n";
    print "                                     If the balloon target value is greater than the balloon\n";
    print "                                     value, the VMkernel inflates the balloon, causing more\n";
    print "                                     virtual machine memory to be reclaimed. If the balloon\n";
    print "                                     target value is less than the balloon value, the VMkernel\n";
    print "                                     deflates the balloon, which allows the virtual machine to\n";
    print "                                     consume additional memory if needed.used by VM memory\n";
    print "                                     control driver.\n";
    print "\n";
    print "Network:\n";
    print "-------\n";
    print "\n";
    print " -S, --select=net                     shows net info\n";
    print " -s, --subselect=usage                overall network usage in KBps(Kilobytes per Second).\n";
    print " -s, --subselect=receive              receive in KBps(Kilobytes per Second).\n";
    print " -s, --subselect=send                 send in KBps(Kilobytes per Second).\n";
    print " -s, --subselect=nic                  check all active NICs.\n";
    print "\n";
    print "Volumes:\n";
    print "--------\n";
    print "\n";
    print " -S, --select=volumes                 Shows all Datastore info\n";
    print " -s, --subselect=(name)               free space info for datastore with name (name)\n\n";
    print "     --usedspace                      output used space instead of free\n";
    print "     --alertonly                      list only alerting volumes\n";
    print "     --isregexp                       whether to treat name as regexp\n";
    print " -x, --exclude=<black_list>           blacklist volumes.\n";
    print "     --blacklistregexp                whether to treat blacklist as regexp\n";
    print " -y, --include=<white_list>           whitelist volumes.\n";
    print "     --whitelistregexp                whether to treat whitelist as regexp\n";
    print "\n";
    print "Disk I/O:\n";
    print "---------\n";
    print "\n";
    print " -S, --select=io                      shows all disk io info. Without subselect no thresholds\n";
    print "                                      can be checked. All I/O values are aggregated from historical\n";
    print "                                      intervals over the past 24 hours with a 5 minute sample rate\n";
    print " -s, --subselect=aborted              Number of aborted SCSI commands\n";
    print " -s, --subselect=resets               Number of SCSI bus resets\n";
    print " -s, --subselect=read                 Average number of kilobytes read from the disk each second\n";
    print "                                      Rate at which data is read from each LUN on the host.\n";
    print "                                      read rate = # blocksRead per second x blockSize\n";
    print "                                      issued from the Guest OS to the virtual machine. The sum\n";
    print "                                      of kernelReadLatency and deviceReadLatency.\n";
    print " -s, --subselect=read_latency         Average amount of time (ms) to process a SCSI read command\n";
    print "                                      issued from the Guest OS to the virtual machine. The sum\n";
    print "                                      of kernelReadLatency and deviceReadLatency.\n";
    print " -s, --subselect=write                Average number of kilobytes written to disk each second.\n";
    print "                                      Rate at which data is written to each LUN on the host.\n";
    print "                                      write rate = # blocksRead per second x blockSize\n";
    print " -s, --subselect=write_latency        Average amount of time (ms) taken to process a SCSI write\n";
    print "                                      command issued by the Guest OS to the virtual machine. The\n";
    print "                                      sum of kernelWriteLatency and deviceWriteLatency.\n";
    print " -s, --subselect=usage                Aggregated disk I/O rate. For hosts, this metric includes\n";
    print "                                      the rates for all virtual machines running on the host\n";
    print " -s, --subselect=kernel_latency       Average amount of time (ms) spent by VMkernel processing\n";
    print "                                      each SCSI command.\n";
    print " -s, --subselect=device_latency       Average amount of time (ms) to complete a SCSI command\n";
    print "                                      from the physical device\n";
    print " -s, --subselect=queue_latency        Average amount of time (ms) spent in the VMkernel queue,\n";
    print "                                      per SCSI command, during thequeue latency in ms\n";
    print "\n";
    print "Host mounted media:\n";
    print "-------------------\n";
    print "\n";
    print " -S, --select=hostmedia               list vm's with attached host mounted media like cd,dvd or\n";
    print "                                      floppy drives. This is important for monitoring because a\n";
    print "                                      virtual machine with a mount cd or dvd drive can not be\n";
    print "                                      moved to another host.\n";
    print " -x, --exclude=<black_list>           blacklist VMs.\n";
    print "     --blacklistregexp                whether to treat blacklist as regexp\n";
    print " -y, --include=<white_list>           whitelist VMs.\n";
    print "     --whitelistregexp                whether to treat whitelist as regexp\n";
    print "     --multiline                      Multiline output in overview. This mean technically that\n";
    print "                                      a multiline output uses a HTML <br> for the GUI instead of\n";
    print "                                      Be aware that your messing connections (email, SMS...) must use\n";
    print "                                      a filter to file out the <br>. A sed oneliner like the following\n";
    print "                                      will do the job: sed 's/<[^<>]*>//g'\n";
    print "\n";

    print "        * storage - shows Host storage info\n";
    print "            + adapter - list bus adapters\n";
    print "                b - blacklist adapters\n";
    print "            + lun - list SCSI logical units\n";
    print "                b - blacklist LUN's\n";
    print "            + path - list logical unit paths\n";
    print "                b - blacklist paths\n";
    print "            ^ show all storage info\n";
    print " --adapter_model                       Displays the model of the adapter as additional information.\n";


    print "        * runtime - shows runtime info\n";
    print "            + con - connection state\n";
    print "            + health - checks cpu/storage/memory/sensor status\n";
    print "                --listitems - list all available sensors(use for listing purpose only)\n";
    print "                --blacklistregexp - whether to treat blacklist as regexp\n";
    print "                b - blacklist status objects\n";
    print "            + storagehealth - storage status check\n";
    print "                --blacklistregexp - whether to treat blacklist as regexp\n";
    print "                b - blacklist status objects\n";
    print "            + temperature - temperature sensors\n";
    print "                --blacklistregexp - whether to treat blacklist as regexp\n";
    print "                b - blacklist status objects\n";
    print "            + sensor - threshold specified sensor\n";
    print "          --sensorname=<name of sensor>    Sensor to be monitored.\n";
    print "            + maintenance - shows whether host is in maintenance mode\n";
    print "            + listvms - list of vmware machines and their statuses\n";
    print "            + status - overall object status (gray/green/red/yellow)\n";
    print "            + issues - all issues for the host\n";
    print "                b - blacklist issues\n";
    print "            ^ all runtime info(health, storagehealth, temperature and sensor are represented as one value and no thresholds)\n";


    print "        * service - shows Host service info\n";
    print "            + (names) - check the state of one or several services specified by (names), syntax for (names):<service1>,<service2>,...,<serviceN>\n";
    print "            ^ show all services\n";
    print "        * uptime - shows Host uptime\n";
    print "     --listall - list all available devices(use for listing purpose only)\n";
    print " -x, --exclude=<black_list>\n";
    print "   Specify black list\n";
    print "\n";

    print "SOAP API:\n";
    print "---------\n";
    print "\n";
    print " -S, --select=soap                    simple check to verify a successfull connection\n";
    print "                                      to VMWare SOAP API.\n";
    print "\n";


#--- Virtual machine ----------------------

    print "Monitoring a virtual machine via vmware datacenter or vmware host:\n";
    print "==================================================================\n";
    print "\n";
    print " -D, --datacenter=<DCname>           Datacenter hostname.\n";
    print "  or \n";
    print " -H, --host=<hostname>               ESX or ESXi hostname.\n";

    print " -N, --name=<vmname>                 Virtual machine name.\n";
    print "\n";
    print "CPU:\n";
    print "----\n";
    print "\n";
    print " -S, --select=cpu                    CPU usage in percentage\n";
    print "Memory:\n";
    print "-------\n";
    print "\n";
    print " -S, --select=mem                    all mem info(except overall and no thresholds)\n";
    print " -s, --subselect=usage               Average mem usage in percentage of configured virtual\n";
    print "                                     machine \"physical\" memory.\n";
    print "\n";
    print " -s, --subselect=consumed            Amount of guest physical memory in MB consumed by the\n";
    print "                                     virtual machine for guest memory. Consumed memory does\n";
    print "                                     not include overhead memory. It includes shared memory\n";
    print "                                     and memory that might be reserved, but not actually\n";
    print "                                     used. Use this metric for charge-back purposes.\n";
    print "                                     vm consumed memory = memory granted - memory saved\n";
    print "\n";
    print "Network:\n";
    print "-------\n";
    print "\n";
    print " -S, --select=net                    shows net info\n";
    print " -s, --subselect=usage               overall network usage in KBps(Kilobytes per Second).\n";
    print " -s, --subselect=receive             receive in KBps(Kilobytes per Second).\n";
    print " -s, --subselect=send                send in KBps(Kilobytes per Second).\n";
    print "\n";
    print "Disk I/O:\n";
    print "---------\n";
    print "\n";
    print "        * io - shows all disk I/O info Without subselect no thresholds\n";
    print "                                      can be checked.\n";
    print "            + usage - overall disk usage in MB/s\n";
    print "                                      (5 minute samples)\n";
    print "            + read - read latency in ms (totalReadLatency.average)\n";
    print "                                      (5 minute samples)\n";
    print "            + write - write latency in ms (totalWriteLatency.average)\n";
    print "                                      (5 minute samples)\n";

    print "        * runtime - shows runtime info\n";
    print "            + con - connection state\n";
    print "            + cpu - allocated CPU in MHz\n";
    print "            + mem - allocated mem in MB\n";
    print "            + state - virtual machine state (UP, DOWN, SUSPENDED)\n";
    print "            + status - overall object status (gray/green/red/yellow)\n";
    print "            + consoleconnections - console connections to VM\n";
    print "            + guest - guest OS status, needs VMware Tools\n";
    print "            + tools - vmware Tools status\n";
    print "            + issues - all issues for the host\n";
    print "            ^ all runtime info(except con and no thresholds)\n";
    print " -x, --exclude=<black_list>\n";
    print "   Specify black list\n";

    print "SOAP API:\n";
    print "---------\n";
    print "\n";
    print " -S, --select=soap                    simple check to verify a successfull connection\n";
    print "                                      to VMWare SOAP API.\n";
    print "\n";

#--- Cluster ----------------------

    print "Monitoring a vmware cluster via vmware datacenter or vmware host:\n";
    print "=================================================================\n";
    print "\n";
    print " -D, --datacenter=<DCname>            Datacenter hostname.\n";
    print "  or \n";
    print " -H, --host=<hostname>                ESX or ESXi hostname.\n";

    print " -C, --cluster=<clustername>          ESX or ESXi clustername.\n";

    print " -S, --select=COMMAND\n";
    print "   Specify command type (cpu,mem,net,io,volumes,runtime, ...)\n";
    print " -s, --subselect=SUBCOMMAND\n";
    print "   Specify subselect\n";
    print "\n";
    print " -x, --exclude=<black_list>\n";
    print "   Specify black list\n";
    print "\n";
    print "    Cluster specific :\n";
    print "\n";
    print "CPU:\n";
    print "----\n";
    print "\n";
    print "        * cpu - shows cpu info\n";
    print "            + usage - CPU usage in percentage\n";
    print "            + usagemhz - CPU usage in MHz\n";
    print "            ^ all cpu info\n";
    print "\n";
    print "Memory:\n";
    print "-------\n";
    print "\n";
    print "        * mem - shows mem info\n";
    print "            + usage - mem usage in percentage\n";
    print "            + usagemb - mem usage in MB\n";
    print "            + swap - swap mem usage in MB\n";
    print "            + memctl - mem used by VM memory control driver(vmmemctl) that controls ballooning\n";
    print "            ^ all mem info(plus overhead and no thresholds)\n";
    print "        * cluster - shows cluster services info\n";
    print "            + effectivecpu - total available cpu resources of all hosts within cluster\n";
    print "            + effectivemem - total amount of machine memory of all hosts in the cluster\n";
    print "            + failover - vmware HA number of failures that can be tolerated\n";
    print "            + cpufainess - fairness of distributed cpu resource allocation\n";
    print "            + memfainess - fairness of distributed mem resource allocation\n";
    print "            ^ only effectivecpu and effectivemem values for cluster services\n";
    print "        * runtime - shows runtime info\n";
    print "            + listvms - list of vmware machines in cluster and their statuses\n";
    print "            + listhost - list of vmware esx host servers in cluster and their statuses\n";
    print "            + status - overall cluster status (gray/green/red/yellow)\n";
    print "            + issues - all issues for the cluster\n";
    print "                b - blacklist issues\n";
    print "            ^ all cluster runtime info\n";
    print "\n";
    print "Volumes:\n";
    print "--------\n";
    print "\n";
    print " -S, --select=volumes                 Shows all Datastore info\n";
    print " -s, --subselect=(name)               free space info for datastore with name (name)\n\n";
    print "     --usedspace                      output used space instead of free\n";
    print "     --alertonly                      list only alerting volumes\n";
    print "     --isregexp                       whether to treat name as regexp\n";
    print " -x, --exclude=<black_list>           blacklist volumes.\n";
    print "     --blacklistregexp                whether to treat blacklist as regexp\n";
    print " -y, --include=<white_list>           whitelist volumes.\n";
    print "     --whitelistregexp                whether to treat whitelist as regexp\n";
    print "\n";

    print "SOAP API:\n";
    print "---------\n";
    print "\n";
    print " -S, --select=soap                    simple check to verify a successfull connection\n";
    print "                                      to VMWare SOAP API.\n";
    print "\n";

    }

# A module always must end with a returncode of 1. So placing 1 at the end of a module 
# is a commen method to ensure this.
1;
