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
using Microsoft.Win32;
using System.IO;
using System.Windows.Threading;
using System.Drawing;
using System.ComponentModel;
using System.Globalization;

namespace Player
{
    /// <summary>
    /// Interação lógica para MainWindow.xam
    /// </summary>
    public partial class MainWindow : Window
    {
        string[] s;
        
        ListBoxItem song;
        bool keo;
        DispatcherTimer time;
        public MainWindow()
        {
            InitializeComponent();
            song = null;
            time = new DispatcherTimer();
            time.Interval = TimeSpan.FromSeconds(1);
            time.Tick += new EventHandler(time_Tick);
            keo = false;
        }

        private void time_Tick(object sender, EventArgs e)
        {
            if (!keo)
            {
                Process.Value = mymedia.Position.TotalSeconds;
            }
        }

    
        private void Run()
        {
            if (lstbSongs.SelectedItem != song)
            {
                song = (ListBoxItem)lstbSongs.SelectedItem;
                mymedia.Source = new Uri(song.Tag.ToString());
                Process.Value = 0;

                mymedia.Play();
                MediaButton.Content = FindResource("Pause");
                //.Text = System.IO.Path.GetFileName(song.Tag.ToString());
                var vFile = TagLib.File.Create(song.Tag.ToString());
                lbtime.Content = lblProgressStatus.Content=  vFile.Properties.Duration.ToString(@"mm\:ss");
                lbCaSi.Content = vFile.Tag.FirstPerformer;
                mp3Name.Content = vFile.Tag.Title.ToString();
                lbAlbum.Content = vFile.Tag.Album;
                lbYear.Content = vFile.Tag.Year.ToString(CultureInfo.InvariantCulture);
                lbGere.Content = vFile.Tag.Genres.Length > 0 ? vFile.Tag.Genres[0] : string.Empty;
                lbTrack.Content = vFile.Tag.Track.ToString(CultureInfo.InvariantCulture);
                lbdisk.Content = vFile.Tag.Disc.ToString(CultureInfo.InvariantCulture);
                if (vFile.Tag.Pictures.Length > 0)
                {
                    using (MemoryStream albumArtworkMemStream = new MemoryStream(vFile.Tag.Pictures[0].Data.Data))
                    {
                        BitmapImage albumImage = new BitmapImage();
                        albumImage.BeginInit();
                        albumImage.CacheOption = BitmapCacheOption.OnLoad;
                        albumImage.StreamSource = albumArtworkMemStream;
                        albumImage.EndInit();
                        myImage.Source = albumImage;
                        albumArtworkMemStream.Close();
                    }
                }

                lbLyric.Text = vFile.Tag.Lyrics;
            } 

            else
            {
                mymedia.Play();
            }
        }
        private void ButAddSongs_Click(object sender, RoutedEventArgs e)
        {
            
          
            OpenFileDialog ofd = new OpenFileDialog();
            ofd.Multiselect = true;
            if (ofd.ShowDialog() == true)
            {
                s = ofd.FileNames;
            }
            foreach (string fileName in s)
            {
                if (System.IO.Path.GetExtension(fileName) == ".mp3" || System.IO.Path.GetExtension(fileName) == ".MP3")
                {
                    ListBoxItem lstbI = new ListBoxItem();
                    lstbI.Content = System.IO.Path.GetFileNameWithoutExtension(fileName);
                    lstbI.Tag = fileName;
                    lstbSongs.Items.Add(lstbI);
                  
                }
                if (song == null)
                {
                    lstbSongs.SelectedIndex = 0;
                    Run();
                }
            }
        }

        private void Play_Click(object sender, RoutedEventArgs e)
        {
            //MediaButton.Content = FindResource(MediaButton.Content == FindResource("Play") ? "Stop" : "Play");
            if (MediaButton.Content == FindResource("Play"))
            {
                if (lstbSongs.HasItems)
                {
                    Run();
                    MediaButton.Content = FindResource("Pause");
                }
            }
            else
            {
                MediaButton.Content = FindResource("Play");
                mymedia.Pause();
            }

        }

        private void ButShutdown_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            if (lstbSongs.Items.IndexOf(song) > 0)
            {

                lstbSongs.SelectedIndex = lstbSongs.Items.IndexOf(song) - 1;
                Run();
            }
            else
            {

                lstbSongs.SelectedIndex = lstbSongs.Items.Count - 1;
                Run();
            }
        }

        private void Next_Click(object sender, RoutedEventArgs e)
        {
            if (lstbSongs.Items.IndexOf(song) < lstbSongs.Items.Count - 1)
            {

                lstbSongs.SelectedIndex = lstbSongs.Items.IndexOf(song) + 1;
                Run();
            }
            else
            {

                lstbSongs.SelectedIndex = 0;
                Run();
            }
        }

        private void Process_DragStarted(object sender, System.Windows.Controls.Primitives.DragStartedEventArgs e)
        {
            keo = true;
        }

        private void Process_DragCompleted(object sender, System.Windows.Controls.Primitives.DragCompletedEventArgs e)
        {
            keo = false;
            mymedia.Position = TimeSpan.FromSeconds(Process.Value);

        }

        private void Process_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            mymedia.Position = TimeSpan.FromSeconds(Process.Value);
        }

        private void Mymedia_MediaOpened(object sender, RoutedEventArgs e)
        {
            if (mymedia.NaturalDuration.HasTimeSpan)
            {
                TimeSpan t = mymedia.NaturalDuration.TimeSpan;
                Process.Maximum = t.TotalSeconds;
                Process.SmallChange = 1;
            }

            time.Start();
        }
        private void Mymedia_MediaEnded(object sender, RoutedEventArgs e)
        {
            Process.Value = 0;
            Next_Click(sender, e);
           
        }

        private void LstbSongs_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            mymedia.Stop();
            Run();
        }
        private void Volume_bar_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            mymedia.Volume = volume_bar.Value;

        }

        private void Mode_play_Click(object sender, RoutedEventArgs e)
        {
            if (mode_play.Content == FindResource("mp3_repeat"))
            {
                mode_play.Content = FindResource("mp3_repeatOff");


            }
            else if (mode_play.Content == FindResource("mp3_random"))
            {
                mode_play.Content = FindResource("mp3_repeat");


            }
            else
                mode_play.Content = FindResource("mp3_random");


        }

        private void Toggle_volume_Click(object sender, RoutedEventArgs e)
        {
            if (volume_bar.Value != 0)
                volume_bar.Value = 0;
            else
                volume_bar.Value = 0.5;
           
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn thoát chương trình?", "Thông báo", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.No)
                e.Cancel = true;
            
        }

        private void Stop_media_Click(object sender, RoutedEventArgs e)
        {
            mymedia.Stop();
        }
    }
}
