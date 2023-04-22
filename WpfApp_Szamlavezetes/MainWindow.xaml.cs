using System;
using System.Collections.Generic;
using System.IO;
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

namespace WpfApp_Szamlavezetes
{

    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        List<Tetel> tetelek = new List<Tetel>();

        public MainWindow()
        {
            InitializeComponent();
            lbList.ItemsSource = tetelek;
        }

        private void btnRogzit_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                int id = int.Parse(txtId.Text);

            }
            catch (FormatException)
            {
                MessageBox.Show("Az azonosító nem megfelelő formátumú");
                txtId.Clear();
                txtId.Focus();
                return;
            }
            try
            {
                int osszeg = int.Parse(txtOsszeg.Text);
            }
            catch (FormatException)
            {
                MessageBox.Show("Az összeg nem megfelelő formátumú");
                txtOsszeg.Clear();
                txtOsszeg.Focus();
                return;
            }
            if (txtId.Text == "" || dpDatum.Text == "" || txtOsszeg.Text == "" || txtPartner.Text == "" || txtPartner.Text == "" || txtAlkategoria.Text == "")
            {
                MessageBox.Show("Nem töltött ki minden mezőt!");
                return;
            }
            else
            {
                String csvSor = $"{txtId.Text};{dpDatum.Text};{txtOsszeg.Text};{txtPartner.Text};{txtFokategoria.Text};{txtAlkategoria.Text}";
                Tetel newTetel = new Tetel(csvSor);
                tetelek.Add(newTetel);
                lbList.Items.Refresh();
            }

        }

        private void btnElment_Click(object sender, RoutedEventArgs e)
        {
            if (tetelek.Count == 0)
            {
                MessageBox.Show("A lista üres!");
                return;
            }
            else
            {
                StreamWriter sw = new StreamWriter("szamlalista.txt", append: true);
                foreach (var item in tetelek)
                {
                    string csvSor = $"{item.Id};{item.Datum};{item.Osszeg};{item.Partner};{item.Fokategoria};{item.Alkategoria}";
                    sw.WriteLine(csvSor);
                }
                sw.Close();
                MessageBox.Show("A fájl mentése sikeresen megtörtént!");
            }

        }
    }
}
