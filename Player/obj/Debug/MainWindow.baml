   M S B A M L   `   `   `  ����A  =Player, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PlayerPlayer  5   	       Player.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:Player     5   	   U QMaterialDesignThemes.Wpf, Version=2.3.1.953, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	   -   5          � Icon$  Images/fav.ico��5   	    � Title$ Music For You��5
   	   $	��800��6   $	��500��6,    � 
ResizeMode$ CanMinimize=�68    � WindowStartupLocation$ CenterScreen=�6R   
����İ� � 	Resources 5         ScrollThumbs �� 
TargetType �� Property �� Value �� 
TargetType	 �Name
 ��Name �� CornerRadius �� Triggers P� Property P� Value �� 
TargetName ]�Name ]� Thumb n�Name ]� IncreaseRepeatButton ��Name J� Opacity ]� DecreaseRepeatButton P� 
SourceName  ButtonSelectBrush  	DarkBrush �� Angle'  !MaterialDesignThemes.Wpf.PackIcon  Play�  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.3.1.953, Culture=neutral, PublicKeyToken=null]]   Kind �� EndPoint � MappingMode �� 
StartPoint � Color � Offset 	 Pause  
volume_low  volume_high  
mp3_repeat J� RenderTransformOrigin  
mp3_random 	 mp3_repeatOff 
 imageRotationStoryboard  �� 
TargetName! �� TargetProperty" W� From	# W� To$ g� 	BeginTime% g� Duration& g� RepeatBehavior�� 5   
   %>  &	        '�� D    &	 �    &	 
    &	 P    &	 �    &	 �    &	 T    &		 �    &	
     �� 5      " n�6)   .�5      ��  � �� 5      �� 5      " n�6*   .R�5      � $
	 Grid��6#   .+�5   "   �� $��Stretch=�6,   $��Stretch=�6J   $
��Auto��6f   $
��Auto��6s   
������ 6�   �� 5   "   $
 
Rectangle1��6)   $ 10��6=   $��Stretch=�6O   $��Stretch=�6m   $
��Auto��6�   $
��Auto��6�   #��z��6�   5       5      P� 5   "    �@�Tag$ 
Horizontal��69   . �5   &   �� $ 
Rectangle1��6-    � ��$
 Auto��6V   �� 5   &   $ 
Rectangle1��6-    � ��$ 7��6W   5   #   5      5      5      �� 5!      " ��6/   .�5"      ��  �@��IsFlicksEnabled .  6;   �� 5#       � ��
 �����6/   �� 5$       � ��
 ��·�6/   �� 5%       � ��$ 10��6*   �� 5&       � �� 5'      �� 5(      " ��6*   .R�5)      � $	 GridRoot��6#   $��19��65   ��6@   Z� .+�5*   "   ]� $ 
PART_Track��6(   $��0��6<   ��. |�.   5+   &   n� 5,   *   $ Thumb��60   #��z��6?   #���   6i    5.   &   �� 5/   *   $ PageUp��67   $��ScrollBar.PageDownCommand��6G   $ 0Q�6k   |�.  6w    51   &   �� 52   *   $ PageDown��67   $��ScrollBar.PageUpCommand��6I   $ 0Q�6k   |�.  6w   54   #   55       57      P� 58   "   $ Thumb��6*    �@J�IsMouseOver . . �59   &   �� # �  6-   $ Thumb��6Y    � ��6l   5:   #   P� 5;   "   $ Thumb��6*    �@n�
IsDragging . . �5<   &   �� # �  6-   $ Thumb��6Q    � ��6d   5=   #   P� 5?   "    � {� .  . �5@   &   �� $ Thumb��6-    � y�$ 	Collapsed=�6V   5A   #   P� 5B   "    �@��Orientation$ 
Horizontal=�6A   . �5C   &   �� $ GridRoot��6-    �@�LayoutTransform 5D   *   �� 5E   .   $	 -90Q�6>   5G   '   �� 5H   &   $ 
PART_Track��6-    �@�LayoutTransform 5I   *   �� 5J   .   $	 -90Q�6>   5L   '   �� 5M   &    � ��$
 Auto��6>   �� 5N   &    � ��$ 12��6?   �� 5O   &   $ Thumb��6-    �@�Tag$ 
Horizontal��6O   �� 5P   &   $ PageDown��6-    � ��$ ScrollBar.PageLeftCommand��6V   �� 5Q   &   $ PageUp��6-    � ��$  ScrollBar.PageRightCommand��6T   5R   #   5T      5V      5W        5Y      $
 Play=�63   $��Center=�6?   $��30��6Z   $��30��6e   ��5Z      �� 5[      $ 0.5,1&�6*   $ RelativeToBoundingBox=�6;   $ 0.5,0&�6_   .��5\      � $ 	#FFD69016��6'   � 5]      $ 	#FFD6511E��6'   $ 0.747Q�69   � 5^      $ 	#FF9B330D��6'   $ 0.807Q�69   5_      5a        5b      $ Pause=�64   $��Center=�6A   $��30��6\   $��30��6g   ��5c      �� 5d      $ 0.5,1&�6*   $ RelativeToBoundingBox=�6;   $ 0.5,0&�6_   .��5e      � $ 	#FFD69016��6'   � 5f      $ 	#FFD6511E��6'   $ 0.747Q�69   � 5g      $ 	#FF9B330D��6'   $ 0.807Q�69   5h      5j        5k      $ 	VolumeOff=�69   $��Center=�6J   $��30��6e   $��30��6p   ��5l      �� 5m      $ 0.5,1&�6*   $ RelativeToBoundingBox=�6;   $ 0.5,0&�6_   .��5n      � $ 	#FFD69016��6'   � 5o      $ 	#FFD6511E��6'   $ 0.747Q�69   � 5p      $ 	#FF9B330D��6'   $ 0.807Q�69   5q      5s        5t      $ 
VolumeHigh=�6:   $��Center=�6L   $��30��6g   $��30��6r   ��5u      �� 5v      $ 0.5,1&�6*   $ RelativeToBoundingBox=�6;   $ 0.5,0&�6_   .��5w      � $ 	#FFD69016��6'   � 5x      $ 	#FFD6511E��6'   $ 0.747Q�69   � 5y      $ 	#FF9B330D��6'   $ 0.807Q�69   5z      5|        5}      $ 
RepeatOnce=�69   $��Center=�6K   $��30��6f   $��30��6q   $ 	2.2,0.533&�6}   ��5~      �� 5      $ 0.5,1&�6*   $ RelativeToBoundingBox=�6;   $ 0.5,0&�6_   .��5�      � $ 	#FFD69016��6'   � 5�      $ 	#FFD6511E��6'   $ 0.747Q�69   � 5�      $ 	#FF9B330D��6'   $ 0.807Q�69   5�      5�        5�      $ Shuffle=�69   $��Center=�6H   $��30��6c   $��30��6n   $ 	2.2,0.533&�6z   ��5�      �� 5�      $ 0.5,1&�6*   $ RelativeToBoundingBox=�6;   $ 0.5,0&�6_   .��5�      � $ 	#FFD69016��6'   � 5�      $ 	#FFD6511E��6'   $ 0.747Q�69   � 5�      $ 	#FF9B330D��6'   $ 0.807Q�69   5�      5�        5�      $ 	RepeatOff=�6<   $��Center=�6M   $��30��6h   $��30��6s   $ 	2.2,0.533&�6   ��5�      �� 5�      $ 0.5,1&�6*   $ RelativeToBoundingBox=�6;   $ 0.5,0&�6_   .��5�      � $ 	#FFD69016��6'   � 5�      $ 	#FFD6511E��6'   $ 0.747Q�69   � 5�      $ 	#FF9B330D��6'   $ 0.807Q�69   5�      5�      �� 5�      $  myImage��69   $-! 'RenderTransform.(RotateTransform.Angle)�6Y   .��5�      W� $" 0X�6"   $	# 360X�6+   $$ 0:0:0X�64   $% 0:0:10D�6F   $& Forever��6X   5�      5�      .��5�      � 
���   �.+�5�   
   r� -   5        $��mymedia��5�      ' r� LoadedBehavior$' Manual=�5�      ( r� UnloadedBehavior$( Close=�5�      5�      � 5�   
   ���	#44444444$��
10,10,10,0q�6&   $	��416��6:   $	��Top=�6G   .+�5�      � $	��Top=�6   .+�5�      �� -   5        $��butAddSongs��5�      ) � ToolTip$) Thêm bài hát��5�       0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 60   $
��Left=�5�      $��30��64   $
��Auto��6?   $��0,5,0,86q�6M   $ 0.3,-1.4&�5�   F   ��5�      Z� ��6/   Z� .��5�        $
 Plus=�6.   $��Center=�6:   $��20��6U   $��20��6`   ��5�      �� 5�      $ 0.5,1&�62   $ RelativeToBoundingBox=�6C   $ 0.5,0&�6g   .��5�   "   � $ 	#FFD69016��6/   � 5�   "   $ 	#FFD6511E��6/   $ 0.747Q�6A   � 5�   "   $ 	#FF9B330D��6/   $ 0.807Q�6A   5�      5�      5�      �� 5�      -   5        $��mp3Name��5�   B   
����� �$��Music For You��6*   $��Center=�6Q   $��
72,36,68,0q�6v   $��Center=�6�   $	��Top=�6�   $	��334��6�   $��31��6�   5�      � 5�      $	��Top=�6   $��0,60,0,0q�6+   $	��200��6=   .+�5�      A� $	��170��6   $	��170��6&   $��Center=�63   $��Center=�6P   ��5�      �� 5�      $ 0.5,1&�6.   $ RelativeToBoundingBox=�6?   $ 0.5,0&�6c   .��5�      � -   5        c1��$ Orange��5�   7   $
 0.71Q�6F   � 5�      $ Green��6+   � 5�      -   5        c2��$	 Red��5�   7   $	 0.6Q�6C   5�      5�      A� 5�      $	��150��6   $	��150��6&   $��Center=�63   $��Center=�6P   ��5�      
� 5�      .��5�      � $ 	#FF0C0604��6+   $ 1Q�6=   � 5�      $ Orange��6+   $ 0.047Q�6:   � 5�      $ Green��6+   $ 0.602Q�69   5�      5�      �� 5�      -   5        * ��Name$* myImage��5�   5   $) Hình Album bài hát��6   $��Images/logo.png��6F   $	��150��6_   $
��Auto��6k   $ 0.5, 0.5&�6y   + � Triggers+ 5�      :� 5�      , :� RoutedEvent$, FrameworkElement.Loaded��6'   [�5�      �� 5�   "   #��[
 62   5�      - J� OpacityMask- 5�      
� 5�      . 
� GradientOrigin$. 0.5,0.5&�6.   / 
� Center$/ 0.5,0.5&�6G   0 
� RadiusX$	0 0.5Q�6X   1 
� RadiusY$	1 0.5Q�6f   .��5�      � $ 	#ffffffff��6+   $	 0.9Q�6=   � 5�      $ 	#00ffffff��6+   $ 1Q�6=   5�      z�5�      �� 5�      $ 0Q�6*   5�      5�      �� 5�      -   5        $��Process��5�   :   $&)  Thanh tiến trình phát nhạc��6      MaterialDesignDiscreteSlider#���  6I   ;  5MaterialDesignThemes.Wpf.Transitions.TransitionAssist2   DisableTransitions2 .  $��Bottom=�5�      $��
10,0,90,51q�5�      3 �� IsMoveToPointEnabled3 . 5�      � 5�      $��Bottom=�6   $��5q�6.   4 � ColumnDefinitions4 5�      �� 5�      $��2* �6'   �� 5�      $	��45* �6'   �� 5�      $	��54* �6'   �� 5�      $��0* �6'   �� 5�      $
��241* �6'   �� 5�      $��0* �6'   �� 5�      $
��122* �6'   .+�5�      �� -	   5        5 ��Name$5 
stop_media��5�   ,   $) Tắt nhạc��6   #��[ 6Y   $
��Left=�6�   $��2��6�   $
��Auto��6�   $��0,8,0,0q�6	  $ 
1.75,0.625&�6  ��6�   Z� ��6�   Z� .��5�        $
 Stop=�6.   $��Center=�6:   $��30��6U   $��30��6`   $ 	2.2,0.533&�6l   ��5�      �� 5�      $ 0.5,1&�62   $ RelativeToBoundingBox=�6C   $ 0.5,0&�6g   .��5�   "   � $ 	#FFD69016��6/   � 5�   "   $ 	#FFD6511E��6/   $ 0.747Q�6A   � 5�   "   $ 	#FF9B330D��6/   $ 0.807Q�6A   5�      5      5     �� 5     -
   5        $
5 back��5  9   $#) Quya lại bài trước đó��6   #��[ 5     $
��Left=�5  G   $��4��6b   $��28,8,0,0q�5  ,   $ 
0.125,0.55&�6>   $
��Auto��6a   ��5     Z� ��6/   Z� .��5       $ SkipPrevious=�6.   $��Center=�6B   $��30��6]   $��30��6h   ��5     �� 5	     $ 0.5,1&�62   $ RelativeToBoundingBox=�6C   $ 0.5,0&�6g   .��5
  "   � $ 	#FFD69016��6/   � 5  "   $ 	#FFD6511E��6/   $ 0.747Q�6A   � 5  "   $ 	#FF9B330D��6/   $ 0.807Q�6A   5     5     5     �� 5     -   5        $��MediaButton��5  o   $) 
Play/Pause��6   $��
73,4,58,-4q�6�   $��4��6�   $
��Auto��6�   ��6.   Z� ��6D   Z� .��5     C� 6 C� ResourceKey$
6 Play��6&   5     �� 5     -   5        $
5 next��5  .   $) Chuyển bài��6   #��[ 5     $��Right=�5  G   $��0,8,5,0q�5     $��4��6*   $ -0.275,0.525&�5  ,   $
��Auto��6Q   ��5     Z� ��6/   Z� .��5       $ SkipNext=�6.   $��Center=�6>   $��30��6Y   $��30��6d   ��5     �� 5     $ 0.5,1&�62   $ RelativeToBoundingBox=�6C   $ 0.5,0&�6g   .��5  "   � $ 	#FFD69016��6/   � 5   "   $ 	#FFD6511E��6/   $ 0.747Q�6A   � 5!  "   $ 	#FF9B330D��6/   $ 0.807Q�6A   5"     5$     5%     9� 5'     -   5        7 9�Name$7 expander��5'  .   $) Âm lượng��6   8 9� ExpandDirection$8 Up=�6@   9 9� 
IsExpanded9 .  $��5��6�   $��
0,-35,0,-4q�6�   $��2��6�   ��6h   Z� ��6~   Z� ��5(     �� 5)     : �� Bullet: 5*     d� 5+  "   -   5        ; d�Name$; toggle_volume��5+  >   $
) Mute��6/   $��17��6�   $��
10,0,-10,0q�6�   ��6q   Z� ��6�   Z� .��5,  &     $ 	VolumeOff=�6>   $��Center=�6P   $��30��6k   $��30��6v   ��5-  *   �� 5.  .   $ 0.5,1&�6B   $ RelativeToBoundingBox=�6S   $ 0.5,0&�6w   .��5/  2   � $ 	#FFD69016��6?   � 50  2   $ 	#FFD6511E��6?   $ 0.747Q�6Q   � 51  2   $ 	#FF9B330D��6?   $ 0.807Q�6Q   52  /   54  '   55  #   57     .��59     �� -   5        < ��Name$< 
volume_bar��59  D   = � Value$	= 0.5Q�6X   > � Maximum$>  1Q�6d   ? � Minimum$? 0Q�6q   $��28��6}   $ 0.5,0.5&�6�   $��
47,0,-47,0q�6�   z�5:     V� 5;     .~�5<  "   �� �� 5=  "   �� 5>  "   $	 -90Q�62   T� 5?  "   5@     5B     5C     �� 5D     -   5        $5 	mode_play��5D  5   $!) Chuyển đổi chế độ��6   $
��Left=�6�   $
��Auto��6�   $��0,8,0,0q�6�   $��2��6�   $��59��6�   $��3��6�   ��6`   Z� ��6v   Z� .��5E     C� $6 mp3_repeatOff��6&   5F     5I     �� 5J     -   5        @ ��Name$@ lblProgressStatus��5J  �   $) Thời lượng bài hát��6   $��Center=�61   $��Center=�6S   
���2�2�$��384,344,27,43q�6�   $��00:00��6�   $ 0.333,0.778&�6�   ��6�   Z� 6�   5L     �� 5M  
   -   5        $��	lstbSongs��5O  '   $) Danh sách bài hát��5M     $��Bottom=�6.   $	��330��5N     $��
10,0,10,10q�6   ���#b4d9e3$ 0.5,0.5&�5Q      5R     ��%�   '��       �� 5S     " ��6   .�5T     ��  � ��
 �����6D   �� 5U      � ��$ 1q�68   6D   �� 5V      � ��$ 14(�61   6>   �� 5W      � ��$ Comic Sans MS)�63   6K   5X     5Y     ��5Z     �� 5[     .R�5\     �� 6   5]     5_     )  #MaterialDesignThemes.Wpf.DrawerHost  5b  
   $��10q�5c     $��Center=�5d     $��Center=�5e     $��2q�5f       MaterialDesignDivider#���  5g     $	��751��6I   $	��474��6V   A   LeftDrawerContentA 5h     � 5i     $��16q�6   4 5j     �� 5k     $��60 �6+   �� 5l     $	��300 �6+   B � RowDefinitionsB 5n     �� 5o     $
��120* �6(   �� 5p     $	��40* �6(   �� 5q     $	��40* �6(   �� 5r     $	��40* �6(   �� 5s     $	��40* �6(   �� 5t     $	��40* �6(   �� 5u     $	��40* �6(   �� 5v     $	��40* �6(   �� 5w     $	��450 �6(   .+�5y     �� $��2��6    $
��15,4q�64   $��Center=�6B   $��90��6_   CHI TIẾT BÀI HÁT6}   �� 5z     $��0��6   $��1��6,   $��Single: ��69   6N   �� 5{     -   5        $@ lbCaSi��5{  9   $��1��6   $��1��6)   6L   �� 5|     $��2��6   $��Time: ��6)   �� 5}     -   5        $@ lbtime��5}  9   $��2��6   $��1��6)   6K   �� 5~     $��3��6   $��Album: ��6)   6=   �� 5     -   5        $@ lbAlbum��5  9   $��3��6   $��1��6)   6L   �� 5�     $��4��6   $��Year: ��6)   6<   �� 5�     -   5        $@ lbYear��5�  9   $��4��6   $��1��6)   6K   �� 5�     $��5��6   $��Disk: ��6)   6<   �� 5�     -   5        $@ lbdisk��5�  9   $��5��6   $��1��6)   6K   �� 5�     $��6��6   $��Track: ��6)   6=   �� 5�     -   5        $@ lbTrack��5�  9   $��6��6   $��1��6)   6L   �� 5�     $��7��6   $��Genre: ��6)   6=   �� 5�     -   5        $@ lbGere��5�  9   $��7��6   $��1��6)   6K   �� 5�     $��8��6#   $��0��60   $��2��6@   .��5�     �� -   5        C ��Name$C lbLyric��5�  _   $��Stretch=�6$   $��Stretch=�6C   6s   5�     5�     .��5�     � $	��480��6   $	��480��6"   .+�5�     � $	��Top=�6   $��Right=�6/   .+�5�     �� $) Chi tiết bài hát��6   D   OpenDrawerCommand#��ZD 5�     "  System.Windows.Controls.DockE   Left#��ZE 5�     $��1��5�     $��0��5�     $��4q�5�     ��5�  8   Z� ��6N   Z� .��5�       $ FormatListBulleted=�62   $��Center=�6M   $��30��6h   $��30��6s   ��5�     �� 5�  "   $ 0.5,1&�66   $ RelativeToBoundingBox=�6G   $ 0.5,0&�6k   .��5�  &   � $ 	#FFD69016��63   � 5�  &   $ 	#FFD6511E��63   $ 0.747Q�6E   � 5�  &   $ 	#FF9B330D��63   $ 0.807Q�6E   5�  #   5�     5�     5�     5�     5�     5�     5�     