   M S B A M L   `   `   `  ����K  GRecipeSystem_Poe, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:RecipeSystem_PoeRecipeSystem_Poe  5   	   !    RecipeSystem_Poe.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:RecipeSystem_Poe     5   	     � Title$  Recipe Manager��5   
   $	��450��6!   $
��800 ��6.    � WindowStartupLocation$ CenterScreen=�6;   .��5	      � ���	#FFF79898 � RowDefinitions 5
   
   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� -   5         ��Name$ recipeListBox��5      $��0��6)   $��10q�66   �� 5   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��Center=�6;   $��10q�6X   .+�5      �� -   5        $��
Add Recipe��5      $	��100��6*   66   �� 5      -   5        $��Display Recipe��5      $	��100��6.   6:   5      �� 5   
   -   5         ��Name$ recipeDetailsTextBox��5      $��2��60   $��10q�6=    �� 
IsReadOnly . 6I   5      5      