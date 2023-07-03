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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace RecipeSystem_Poe
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private List<Recipe> recipes;

        public MainWindow()
        {
            InitializeComponent();
            recipes = new List<Recipe>();
        }

        private void AddRecipeButton_Click(object sender, RoutedEventArgs e)
        {
            RecipeWindow recipeWindow = new RecipeWindow();
            if (recipeWindow.ShowDialog() == true)
            {
                Recipe recipe = recipeWindow.Recipe;
                recipes.Add(recipe);
                recipeListBox.Items.Add(recipe.Name);
            }
        }

        private void DisplayRecipeButton_Click(object sender, RoutedEventArgs e)
        {
            string selectedRecipeName = recipeListBox.SelectedItem as string;
            Recipe selectedRecipe = recipes.FirstOrDefault(r => r.Name == selectedRecipeName);
            if (selectedRecipe != null)
            {
                DisplayRecipe(selectedRecipe);
            }
        }

        private void DisplayRecipe(Recipe recipe)
        {
            recipeDetailsTextBox.Text = "Recipe Name: " + recipe.Name + Environment.NewLine;
            recipeDetailsTextBox.Text += "Ingredients:" + Environment.NewLine;
            foreach (Ingredient ingredient in recipe.Ingredients)
            {
                recipeDetailsTextBox.Text += ingredient.Quantity + " " + ingredient.Unit + " of " + ingredient.Name +
                                             Environment.NewLine;
            }

            recipeDetailsTextBox.Text += "Steps:" + Environment.NewLine;
            int stepCount = 1;
            foreach (string step in recipe.Steps)
            {
                recipeDetailsTextBox.Text += "Step " + stepCount + ": " + step + Environment.NewLine;
                stepCount++;
            }
        }
    }
}
