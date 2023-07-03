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
    public partial class RecipeWindow : Window
    {
        public Recipe Recipe { get; private set; }

        public RecipeWindow()
        {
            InitializeComponent();
            Recipe = new Recipe();
        }

        private void AddIngredientButton_Click(object sender, RoutedEventArgs e)
        {
            IngredientWindow ingredientWindow = new IngredientWindow();
            if (ingredientWindow.ShowDialog() == true)
            {
                Ingredient ingredient = ingredientWindow.Ingredient;
                Recipe.Ingredients.Add(ingredient);
                ingredientsListBox.Items.Add(ingredient.Name);
            }
        }

        private void AddStepButton_Click(object sender, RoutedEventArgs e)
        {
            string step = stepTextBox.Text;
            if (!string.IsNullOrEmpty(step))
            {
                Recipe.Steps.Add(step);
                stepsListBox.Items.Add(step);
                stepTextBox.Text = string.Empty;
            }
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            Recipe.Name = recipeNameTextBox.Text;
            DialogResult = true;
        }
    }
}
