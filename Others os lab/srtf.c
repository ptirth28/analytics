#include<stdio.h>
#include<stdlib.h>

void main(){
	int t,j,i,n,*nid,*nat,*nbt,*ndbt,*nct,*ntat,*nawt,current=0,*p,max=9999,maxi;
	printf("Enter the no of processes :");
	scanf("%d",&n);
	
	nid=calloc(n,sizeof(int));
	nat=calloc(n,sizeof(int));
	nbt=calloc(n,sizeof(int));
	ndbt=calloc(n,sizeof(int));
	nct=calloc(n,sizeof(int));
	ntat=calloc(n,sizeof(int));
	nawt=calloc(n,sizeof(int));
	p=calloc(n,sizeof(int));

	
	for(i=0;i<n;i++){
		printf(" enter %d data ",i);		
		nid[i]=i;
		scanf("%d %d",&nat[i],&nbt[i]);
		p[i]=0;
	}
	
	for(j=0;j<n;j++){
    		for(i=0;i<j;i++){
        		if(nat[i]>nat[j]){
				 t=nat[j];
				 nat[j]=nat[i];
				 nat[i]=t;
				 t=nbt[j];
				 nbt[j]=nbt[i];
				 nbt[i]=t;
			}
		}
        }
	for(i=0;i<n;i++){
		ndbt[i]=nbt[i];
	}
	maxi=-2;
	while(1){
		for(i=0;i<n;i++){
			if(nat[i]<=current){
				if(p[i]==0){
					if(nbt[i]<max){
						max=nbt[i];						
						maxi=i;
					}
				}
			}
		}
		if(maxi==-2){
			current++;
		}
		else{
			nbt[maxi]--;
			current++;
			if(nbt[maxi]==0){
				p[maxi]=1;
				nct[maxi]=current;
				ntat[maxi]=nct[maxi]-nat[maxi];
				nawt[maxi]=ntat[maxi]-nbt[maxi];

			}
			max=9999;
			maxi=-2;
								
		}
		t=0;
		for(i=0;i<n;i++){
			if(p[i]==1)
				t++;
		}		
		if(t==n)
			break;
	}
	for(i=0;i<n;i++){
		printf("%d \t %d \t %d \t %d \t %d \t %d \n ",nid[i],nat[i],ndbt[i],nct[i],ntat[i],nawt[i]);	
	}
	
}
