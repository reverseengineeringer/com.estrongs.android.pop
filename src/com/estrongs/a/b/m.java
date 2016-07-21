package com.estrongs.a.b;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.StatFs;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.dialog.jf;
import com.estrongs.android.util.ap;
import com.estrongs.android.widget.f;
import com.estrongs.fs.b.bc;
import com.estrongs.fs.b.bn;
import com.estrongs.fs.i;
import com.estrongs.fs.impl.usb.e;

class m
  extends f
  implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener
{
  bn a;
  boolean i = false;
  
  public m(d paramd, Activity paramActivity, String paramString, i parami, bn parambn)
  {
    super(paramActivity, paramString, parami);
    a = parambn;
    a(7);
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    long l1 = 0L;
    d.a(j, d());
    if (ap.aH(d.e(j))) {}
    for (l1 = e.k(d.e(j)); a.e > l1; l1 = l2 * l1)
    {
      long l2;
      if (ESActivity.H() != null)
      {
        paramDialogInterface = ESActivity.H();
        l2 = a.e;
        d locald = j;
        new jf(paramDialogInterface, l2, l1, "Error!", d.c().getString(2131231845)).show();
      }
      k();
      return;
      try
      {
        paramDialogInterface = new StatFs(d.e(j));
        paramInt = paramDialogInterface.getBlockSize();
        l2 = paramInt;
      }
      catch (Exception paramDialogInterface)
      {
        for (;;)
        {
          label136:
          l2 = 0L;
        }
      }
      try
      {
        paramInt = paramDialogInterface.getAvailableBlocks();
        l1 = paramInt;
      }
      catch (Exception paramDialogInterface)
      {
        break label136;
      }
    }
    if (!d.e(j).endsWith("/")) {
      a.i = (d.e(j) + "/");
    }
    if (ESActivity.H() != null)
    {
      bc.a(ESActivity.H(), a, true);
      i = true;
    }
    k();
  }
  
  /* Error */
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 23	com/estrongs/a/b/m:i	Z
    //   4: ifne +40 -> 44
    //   7: aload_0
    //   8: getfield 18	com/estrongs/a/b/m:j	Lcom/estrongs/a/b/d;
    //   11: aload_0
    //   12: getfield 25	com/estrongs/a/b/m:a	Lcom/estrongs/fs/b/bn;
    //   15: getfield 135	com/estrongs/fs/b/bn:j	Ljava/net/Socket;
    //   18: invokevirtual 141	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   21: sipush 404
    //   24: ldc -113
    //   26: invokevirtual 146	com/estrongs/a/b/d:a	(Ljava/io/OutputStream;ILjava/lang/String;)V
    //   29: aload_0
    //   30: getfield 25	com/estrongs/a/b/m:a	Lcom/estrongs/fs/b/bn;
    //   33: getfield 135	com/estrongs/fs/b/bn:j	Ljava/net/Socket;
    //   36: invokevirtual 149	java/net/Socket:close	()V
    //   39: aload_0
    //   40: invokespecial 150	com/estrongs/android/widget/f:k	()V
    //   43: return
    //   44: aload_0
    //   45: getfield 18	com/estrongs/a/b/m:j	Lcom/estrongs/a/b/d;
    //   48: aload_0
    //   49: getfield 25	com/estrongs/a/b/m:a	Lcom/estrongs/fs/b/bn;
    //   52: getfield 135	com/estrongs/fs/b/bn:j	Ljava/net/Socket;
    //   55: invokevirtual 141	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   58: sipush 200
    //   61: ldc -104
    //   63: invokevirtual 146	com/estrongs/a/b/d:a	(Ljava/io/OutputStream;ILjava/lang/String;)V
    //   66: goto -27 -> 39
    //   69: astore_1
    //   70: aload_0
    //   71: getfield 25	com/estrongs/a/b/m:a	Lcom/estrongs/fs/b/bn;
    //   74: getfield 135	com/estrongs/fs/b/bn:j	Ljava/net/Socket;
    //   77: invokevirtual 149	java/net/Socket:close	()V
    //   80: goto -41 -> 39
    //   83: astore_1
    //   84: goto -45 -> 39
    //   87: astore_1
    //   88: goto -49 -> 39
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	91	0	this	m
    //   0	91	1	paramDialogInterface	DialogInterface
    // Exception table:
    //   from	to	target	type
    //   0	29	69	java/lang/Exception
    //   44	66	69	java/lang/Exception
    //   70	80	83	java/lang/Exception
    //   29	39	87	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.b.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */