Vim�UnDo� ��*�Fx��/c�z.~�%�Cb����w������                              <       <   <   <    ]w�   F _�                             ����                                                                                                                                                                                                                                                                                                                                                             ]t7    �                   5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ]tI    �                   �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]tT     �                   �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]t]     �                   while (getline (cin, s))h5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]t^   	 �                   while (getline (cin, s))5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             ]td   
 �      	         "    while (getline (cin, s, '\n'))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]te     �      	   
              �      	   	    5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             ]t�     �                        stringstream 5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             ]t�    �      	   
              �      	   	    5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             ]t�    �                �         
    5�_�   
                 	       ����                                                                                                                                                                                                                                                                                                                                                             ]t�     �   	                    �   	          5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             ]u     �      	          -        stringstream ss (s.begin(), s.end());5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             ]u     �      	          	        `5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]u     �      
                 �      
   
    5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             ]u     �      	          *        if (s.find ('->') != string::npos)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]u    �      
                 �      
   
    5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             ]uA     �      
         !        int pos_c = s.find ('//')5�_�                    	   !    ����                                                                                                                                                                                                                                                                                                                                                             ]uF     �      
         "        int pos_c = s.find ('//"h)5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             ]uH    �      
         !        int pos_c = s.find ('//")5�_�                    	       ����                                                                                                                                                                                                                                                                                                                                                             ]uK    �               !        int pos_c = s.find ("//")    �   	                        �   	          5�_�                    
   !    ����                                                                                                                                                                                                                                                                                                                                                             ]u]     �   
          5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ]u]     �                       �             5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                             ]ui     �               &        if (pos_s != string::npos and 5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                             ]u}     �               @        if (pos_s != string::npos and (pos_c == string::npos or 5�_�                       *    ����                                                                                                                                                                                                                                                                                                                                                             ]u     �               *                (pos_c == string::npos or 5�_�                       8    ����                                                                                                                                                                                                                                                                                                                                                             ]u�    �               9                (pos_c == string::npos or pos_c > pos_s))    �                           �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]u�    �                           �             5�_�                       +    ����                                                                                                                                                                                                                                                                                                                                                             ]u�   ! �                           �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]u�     �                            cout << s << endl;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ]u�     �             �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ]u�   # �                           cout << s << endl;5�_�      !               	       ����                                                                                                                                                                                                                                                                                                                                                             ]u�     �      
         "        int pos_c = s.find ("//");5�_�       "           !   
       ����                                                                                                                                                                                                                                                                                                                                                             ]u�   ( �   	            "        int pos_s = s.find ("->");5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                             ]v*     �               ;                (pos_c == string::npos or pos_c > pos_s)) {5�_�   "   $           #      )    ����                                                                                                                                                                                                                                                                                                                                                             ]v.   - �               ;                (pos_c != string::npos or pos_c > pos_s)) {5�_�   #   %           $      #    ����                                                                                                                                                                                                                                                                                                                                                             ]vC     �               ,            s.replace (pos_c, pos_c+2, ".");5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                                                             ]vM     �                <                (pos_c != string::npos and pos_c > pos_s)) {5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                             ]vN     �                               �             5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                             ]vS     �                               ())5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                             ]vW   / �               ,            s.replace (pos_c, pos_s+2, ".");5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                             ]v[     �                               (pos_c ))5�_�   )   +           *      '    ����                                                                                                                                                                                                                                                                                                                                                             ]v`     �               (                (pos_c == string::npos))5�_�   *   ,           +      +    ����                                                                                                                                                                                                                                                                                                                                                             ]vc     �               ,                (pos_c == string::npos) or )5�_�   +   -           ,      *    ����                                                                                                                                                                                                                                                                                                                                                             ]vg   2 �               ,                (pos_c == string::npos or ))5�_�   ,   .           -      9    ����                                                                                                                                                                                                                                                                                                                                                             ]vs     �               9                (pos_c == string::npos or pos_c > pos_s))5�_�   -   /           .      :    ����                                                                                                                                                                                                                                                                                                                                                             ]vv   4 �               :                (pos_c == string::npos or pos_c > pos_s)) 5�_�   .   1           /      %    ����                                                                                                                                                                                                                                                                                                                                                             ]v�   6 �               ,            s.replace (pos_s, pos_s+2, ".");5�_�   /   2   0       1      $    ����                                                                                                                                                                                                                                                                                                                                                             ]v�     �                           �             5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                                                             ]v�     �                            cout << 5�_�   2   4           3          ����                                                                                                                                                                                                                                                                                                                                                             ]v�     �                           �             5�_�   3   5           4          ����                                                                                                                                                                                                                                                                                                                                                             ]v�     �                           printf("%ld"5�_�   4   6           5          ����                                                                                                                                                                                                                                                                                                                                                             ]v�     �                           printf("%lud"5�_�   5   7           6          ����                                                                                                                                                                                                                                                                                                                                                             ]v�   7 �                           printf("%lu"5�_�   6   8           7      &    ����                                                                                                                                                                                                                                                                                                                                                             ]wK   : �               ,            s.replace (pos_s, pos_s+1, ".");5�_�   7   9           8          ����                                                                                                                                                                                                                                                                                                                                                             ]w^     �                #            s.replace (pos_s, ".");5�_�   8   :           9          ����                                                                                                                                                                                                                                                                                                                                                             ]w^   ; �                           �             5�_�   9   ;           :          ����                                                                                                                                                                                                                                                                                                                                                             ]w�   < �               !            printf("%lu", pos_s);5�_�   :   <           ;          ����                                                                                                                                                                                                                                                                                                                                                             ]w�   B �               &        if (pos_s != string::npos and 5�_�   ;               <          ����                                                                                                                                                                                                                                                                                                                                                             ]w�   F �                           �             5�_�   /           1   0      $    ����                                                                                                                                                                                                                                                                                                                                                             ]v�     �               <                (pos_c == string::npoos or pos_c > pos_s)) {5��