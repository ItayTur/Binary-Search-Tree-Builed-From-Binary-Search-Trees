   M S B A M L   `   `   `  ����G  CBoxesStorage, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:Boxes_Wpf_ProjectBoxes_Wpf_Project  5   	   "    Boxes_Wpf_Project.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:Boxes_Wpf_Project     5   	     � Title$  Box Manager��5   	   $	��350��6   $	��525��6*   .��5	      � .+�5
   
   �� -   5         ��Name$ tbxWidth��5
      $
��Left=�6$   $��23��6?   $��	189,8,0,0q�6K    �� TextWrapping$
 Wrap=�6^   $	��Top=�6r   $	��120��6�    J� RenderTransformOrigin$ 0.473,-0.084&�6�   �� 5   
   -   5        $ 	tbxHeight��5      $
��Left=�6%   $��23��6@   $��
189,43,0,0q�6L   $
 Wrap=�6`   $	��Top=�6t   $	��120��6�   $ 0.473,-0.084&�6�   �� 5   
   -   5         ��Name$ lblWidth��5      $��Width:��6"   $
��Left=�63   $��	142,8,0,0q�6N   $	��Top=�6a   $��47��6y   $��23��6�   �� 5   
   -   5        $ 	lblHeight��5      $��Height:��6#   $
��Left=�65   $��
142,43,0,0q�6P   $	��Top=�6d   $��47��6|   $��37��6�   �� 5   
   -   5         ��Name$ btnAdd��5      $	��Add��6!   $
��Left=�6/   $��
66,118,0,0q�6J   $	��Top=�6^   $��76��6v   6�   �� 5   
   -   5        $ btnShowQuantity��5      $��Show quantity��6*   $
��Left=�6B   $��276,118,0,0q�6]   $	��Top=�6r   $��97��6�   6�   �� 5   
   -   5        $ btnBuy��5      $	��Buy��6!   $
��Left=�6/   $��172,118,0,0q�6J   $	��Top=�6_   $��76��6w   6�   �� 5   
   -   5        $ btnShowUpdates��5      $��Show Updates��6)   $
��Left=�6@   $��396,118,0,0q�6[   $	��Top=�6p   $��94��6�   6�   &   System.Windows.Controls.DataGrid  5   
   -	   5          Name$ dgrBoxes��5      $
��Left=�6%   $��
38,160,0,0q�6@   $	��Top=�6T   $	��118��6l   $	��246��6y   �� 5   
   -
   5        $ lableMessage��5      $��Message:��6&   $
��Left=�69   $��328,142,0,0q�6T   $	��Top=�6i   �� 5   
   -   5        $ tbxQuantity��5      $
��Left=�6'   $��23��6B   $��
189,80,0,0q�6N   $
 Wrap=�6b   $	��Top=�6v   $	��120��6�   $ 0.473,-0.084&�6�   �� 5   
   -   5        $ lblQuantity��5      $��	Quantity:��6%   $
��Left=�69   $��
132,76,0,0q�6T   $	��Top=�6h   $��57��6�   $��37��6�   �� 5   
   -   5         ��Name$ 
ScrollWrap��5      $
��Left=�6+   $	��121��6F   $��328,168,0,0q�6S   $	��Top=�6h   $	��162��6�   .��5      �� -   5         ��Name$ 
tblMessage��5      $
��Left=�6,   $
��Wrap=�6G   $	��Top=�6[   $	��144��6s   $	��111��6   5      5      5      