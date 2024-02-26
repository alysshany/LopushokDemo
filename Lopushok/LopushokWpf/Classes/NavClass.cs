using LopushokWpf.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LopushokWpf.Classes
{
	public class NavClass
	{
		public static LopushokWindow main;
		public static List<NavComponentsClass> navs = new List<NavComponentsClass>();

		private static void Update(NavComponentsClass nav)
		{
			main.MainFrame.Navigate(nav.Page);
		}

		public static void NextPage(NavComponentsClass nav)
		{
			navs.Add(nav);
			Update(nav);
		}

		public static void BackPage()
		{
			if (navs.Count > 1)
			{
				navs.Remove(navs[navs.Count - 1]);
				Update(navs[navs.Count - 1]);
			}
		}
	}
}
