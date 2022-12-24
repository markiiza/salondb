using BeautySaloon.Models;
using Microsoft.EntityFrameworkCore;
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
using System.Windows.Threading;

namespace BeautySaloon.Views
{
    /// <summary>
    /// Логика взаимодействия для blijnie.xaml
    /// </summary>
    public partial class blijnie : Page
    {
        int a = 0;
        public List<ClientService> Services { get; set; }
        private DispatcherTimer timer = new DispatcherTimer();
        void init()
        {
            InitializeComponent();
            
            Services = Session.Instance.Context.ClientServices.OrderBy(cs => cs.StartTime ).Where(cs => cs.StartTime < DateTime.Now.AddDays(2) && cs.StartTime > DateTime.Now).Include(cs => cs.Client).Include(cs => cs.Service).ToList();
            DataContext = this;
        }
        public blijnie()
        {
            timer.Interval = TimeSpan.FromSeconds(1);
            timer.Tick += Timer_Tick;
            timer.Start();
            init();
        }
        private void Timer_Tick(object? sender, EventArgs e)
        {
            a++;
            if (a % 1 == 0)
            {
                DataContext = null;
                init();
            }
        }
    }
}
