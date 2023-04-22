using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp_Szamlavezetes
{
    class Tetel
    {
        int id;
        string datum;
        int osszeg;
        string partner;
        string fokategoria;
        string alkategoria;

        public Tetel(string csvSor)
        {
            string[] mezok = csvSor.Split(';');
            this.id = int.Parse(mezok[0]);
            this.datum = mezok[1];
            this.osszeg = int.Parse(mezok[2]);
            this.partner = mezok[3];
            this.fokategoria = mezok[4];
            this.alkategoria = mezok[5];
        }

        public int Id { get => id; set => id = value; }
        public string Datum { get => datum; set => datum = value; }
        public int Osszeg { get => osszeg; set => osszeg = value; }
        public string Partner { get => partner; set => partner = value; }
        public string Fokategoria { get => fokategoria; set => fokategoria = value; }
        public string Alkategoria { get => alkategoria; set => alkategoria = value; }


    }
}
