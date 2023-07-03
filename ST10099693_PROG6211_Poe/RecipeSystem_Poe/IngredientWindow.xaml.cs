using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace RecipeSystem_Poe
{
    public partial class IngredientWindow : Window
    {
        public Ingredient Ingredient { get; private set; }

        public IngredientWindow()
        {
            InitializeComponent();
            Ingredient = new Ingredient();
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            Ingredient.Name = ingredientNameTextBox.Text;
            double quantity;
            double.TryParse(quantityTextBox.Text, out quantity);
            Ingredient.Quantity = quantity;
            Ingredient.Unit = unitTextBox.Text;
            int calories;
            int.TryParse(caloriesTextBox.Text, out calories);
            Ingredient.Calories = calories;
            Ingredient.FoodGroup = foodGroupTextBox.Text;
            DialogResult = true;
        }
    }
}
