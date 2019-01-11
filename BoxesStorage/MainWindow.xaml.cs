using BinarySearchTree;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
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
using System.Windows.Threading;

namespace Boxes_Wpf_Project
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Manager manager;
        SqlConnection conn;
        SqlDataAdapter adapt;
        DispatcherTimer dispatcherTimer;
        string ConfigConnection = ConfigurationManager.AppSettings["ConfigConnection"];
        public MainWindow()
        {
            InitializeComponent();
            manager = new Manager();
            conn = new SqlConnection(@ConfigConnection);
            DisplayData();
            dispatcherTimer = new DispatcherTimer();
            dispatcherTimer.Tick += new EventHandler(RefreshDataGrid);
            dispatcherTimer.Interval = new TimeSpan(0, 1, 0);
            dispatcherTimer.Start();
        }

        private void RefreshDataGrid(object sender, EventArgs e)
        {
            DisplayData();
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            int width, height, quantity;
            if(IsAddValid(out width,out height,out quantity))
            {
                manager.Add(width, height, quantity);
                DisplayData();
                tblMessage.Text = "Added Successfully!";
            }
        }


        private void DisplayData()
        {
            conn.Open();
            DataTable dt = new DataTable();
            adapt = new SqlDataAdapter("select* from Sizes", conn);
            adapt.Fill(dt);
            dgrBoxes.ItemsSource = dt.DefaultView;
            dgrBoxes.AutoGenerateColumns = true;
            conn.Close();
        }

        private bool IsAddValid(out int width, out int height,out int quantity)
        {
            bool flag = false;
            width = 0;
            height = 0;
            quantity = 0;
            tblMessage.Foreground = Brushes.Red;
            if (!int.TryParse(tbxWidth.Text, out width) || !int.TryParse(tbxHeight.Text, out height)||!int.TryParse(tbxQuantity.Text,out quantity))
            {
                tblMessage.Text = "Width Height and quantity get Integer only!";
            }
            else if (width <= 0 || height <= 0 ||quantity<=0)
            {
                tblMessage.Text = "Width Height and quantity can't get zero or below numbers!";
            }
            else
            {
                flag = true;
                tblMessage.Foreground = Brushes.Green;
            }

            return flag;
        }


        private bool IsValid(out int width, out int height)
        {
            bool flag = false;
            width = 0;
            height = 0;
            tblMessage.Foreground = Brushes.Red;
            if (!int.TryParse(tbxWidth.Text, out width) || !int.TryParse(tbxHeight.Text, out height))
            {
                tblMessage.Text = "Width and Height get Integer only!";
            }
            else if (width <= 0 || height <= 0)
            {
                tblMessage.Text = "Width and Height can't get zero or below numbers!";
            }
            else
            {
                flag = true;
                tblMessage.Foreground = Brushes.Green;
            }

            return flag;
        }

        private void btnBuy_Click(object sender, RoutedEventArgs e)
        {
            int width, height;
            if(IsValid(out width,out height))
            {
                tblMessage.Text = manager.Buy(width, height);
                DisplayData();
            }
        }

        private void btnShowQuantity_Click(object sender, RoutedEventArgs e)
        {
            int width, height;
            if(IsValid(out width,out height))
            {
                tblMessage.Text= "Quantity: "+ manager.ShowQuantity(width, height);
            }
        }

        private void btnShowUpdates_Click(object sender, RoutedEventArgs e)
        {
            tblMessage.Text = manager.ShowUpdates();
        }
    }
}
