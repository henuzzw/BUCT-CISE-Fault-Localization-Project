
    #include <stdio.h>
    int graph[101][101] ={0};
    int N;
    
    
    int  DFS(int node){
        
        int i, j, ans =0, next = -1;    
        
        int start = node, prev =0;
        
        while(1){
            //printf("(%d %d)", node, ans);
            next = -1;
        for(i=1; i<=N; i++){
            if(graph[node][i]){
                next = i;
            }
        }
        // no incoming node
        if(next == -1){
            for(j=1; j<=N; j++){
                // found outgoing node
                if(graph[j][node] && (prev==0 ||(j!=prev))){
                    graph[node][j] = graph[j][node];
                    graph[j][node] = 0;
                    next = j;
                    ans+= graph[node][j]; 
                }
            }
        }
        
        prev = node;
        node = next;
            if(node == start){
                break;
            }
        }
        
        return ans;
    }
    
    int main(int argc, char *argv[]){
        int M, i, T, tc;
        
        T = 1;
        for (tc = 0; tc<T; tc++){
            scanf("%d", &N);
            int sum =0;
            
            for(i=0; i<N; i++){
                int v1, v2, w;
                scanf("%d%d%d", &v1, &v2, &w);
                
                graph[v1][v2] = w;
                sum+=w;
            }
            
            int res = DFS(1);
            
            int ans = res<(sum-res)?res:(sum-res);
            printf("%d", ans);
        }

        return 0;
    }