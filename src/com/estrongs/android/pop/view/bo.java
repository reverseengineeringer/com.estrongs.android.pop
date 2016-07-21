package com.estrongs.android.pop.view;

import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.usb.UsbFsException;
import com.estrongs.fs.impl.usb.UsbFsException.ERROR_CODE;
import com.estrongs.fs.impl.usb.g;
import com.estrongs.fs.impl.usb.k;

class bo
  implements k
{
  bo(bm parambm, g paramg, h paramh) {}
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      try
      {
        a.c();
        bm.a(c, b);
        return;
      }
      catch (UsbFsException localUsbFsException)
      {
        str = bm.a(c, 2131231901);
        if (errorCode != UsbFsException.ERROR_CODE.USB_ERROR_TYPE_NOT_SUPPORTE) {
          break label77;
        }
      }
      String str = bm.b(c, 2131232529);
      for (;;)
      {
        ak.a(c.a, str, 1);
        c.a.z();
        return;
        label77:
        if (errorCode == UsbFsException.ERROR_CODE.USB_ERROR_IO_ERROR) {
          str = bm.c(c, 2131231465);
        }
      }
    }
    c.a.z();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */