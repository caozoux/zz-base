using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace en_word_msg_dlg
{
    public partial class Form1 : Form
    {
        System.Timers.Timer t;
        public Form1()
        {
            InitializeComponent();
        }
        public Form1(string[] args)
        {
            int len;
            InitializeComponent();
            len = args.Length;
            if (len == 1)
            {
                test.Text = args[0];
            }
            else
            {
                test.Text += args.Length.ToString();
                test.Text = " no args";
            }
            //test.Text += "2";
            t = new System.Timers.Timer(3000);//实例化Timer类，设置间隔时间为10000毫秒；
            t.Elapsed += new System.Timers.ElapsedEventHandler(theout);//到达时间的时候执行事件；

            t.AutoReset = false;//设置是执行一次（false）还是一直执行(true)；

            t.Enabled = true;//是否执行System.Timers.Timer.Elapsed事件
        }
        public void theout(object source, System.Timers.ElapsedEventArgs e)
        {
            Application.Exit();
        }

        private void test_Click(object sender, EventArgs e)
        {

        }
    }
}
