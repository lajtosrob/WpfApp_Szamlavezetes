   M S B A M L   `   `   `  ����O  KWpfApp_Szamlavezetes, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:WpfApp_SzamlavezetesWpfApp_Szamlavezetes  5   	   %    WpfApp_Szamlavezetes.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:WpfApp_Szamlavezetes     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $��4* �6   �� 5      $��6* �6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      $��3* �6   .+�5   
   �� -   5         ��Name$ lbList��5   5   
����ح�$��10q�6)   $��1��6E   $��7��6U   �� 5   
    �� Orientation$ 
Horizontal=�6   $��Center=�5      $��Center=�5      .+�5      �� -   5         ��Name$ lblId��5      $��ID��6#   $	��100��60   $��30��6<   $��0 0 20 0q�6H   �� 5      -   5         ��Name$ txtId��5      $��30��6%   $	��100��61   $��Center=�5      5      �� 5!   
   $ 
Horizontal=�6   $��Center=�5"      $��Center=�5#      $��1��5$      .+�5%      �� -   5        $ lbDatum��5%      $��Dátum��6%   $	��100��65   $��30��6A   $��0 0 20 0q�6M   (  "System.Windows.Controls.DatePicker  5&      -   5          Name$ dpDatum��5&      $��30��6*   $	��100��66      Text$ 
2001.01.01��6B   $��Center=�6T   5'      �� 5)   
   $ 
Horizontal=�6   $��Center=�5*      $��Center=�5+      $��2��5,      .+�5-      �� -   5        $ 	lblOsszeg��5-      $��Összeg��6'   $	��100��68   $��30��6D   $��0 0 20 0q�6P   �� 5.      -   5        $ 	txtOsszeg��5.      $��30��6)   $	��100��65   $��Center=�5/      50      �� 52   
   $ 
Horizontal=�6   $��Center=�53      $��Center=�54      $��3��55      .+�56      �� -   5        $ 
lblPartner��56      $��Partner��6(   $	��100��6:   $��30��6F   $��0 0 20 0q�6R   �� 57      -	   5        $ 
txtPartner��57      $��30��6*   $	��100��66   $��Center=�6B   58      �� 5:   
   $ 
Horizontal=�6   $��Center=�5;      $��Center=�5<      $��4��5=      .+�5>      �� -
   5        $ lblFokategoria��5>      $��Főkategória��6,   $	��100��6B   $��30��6N   $��0 0 20 0q�6Z   �� 5?      -   5        $ txtFokategoria��5?      $��30��6.   $	��100��6:   $��Center=�6F   5@      �� 5B   
   $ 
Horizontal=�6   $��Center=�5C      $��Center=�5D      $��5��5E      .+�5F      �� -   5        $ lblAlkategoria��5F      $��Alkategória��6,   $	��100��6B   $��30��6N   $��0 0 20 0q�6Z   �� 5G      -   5        $ txtAlkategoria��5G      $��30��6.   $	��100��6:   $��Center=�6F   5H      �� 5J   
   $ 
Horizontal=�6   $��Center=�5K      $��Center=�5L      $��6��5M      .+�5N      �� -   5        	 ��Name$	 	btnRogzit��5N      $��Rögzít��6(   $	��100��69   $��30��6E   $��0 0 20 0q�6Q   6c   �� 5O      -   5        $	 	btnElment��5O      $��Elment��6(   $��30��69   $	��100��6E   6Q   5P      5Q      5R      