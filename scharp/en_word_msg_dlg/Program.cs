﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace en_word_msg_dlg
{
    static class Program
    {
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        //static void Main()
        static void Main(string[ ] args)
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1(args));
        }
    }
}