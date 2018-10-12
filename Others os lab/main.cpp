#include <iostream>
#include <algorithm>
#include <vector>
const int tq = 1;
typedef struct proc{
    int p_no;
    int at;
    int bt;
    int ct;
    int rt;
    int tat;
    int wt;
    int obt;
	int exec=0;
    int p = 1;

}proc;
std::vector<proc> processes;

int currentTime = 0;


bool arrivalTimeSort(proc i , proc j) { return (i.at < j.at); }
bool burstTimeSort(proc i, proc j) { return (i.bt < j.bt); }
bool priorityTimeSort(proc i, proc j) { return (i.p < j.p); }

int executeProcess(proc &a)
{
    //int ctOld = currentTime;
    currentTime += a.bt;
    a.ct = currentTime;
    a.tat = a.ct-a.at;
    a.wt = a.tat - a.bt;
	a.exec =1;
    std::cout << "\n Executed process ID: " << a.p_no <<"\n";
    return 0;
}


void PrepareVectorPremptive()
{
    for (auto it = processes.begin(); it != processes.end(); it++)
    {
        (*it).obt = (*it).bt;
    }
}
int executeProcessPremptive(proc &a)
{
    int flag =0;
    currentTime += tq;
    a.bt -= tq;
    if(a.bt == 0 )
    {
        a.ct = currentTime;
        a.tat = a.ct-a.at;
        a.wt = a.tat - a.obt;
        a.exec =1;
        flag = 1;
    }
        
    std::cout << "\n Executed process ID: " << a.p_no <<"\n";
    return flag;
}


void printRow(proc a)
{
    std::cout << a.p_no << "\t"
              << a.at << "\t"
              << a.bt << "\t"
              << a.ct << "\t"
              << a.tat << "\t"
              << a.wt << "\t"<<"\n";
}
void print()
{
	// To print in the order of arrival time
	std::sort(processes.begin(), processes.end(), arrivalTimeSort);
	std::cout << "PNo." << "\t"
              << "AT" << "\t"
              << "BT" << "\t"
              << "CT" << "\t"
              << "TAT" << "\t"
              << "WT" << "\t"<<"\n";
    for (auto it = processes.begin(); it != processes.end(); it++)
    {
        printRow(*it);
    }
}
void calcStas()
{
    int totalTAT = 0;
    int totalWT = 0;
    for (auto it = processes.begin(); it != processes.end(); it++)
    {
        totalTAT += (*it).tat;
        totalWT += (*it).wt;
    }
    std::cout << "\n Average TAT: " << totalTAT / processes.size();
    std::cout << "\n Average WT: " << totalWT / processes.size();

}


void schedulerFCFS()
{
    std::sort(processes.begin(), processes.end(), arrivalTimeSort);
    std::cout << "\n";
    for (auto it = processes.begin(); it != processes.end(); it++)
    {
        std::cout << (*it).p_no << "\t";
        executeProcess(*it);
    }
    std::cout << "\n";
}

void schedulerSJF()
{
	std::sort(processes.begin(), processes.end(), burstTimeSort);
	std::cout << "\n";	
	int np = processes.size();
	while (np > 0)
	{
		for (auto it = processes.begin(); it != processes.end(); it++)
		{
			if(currentTime >= (*it).at && (*it).exec == 0 )
			{
				executeProcess(*it);
				np--;
				break;
			}
		}
	}
	std::cout << "\n";
}

void schedulerSRTF()
{
	std::sort(processes.begin(), processes.end(), burstTimeSort);
	std::cout << "\n";	
    int np = processes.size();
    PrepareVectorPremptive();
	while (np > 0)
	{
		for (auto it = processes.begin(); it != processes.end(); it++)
		{
			if(currentTime >= (*it).at && (*it).exec == 0 )
			{
				if(executeProcessPremptive(*it) != 0)
				    np--;
				break;
            }
            std::sort(processes.begin(), processes.end(), burstTimeSort);
		}
	}
	std::cout << "\n";
}


void schedulerRR()
{
	std::sort(processes.begin(), processes.end(), arrivalTimeSort);
	std::cout << "\n";	
    int np = processes.size();
    PrepareVectorPremptive();
	while (np > 0)
	{
		for (auto it = processes.begin(); it != processes.end(); it++)
		{
			if(currentTime >= (*it).at && (*it).exec == 0 )
			{
				if(executeProcessPremptive(*it) != 0)
				{
                    np--;
                    processes.push_back(*it);
                    processes.erase(it);
                }
				break;
            }
           // std::sort(processes.begin(), processes.end(), burstTimeSort);
		}
	}
	std::cout << "\n";
}

void schedulerPriority()
{
	std::sort(processes.begin(), processes.end(), arrivalTimeSort);
	std::cout << "\n";	
    int np = processes.size();
    PrepareVectorPremptive();
	while (np > 0)
	{
		for (auto it = processes.begin(); it != processes.end(); it++)
		{
			if(currentTime >= (*it).at && (*it).exec == 0 )
			{
				if(executeProcessPremptive(*it) != 0)
				    np--;
				break;
            }
            std::sort(processes.begin(), processes.end(), priorityTimeSort);
		}
	}
	std::cout << "\n";
}




int main()
{
    int ch;
    std::cout<<"\nEnter the Number of Processes: "; 
    std::cin>>ch;
    proc tmp;
    for (int i = 0 ; i < ch ; i++)
    {
        std::cout<<"\n===========\nProcess number: "<<i+1<<"\n=======\n";
        std::cout<<"\nEnter process ID: ";  
        std::cin>>tmp.p_no;
        std::cout<<"\nEnter process Arrival Time: ";  
        std::cin>>tmp.at;
        std::cout<<"\nEnter process Burst Time: ";  
        std::cin>>tmp.bt;
        processes.push_back(tmp);
    }

	schedulerRR();

	print();
    calcStas();

    std::cout<<"\n";
    return 0;
}