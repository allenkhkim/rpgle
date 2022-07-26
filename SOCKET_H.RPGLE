 000501  .090717      *--------------------------------------------------------------------*    
 000505  .090720      *                                                                         
 000506  .090720      *   S O C K E T S   P R O C E D U R E   P R O T O T Y P E S               
 000507  .090720      *                and some data descriptions                               
 000508  .090720      *                                                                         
 000509  .090720      *   This copy member describes RPG procedure prototypes and               
 000510  .090720      *   data definitions needed to use the socket functions.                  
 000511  .090720      *                                                                         
 000512  .090720      *   Data definitions are listed first, procedure prototypes               
 000513  .090720      *   follow.                                                               
 000514  .090720      *                                                                         
 000516  .090720      *---------------------------------------------------------------------    
 000517  .090720      * The information contained in this document has not been submitted       
 000518  .090720      * to any formal IBM test and is distributed AS IS.  The use of this       
 000519  .090720      * information or the implementation of any of these techniques is a       
 000520  .090720      * customer responsibility and depends on the customer's ability to        
 000521  .090720      * evaluate and integrate them into the customer's operational             
 000522  .090720      * environment.  See Special Notices in redbook SG24-5402 for more.        
 000523  .090720      *---------------------------------------------------------------------    
 000524  .090720                                                                                
 000556  .090720      *--------------------------------------------------------------------*    
 000601  .090720      *   D a t a   d e f i n i t i o n s                                       
 000602  .090720      *--------------------------------------------------------------------*    
 000604  .090720                                                                                
 000605  .090720      *-- Socket address information structure ------------------------         
 000606  .090720                                                                                
 000607  .090720                                                                                
 000608  .090720     D SocketAddr      DS                                                       
 000609  .090720     D   SinFamily                    5I 0                                      
 000610  .090720     D   SinPort                      5U 0                                      
 000611  .090720     D   SinAddr                     10U 0                                      
 000612  .090720     D   SinZero                      8A   Inz( *ALLX'00' )                     
 000613  .090720     D SockAddr        S               *   Inz( %Addr(SocketAddr) )             
 000614  .090720     D AddressLength   S             10I 0                                      
 000615  .090720     D AddrLen         S               *   Inz( %Addr(AddressLength) )          
 000616  .090720                                                                                
 000617  .090720                                                                                
 000618  .090720      *-- Host entry returned pointers --------------------------------         
 000619  .090720                                                                                
 000620  .090720     D HostEnt         DS                  Align Based(Host@)                   
 000621  .090720     D  HName@                         *                                        
 000700  .090720     D  HAliases@                      *                                        
 000800  .090720     D  HAddrType                    10I 0                                      
 000900  .090720     D  HLength                      10I 0                                      
 000901  .090720     D  HAddrList@                     *                                        
 000902  .090720      *-- Host entry data ---------------------------------------------         
 000903  .090720                                                                                
 000904  .090720     D HostEntData     DS                  Align Based(HostEntData@)            
 000905  .090720     D  HName                       256A                                        
 000906  .090720     D  HAliasesArr@                   *   Dim(65)                              
 000907  .090720     D  HAliasesArr                 256A   Dim(64)                              
 000908  .090720     D  HAddrArr@                      *   Dim(101)                             
 000909  .090720     D  HAddrArr                     10U 0 Dim(100)                             
 000910  .090720     D  OpenFlag                     10I 0                                      
 000911  .090720     D  F0@                            *                                        
 000912  .090720     D  FileP0                      260A                                        
 000913  .090720     D  Reserved0                   150A                                        
 000914  .090720     D  F1@                            *                                        
 000915  .090720     D  FileP1                      260A                                        
 000916  .090720     D  Reserved1                   150A                                        
 000917  .090720     D  F2@                            *                                        
 000918  .090720     D  FileP2                      260A                                        
 000919  .090720     D  Reserved2                   150A                                        
 000920  .090720     D                                                                          
 000921  .090720     D Server@         S               *   Inz                                  
 000922  .090720     D HostentData@    S               *   Inz                                  
 000923  .090720     D Host@           S               *   Inz                                  
 000924  .090720                                                                                
 000925  .090720      *-- I/O options (Fcntl) -----------------------------------------         
 000926  .090720                                                                                
 000927  .090720     D F_SETFL         S             10I 0 Inz(7)                               
 000928  .090720     D O_NONBLOCK      S             10I 0 Inz(128)                             
 000929  .090720                                                                                
 000930  .090720     D EWOULDBLOCK     C                   3406                                 
 000931  .090720                                                                                
 000933  .090720      *-- Error number information ------------------------------------         
 000934  .090720                                                                                
 000935  .090720     D ErrNo           S             10I 0 Based(ErrNo@)                        
 000936  .090720     D ErrNo@          S               *   Inz                                  
 000937  .090720     D ErrMsg          S             60A   Based(ErrMsg@)                       
 000938  .090720     D ErrMsg@         S               *   Inz                                  
 000939  .090720     D                                                                          
 000940  .090720      *-- Address families --------------------------------------------         
 000941  .090720                                                                                
 000942  .090720     D AF_UNIX         C                   1                                    
 000943  .090720     D AF_INET         C                   2                                    
 000944  .090720     D AF_NS           C                   6                                    
 000945  .090720     D AF_TELEPHONY    C                   99                                   
 000946  .090720                                                                                
 000947  .090720                                                                                
 000948  .090720      *-- Socket types ------------------------------------------------         
 000949  .090720                                                                                
 000950  .090720     D SOCK_STREAM     C                   1                                    
 000951  .090720     D SOCK_DGRAM      C                   2                                    
 001000  .090720     D SOCK_RAW        C                   3                                    
 001100  .090720     D SOCK_SEQPACKET  C                   5                                    
 001101  .090720                                                                                
 001102  .090720     D SOL_SOCKET      C                   -1                                   
 001103  .090720     D                                                                          
 001104  .090720      *-- Socket level options ----------------------------------------         
 001105  .090720                                                                                
 001106  .090720     D SO_BROADCAST    C                   5                                    
 001107  .090720     D SO_DEBUG        C                   10                                   
 001108  .090720     D SO_DONTROUTE    C                   15                                   
 001109  .090720     D SO_ERROR        C                   20                                   
 001110  .090720     D SO_KEEPALIVE    C                   25                                   
 001111  .090720     D SO_LINGER       C                   30                                   
 001112  .090720                                                                                
 001113  .090720     D SO_REUSEADDR    C                   55                                   
 001114  .090720     D                                                                          
 001115  .090720      *-- Internet address specifications -----------------------------         
 001116  .090720                                                                                
 001117  .090720     D INADDR_ANY      C                   0                                    
 001118  .090720     D INADDR_BROADCA  C                   -1                                   
 001119  .090720     D INADDR_LOOPBCK  C                   X'7F000000'                          
 001120  .090720     D INADDR_NONE     C                   -1                                   
 001121  .090720     D                                                                          
 001122  .090720      *-- Socket descritption bits in 4 byte unsigned integers                  
 001123  .090720                                                                                
 001124  .090720     D FD_Set          Ds                                                       
 001125  .090720     D  FDes                         10U 0 Dim(7)                               
 001126  .090720                                                                                
 001127  .090720      *-- Inheritance structure for Spawn function --------------------         
 001128  .090720                                                                                
 001129  .090720     D SETSIGMASK      C                   X'00000002'                          
 001130  .090720     D SETSIGDEF       C                   X'00000004'                          
 001131  .090720     D SETPGROUP       C                   X'00000008'                          
 001132  .090720     D SETTHREAD_NP    C                   X'00000010'                          
 001133  .090720     D SETPJ_NP        C                   X'00000020'                          
 001134  .090720     D FDCLOSED        C                   -1                                   
 001135  .090720     D NEWPGROUP       C                   -1                                   
 001136  .090720     D MAX_NUM_ARGS    C                   255                                  
 001137  .090720     D                                                                          
 001138  .090720      *================================================================         
 001139  .090720      *   S u b p r o c e d u r e   p r o t o t y p e s                         
 001140  .090720      *================================================================         
 001141  .090720                                                                                
 001142  .090720                                                                                
 001143  .090720      *-- Socket --- Create a socket ----------------------------------         
 001144  .090720                                                                                
 001145  .090720      *   int socket(int address_family,                                        
 001146  .090720      *              int type,                                                  
 001147  .090720      *              int protocol)                                              
 001148  .090720                                                                                
 001149  .090720     D Socket          Pr            10I 0 Extproc('socket')                    
 001150  .090720                                                                                
 001151  .090720     D                               10I 0 Value                                
 001152  .090720     D                               10I 0 Value                                
 001153  .090720     D                               10I 0 Value                                
 001154  .090720     D                                                                          
 001155  .090720      *-- Setsockopt --- Set socket options                                     
 001156  .090720                                                                                
 001157  .090720      *   int setsockopt(int socket_descriptor,                                 
 001158  .090720      *                  int level,                                             
 001159  .090720      *                  int option_name,                                       
 001160  .090720      *                  char *option_value,                                    
 001161  .090720      *                  int option_length)                                     
 001162  .090720      *                                                                         
 001163  .090720     D SetsockOpt      Pr            10I 0 Extproc('setsockopt')                
 001164  .090720                                                                                
 001165  .090720     D                               10I 0 Value                                
 001166  .090720     D                               10I 0 Value                                
 001167  .090720     D                               10I 0 Value                                
 001168  .090720     D                                 *   Value                                
 001169  .090720     D                               10I 0 Value                                
 001171  .090720     D                                                                          
 001172  .090720      *-- Bind --- Bind to a socket -----------------------------------         
 001173  .090720                                                                                
 001174  .090720      *   int bind(int socket_descriptor,                                       
 001175  .090720      *            struct sockaddr *local_address,                              
 001176  .090720      *            int address_length)                                          
 001177  .090720                                                                                
 001178  .090720     D Bind            Pr            10I 0 ExtProc('bind')                      
 001179  .090720                                                                                
 001180  .090720     D                               10I 0 Value                                
 001181  .090720     D                                 *   Value                                
 001182  .090720     D                               10I 0 Value                                
 001183  .090720                                                                                
 001184  .090720      *-- Listen --- Invite for the incoming connections requests               
 001185  .090720                                                                                
 001186  .090720      *   int listen(int socket_descriptor,                                     
 001187  .090720      *              int back_log);                                             
 001188  .090720                                                                                
 001189  .090720     D Listen          Pr            10I 0 ExtProc('listen')                    
 001190  .090720                                                                                
 001191  .090720     D                               10I 0 Value                                
 001192  .090720     D                               10I 0 Value                                
 001193  .090720                                                                                
 001194  .090720      *   int accept(int socket_descriptor,                                     
 001195  .090720      *              struct sockaddr *address,                                  
 001196  .090720      *              int *address_length);                                      
 001197  .090720     D                                                                          
 001198  .090720      *-- Accept --- Accept an incoming connections request                     
 001199  .090720                                                                                
 001200  .090720     D Accept          Pr            10I 0 ExtProc('accept')                    
 001201  .090720                                                                                
 001202  .090720     D                               10I 0 Value                                
 001203  .090720     D                                 *   Value                                
 001204  .090720     D                                 *   Value                                
 001205  .090720     D                                                                          
 001206  .090720      *-- InetAddr --- Transform IP address from dotted form ----------         
 001207  .090720                                                                                
 001208  .090720      *   unsigned long inet_addr(char *address_string);                        
 001209  .090720                                                                                
 001210  .090720     D InetAddr        Pr            10U 0 ExtProc('inet_addr')                 
 001211  .090720                                                                                
 001212  .090720     D                                 *   Value                                
 001213  .090720                                                                                
 001215  .090720      *-- GetHostByName --- Get host address from name ----------------         
 001216  .090720                                                                                
 001217  .090720      *   struct HostEnt {                                                      
 001218  .090720      *      char   *h_name;                                                    
 001219  .090720      *      char   **h_aliases;                                                
 001220  .090720      *      int    h_addrtype;                                                 
 001221  .090720      *      int    h_length;                                                   
 001222  .090720      *      char   **h_addr_list;                                              
 001223  .090720      *   };                                                                    
 001224  .090720                                                                                
 001225  .090720      *   struct HostEnt *GetHostByName(char *host_name);                       
 001226  .090720                                                                                
 001227  .090720     D GetHostByName   Pr              *   Extproc('gethostbyname')             
 001228  .090720                                                                                
 001229  .090720     D                                 *   Value                                
 001230  .090720     D                                                                          
 001231  .090720      *-- Connect --- Connect to the server                                     
 001232  .090720                                                                                
 001233  .090720      *   int connect(int socket_descriptor,                                    
 001234  .090720      *               struct sockaddr *destination_address,                     
 001235  .090720      *               int address_length);                                      
 001236  .090720                                                                                
 001237  .090720     D Connect         Pr            10I 0 Extproc('connect')                   
 001238  .090720                                                                                
 001239  .090720     D                               10I 0 Value                                
 001240  .090720     D                                 *   Value                                
 001241  .090720     D                               10I 0 Value                                
 001242  .090720                                                                                
 001243  .090720      *-- FCntl --- File control for I/O                                        
 001244  .090720                                                                                
 001245  .090720      *   int fcntl(int file_descriptor, int cmd, . . .);                       
 001246  .090720                                                                                
 001247  .090720     D FCntl           Pr            10I 0 Extproc('fcntl')                     
 001248  .090720                                                                                
 001249  .090720     D                               10I 0 Value                                
 001250  .090720     D F_SETFL                       10I 0 Value                                
 001251  .090720     D O_NONBLOCK                    10I 0 Value  Options(*Nopass)              
 001252  .090720     D                                                                          
 001253  .090720      *-- FDzero --- Zero socket description bit (for Select function)          
 001254  .090720                                                                                
 001255  .090720      *   #define FD_ZERO(fds)  (memset(fds,0,sizeof(fd_set)))                  
 001256  .090720                                                                                
 001257  .090720     D FDZero          Pr                                                       
 001258  .090720                                                                                
 001259  .090720     D  FDes                         10U 0 Dim(7)                               
 001260  .090720                                                                                
 001261  .090720                                                                                
 001262  .090720      *-- FDSet --- Set socket description bit (for Select function)            
 001263  .090720                                                                                
 001264  .090720      *   #define FD_SET(fd, fds)  \                                            
 001265  .090720      *         set bits                                                        
 001266  .090720                                                                                
 001267  .090720     D FDSet           Pr                                                       
 001268  .090720                                                                                
 001269  .090720     D  FD                           10I 0 Value                                
 001270  .090720     D  FDes                         10U 0 Dim(7)                               
 001271  .090720     D                                                                          
 001272  .090720      *-- FDClr --- Clear socket description bit (for Select function)          
 001273  .090720                                                                                
 001274  .090720      *   #define FD_CLR(fd, fds)   \                                           
 001275  .090720      *                                                                         
 001276  .090720                                                                                
 001277  .090720     D FDClr           Pr                                                       
 001278  .090720                                                                                
 001279  .090720     D  FD                           10I 0 Value                                
 001280  .090720     D  FDes                         10U 0 Dim(7)                               
 001281  .090720                                                                                
 001282  .090720                                                                                
 001283  .090720      *-- FDIsSet --- Test if a socket description bit is set on                
 001284  .090720      *               (for Select function)                                     
 001285  .090720                                                                                
 001286  .090720      *   #define FD_ISSET(fd, fds)  \                                          
 001287  .090720      *                                                                         
 001288  .090720                                                                                
 001289  .090720     D FDIsSet         Pr            10I 0                                      
 001290  .090720                                                                                
 001291  .090720     D  FD                           10I 0 Value                                
 001292  .090720     D  FDes                         10U 0 Dim(7)                               
 001293  .090720     D                                                                          
 001294  .090720      *-- Select -  Wait for events on multiple sockets                         
 001295  .090720      *             and set bits for active sockets                             
 001296  .090720                                                                                
 001297  .090720      *   int select(int max_descriptor,                                        
 001298  .090720      *              fd_set *read_set,                                          
 001299  .090720      *              fd_set *write_set,                                         
 001300  .090720      *              fd_set *exception_set,                                     
 001301  .090720      *              struct timeval *wait_time);                                
 001302  .090720                                                                                
 001303  .090720     D Select          Pr            10I 0 ExtProc('select')                    
 001304  .090720                                                                                
 001305  .090720     D  MaxDescr                     10I 0 Value                                
 001306  .090720     D  ReadSet                        *   Value                                
 001307  .090720     D  WriteSet                       *   Value                                
 001308  .090720     D  ExceptSet                      *   Value                                
 001309  .090720     D  WaitTime                       *   Value                                
 001310  .090720                                                                                
 001311  .090720      *-- Read --- Read data from the socket                                    
 001312  .090720                                                                                
 001313  .090720      *   ssize_t read(int descriptor,                                          
 001314  .090720      *                void *buffer,                                            
 001315  .090720      *                size_t buffer_length);                                   
 001316  .090720                                                                                
 001317  .090720     D Read            Pr            10I 0 Extproc('read')                      
 001318  .090720                                                                                
 001319  .090720     D                               10I 0 Value                                
 001320  .090720     D                                 *   Value                                
 001321  .090720     D                               10U 0 Value                                
 001322  .090720                                                                                
 001323  .090720      *-- Recv --- Receive data from the socket                                 
 001324  .090720                                                                                
 001325  .090720      *   int recv(int descriptor,                                              
 001326  .090720      *            char *buffer,                                                
 001327  .090720      *            int  buffer_length,                                          
 001328  .090720      *            int  flags);                                                 
 001329  .090720                                                                                
 001330  .090720     D Recv            Pr            10I 0 Extproc('recv')                      
 001331  .090720                                                                                
 001332  .090720     D                               10I 0 Value                                
 001333  .090720     D                                 *   Value                                
 001334  .090720     D                               10I 0 Value                                
 001335  .090720     D                               10I 0 Value                                
 001336  .090720                                                                                
 001337  .090720      *-- Write --- Write data to the socket                                    
 001338  .090720                                                                                
 001339  .090720      *   ssize_t write(int file_descriptor,                                    
 001340  .090720      *                 const void *buffer,                                     
 001341  .090720      *                 size_t buffer_length);                                  
 001342  .090720                                                                                
 001343  .090720     D Write           Pr            10I 0 ExtProc('write')                     
 001344  .090720                                                                                
 001345  .090720     D                               10I 0 Value                                
 001346  .090720     D                                 *   Value                                
 001347  .090720     D                               10U 0 Value                                
 001348  .090720     D                                                                          
 001349  .090720      *-- Send --- Send data to the socket                                      
 001350  .090720                                                                                
 001351  .090720      *   int send(int  descriptor,                                             
 001352  .090720      *            char *buffer,                                                
 001353  .090720      *            int  buffer_length,                                          
 001354  .090720      *            int  flags);                                                 
 001355  .090720                                                                                
 001356  .090720     D Send            Pr            10I 0 ExtProc('send')                      
 001357  .090720                                                                                
 001358  .090720     D                               10I 0 Value                                
 001359  .090720     D                                 *   Value                                
 001360  .090720     D                               10I 0 Value                                
 001361  .090720     D                               10I 0 Value                                
 001362  .090720                                                                                
 001363  .090720      *-- Close --- Close a socket                                              
 001364  .090720                                                                                
 001365  .090720      *   int close(int descriptor)                                             
 001366  .090720                                                                                
 001367  .090720     D Close           Pr                  ExtProc('close')                     
 001368  .090720                                                                                
 001369  .090720     D                               10I 0 Value                                
 001370  .090720                                                                                
 001371  .090720                                                                                
 001372  .090720      *-- GetErrNo ---- Get error number ----------------------------------     
 001373  .090720                                                                                
 001374  .090720      *   extern int * __errno(void);                                           
 001375  .090720                                                                                
 001376  .090720     D GetErrNo        Pr              *   ExtProc('__errno')                   
 001377  .090720                                                                                
 001378  .090720      *-- StrError ---- Get error text -----------------------------------      
 001379  .090720                                                                                
 001380  .090720      *   char *strerror(int errnum);                                           
 001381  .090720                                                                                
 001382  .090720     D StrError        Pr              *   ExtProc('strerror')                  
 001383  .090720                                                                                
 001384  .090720     D                               10I 0 Value                                
 001385  .090720                                                                                
 001386  .090720                                                                                
 001387  .090720      *-- Sleep --- Sleep function (delay job) ------------------------         
 001388  .090720                                                                                
 001389  .090720      *   unsigned int sleep( unsigned int seconds );                           
 001390  .090720                                                                                
 001391  .090720     D Sleep           Pr            10U 0 ExtProc('sleep')                     
 001392  .090720                                                                                
 001393  .090720     D                               10U 0 Value                                
 001394  .090720     D                                                                          
 001395  .090720      *-- Spawn --- Spawn function (create a process) -----------------         
 001396  .090720                                                                                
 001397  .090720      *   pid_t spawn( const char                *path,                         
 001398  .090720      *                const int                 fd_count,                      
 001399  .090720      *                const int                 fd_map[],                      
 001400  .090720      *                const struct inheritance  *inherit,                      
 001401  .090720      *                const char                *argv[],                       
 001402  .090720      *                const char                *envp[]);                      
 001403  .090720                                                                                
 001404  .090720     D Spawn           Pr            10I 0 ExtProc('Qp0zSpawn')                 
 001405  .090720                                                                                
 001406  .090720     D Path@                           *   Value                                
 001407  .090720     D FDCount                       10I 0 Value                                
 001408  .090720     D FDMap                           *   Value                                
 001409  .090720     D Inherit@                        *   Value                                
 001410  .090720     D ArgV@                           *   Value                                
 001411  .090720     D EnvP@                           *   Value                                
 001412  .090720     D                                                                          
 001413  .090720     D                                                                          
 001414  .090720     D                                                                          
 001415  .090720     D                                                                          
 001416  .090720     D                                                                          
 001417  .090720     D                                                                          
