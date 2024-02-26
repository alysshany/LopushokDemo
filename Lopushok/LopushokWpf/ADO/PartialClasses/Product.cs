using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace LopushokWpf.ADO
{
	public partial class Product
	{
		public decimal Sum => ProductMaterial.Sum(x => x.MaterialCount * x.Material.Cost);
		public BitmapImage ProductImage
		{
			get
			{
				var bitmap = new BitmapImage();
				byte[] bytes;

				if (Image == null || Image == "")
				{
					bytes = File.ReadAllBytes(Directory.GetParent(Environment.CurrentDirectory).Parent.FullName +
											  $"\\Images\\picture.png");
				}
				else
				{
					bytes = File.ReadAllBytes(Directory.GetParent(Environment.CurrentDirectory).Parent.FullName +
											  $"\\Images{Image}");
				}

				var ms = new MemoryStream(bytes);


				bitmap.BeginInit();
				bitmap.StreamSource = ms;
				bitmap.EndInit();
				return bitmap;
			}
		}
	}
}
