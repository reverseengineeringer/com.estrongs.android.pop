package com.estrongs.android.pop.view;

import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.usb.UsbFsException;
import com.estrongs.fs.impl.usb.UsbFsException.ERROR_CODE;
import com.estrongs.fs.impl.usb.g;
import com.estrongs.fs.impl.usb.k;

class dr
  implements k
{
  dr(dp paramdp, g paramg, h paramh) {}
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      try
      {
        a.c();
        dp.a(c, b);
        return;
      }
      catch (UsbFsException localUsbFsException)
      {
        str = dp.a(c, 2131427766);
        if (errorCode != UsbFsException.ERROR_CODE.USB_ERROR_TYPE_NOT_SUPPORTE) {
          break label77;
        }
      }
      String str = dp.b(c, 2131428474);
      for (;;)
      {
        ag.a(c.a, str, 1);
        FileExplorerActivity.M(c.a);
        return;
        label77:
        if (errorCode == UsbFsException.ERROR_CODE.USB_ERROR_IO_ERROR) {
          str = dp.c(c, 2131427851);
        }
      }
    }
    FileExplorerActivity.M(c.a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */