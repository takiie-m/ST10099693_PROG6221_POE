   M S B A M L   `   `   `  ����K  GRecipeSystem_Poe, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:RecipeSystem_PoeRecipeSystem_Poe  5   	   '    !RecipeSystem_Poe.IngredientWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:RecipeSystem_Poe     5   	     � Title$  Ingredient Details��5      $	��500��6"   $	��800��6/    � WindowStartupLocation$ CenterScreen=�6;   .��5	      � ���	#FFF79898 � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��Ingredient Name:��6   $��0��6+   $��69,18,567,2q�68   �� 5   
   -   5         ��Name$ ingredientNameTextBox��5      $��206,10,91,2q�61   �� 5   
   $��	Quantity:��6   $��1��6$   $��69,27,630,7q�61   $��6��6F   �� 5   
   -   5        $ quantityTextBox��5      $��1��6+   $��206,23,91,0q�68   $��6��6M   �� 5   
   $��Unit:��6   $��6��6    $��72,43,626,-55q�6-   �� 5   
   -   5        $ unitTextBox��5      $��4��6'   $��204,43,93,-57q�64   $��3��6K   �� 5   
   $��	Calories:��6   $��6��6$   $��69,108,590,-130q�61   �� 5   
   -   5        $ caloriesTextBox��5      $��6��6+   $��206,102,95,-136q�68   �� 5    
   $��Food Group:��6   $��6��6&   $��69,181,598,-207q�63   �� 5!   
   -   5        $ foodGroupTextBox��5!      $��6��6,   $��206,181,95,-210q�69   �� 5#   
   -   5        $
��Save��5#      $��6��6    $��246,278,216,-331q�6-   ���	#FF1B1B1B6`   ]� 5$   
   ��.  $��6��6*   $��
0,57,0,-57q�67   $��Center=�6K   $	��800��6h   5&      5'      