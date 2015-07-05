package com.estrongs.a.b;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.d.f;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.util.bc;
import com.estrongs.fs.b.bl;
import com.estrongs.fs.util.j;

class l
  extends cg
  implements DialogInterface.OnClickListener
{
  bl a;
  boolean b = false;
  ImageView c;
  CheckBox d;
  TextView e;
  TextView f;
  TextView g;
  
  public l(d paramd, Context paramContext, bl parambl)
  {
    super(paramContext);
    a = parambl;
    paramd = g.a(d.c()).inflate(2130903095, null);
    setContentView(paramd);
    e = ((TextView)paramd.findViewById(2131361822));
    f = ((TextView)paramd.findViewById(2131361808));
    g = ((TextView)paramd.findViewById(2131361950));
    c = ((ImageView)paramd.findViewById(2131361853));
    d = ((CheckBox)paramd.findViewById(2131362070));
    e.setText(a.f);
    if (a.c > 1) {
      f.setText(a.h + "...");
    }
    for (;;)
    {
      g.setText(j.c(a.e));
      if (a.l == null) {
        break label351;
      }
      paramd = new int[a.m * a.n];
      int i = 0;
      while (i < paramd.length)
      {
        paramd[i] = (a.l[(i * 4)] << 24 | a.l[(i * 4 + 1)] << 16 | a.l[(i * 4 + 2)] << 8 | a.l[(i * 4 + 3)]);
        i += 1;
      }
      f.setText(a.h);
    }
    paramd = Bitmap.createBitmap(paramd, a.m, a.n, Bitmap.Config.ARGB_8888);
    c.setImageBitmap(paramd);
    for (;;)
    {
      d.setVisibility(8);
      return;
      label351:
      if (a.b == 2) {
        c.setImageResource(2130837653);
      } else if (a.b == 3) {
        c.setImageResource(2130837861);
      } else {
        c.setImageDrawable(f.a(String.valueOf(bc.b(a.h))));
      }
    }
  }
  
  /* Error */
  public void dismiss()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 29	com/estrongs/a/b/l:b	Z
    //   4: ifne +35 -> 39
    //   7: aload_0
    //   8: getfield 24	com/estrongs/a/b/l:h	Lcom/estrongs/a/b/d;
    //   11: aload_0
    //   12: getfield 31	com/estrongs/a/b/l:a	Lcom/estrongs/fs/b/bl;
    //   15: getfield 181	com/estrongs/fs/b/bl:j	Ljava/net/Socket;
    //   18: invokevirtual 187	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   21: sipush 404
    //   24: ldc -67
    //   26: invokevirtual 192	com/estrongs/a/b/d:a	(Ljava/io/OutputStream;ILjava/lang/String;)V
    //   29: aload_0
    //   30: getfield 31	com/estrongs/a/b/l:a	Lcom/estrongs/fs/b/bl;
    //   33: getfield 181	com/estrongs/fs/b/bl:j	Ljava/net/Socket;
    //   36: invokevirtual 195	java/net/Socket:close	()V
    //   39: aload_0
    //   40: invokespecial 197	com/estrongs/android/ui/dialog/cg:dismiss	()V
    //   43: return
    //   44: astore_1
    //   45: aload_0
    //   46: getfield 31	com/estrongs/a/b/l:a	Lcom/estrongs/fs/b/bl;
    //   49: getfield 181	com/estrongs/fs/b/bl:j	Ljava/net/Socket;
    //   52: invokevirtual 195	java/net/Socket:close	()V
    //   55: goto -16 -> 39
    //   58: astore_1
    //   59: goto -20 -> 39
    //   62: astore_1
    //   63: goto -24 -> 39
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	l
    //   44	1	1	localException1	Exception
    //   58	1	1	localException2	Exception
    //   62	1	1	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   0	29	44	java/lang/Exception
    //   45	55	58	java/lang/Exception
    //   29	39	62	java/lang/Exception
  }
  
  /* Error */
  public void onClick(android.content.DialogInterface paramDialogInterface, int paramInt)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: iload_2
    //   4: iconst_m1
    //   5: if_icmpne +163 -> 168
    //   8: aload_0
    //   9: getfield 31	com/estrongs/a/b/l:a	Lcom/estrongs/fs/b/bl;
    //   12: getfield 203	com/estrongs/fs/b/bl:a	Ljava/lang/String;
    //   15: ifnull +170 -> 185
    //   18: aload_0
    //   19: getfield 31	com/estrongs/a/b/l:a	Lcom/estrongs/fs/b/bl;
    //   22: getfield 98	com/estrongs/fs/b/bl:h	Ljava/lang/String;
    //   25: invokestatic 206	com/estrongs/android/util/bc:g	(Ljava/lang/String;)Z
    //   28: ifne +16 -> 44
    //   31: aload_0
    //   32: getfield 31	com/estrongs/a/b/l:a	Lcom/estrongs/fs/b/bl;
    //   35: getfield 98	com/estrongs/fs/b/bl:h	Ljava/lang/String;
    //   38: invokestatic 208	com/estrongs/android/util/bc:h	(Ljava/lang/String;)Z
    //   41: ifeq +90 -> 131
    //   44: new 210	android/content/Intent
    //   47: dup
    //   48: ldc -44
    //   50: invokespecial 215	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   53: astore 5
    //   55: aload 5
    //   57: ldc -40
    //   59: invokevirtual 220	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   62: pop
    //   63: aload 5
    //   65: ldc -34
    //   67: iconst_1
    //   68: invokevirtual 226	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   71: pop
    //   72: aload 5
    //   74: ldc -28
    //   76: iconst_0
    //   77: invokevirtual 226	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   80: pop
    //   81: aload 5
    //   83: aload_0
    //   84: getfield 31	com/estrongs/a/b/l:a	Lcom/estrongs/fs/b/bl;
    //   87: getfield 203	com/estrongs/fs/b/bl:a	Ljava/lang/String;
    //   90: invokestatic 234	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   93: aload_0
    //   94: getfield 31	com/estrongs/a/b/l:a	Lcom/estrongs/fs/b/bl;
    //   97: getfield 98	com/estrongs/fs/b/bl:h	Ljava/lang/String;
    //   100: invokestatic 158	com/estrongs/android/util/bc:b	(Ljava/lang/String;)I
    //   103: invokestatic 236	com/estrongs/android/util/bc:h	(I)Ljava/lang/String;
    //   106: invokevirtual 240	android/content/Intent:setDataAndType	(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    //   109: pop
    //   110: aload_0
    //   111: getfield 24	com/estrongs/a/b/l:h	Lcom/estrongs/a/b/d;
    //   114: astore 6
    //   116: invokestatic 36	com/estrongs/a/b/d:c	()Landroid/app/Activity;
    //   119: aload 5
    //   121: aload_0
    //   122: getfield 31	com/estrongs/a/b/l:a	Lcom/estrongs/fs/b/bl;
    //   125: getfield 203	com/estrongs/fs/b/bl:a	Ljava/lang/String;
    //   128: invokestatic 245	com/estrongs/android/pop/view/utils/AppRunner:a	(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    //   131: aload_0
    //   132: iconst_1
    //   133: putfield 29	com/estrongs/a/b/l:b	Z
    //   136: aload_0
    //   137: getfield 24	com/estrongs/a/b/l:h	Lcom/estrongs/a/b/d;
    //   140: aload_0
    //   141: getfield 31	com/estrongs/a/b/l:a	Lcom/estrongs/fs/b/bl;
    //   144: getfield 181	com/estrongs/fs/b/bl:j	Ljava/net/Socket;
    //   147: invokevirtual 187	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   150: sipush 200
    //   153: ldc -9
    //   155: invokevirtual 192	com/estrongs/a/b/d:a	(Ljava/io/OutputStream;ILjava/lang/String;)V
    //   158: aload_0
    //   159: getfield 31	com/estrongs/a/b/l:a	Lcom/estrongs/fs/b/bl;
    //   162: getfield 181	com/estrongs/fs/b/bl:j	Ljava/net/Socket;
    //   165: invokevirtual 195	java/net/Socket:close	()V
    //   168: aload_1
    //   169: invokeinterface 250 1 0
    //   174: return
    //   175: astore 5
    //   177: aload 5
    //   179: invokevirtual 253	android/content/ActivityNotFoundException:printStackTrace	()V
    //   182: goto -51 -> 131
    //   185: aload_0
    //   186: getfield 31	com/estrongs/a/b/l:a	Lcom/estrongs/fs/b/bl;
    //   189: astore 5
    //   191: iload 4
    //   193: istore_3
    //   194: aload_0
    //   195: getfield 79	com/estrongs/a/b/l:d	Landroid/widget/CheckBox;
    //   198: invokevirtual 257	android/widget/CheckBox:isShown	()Z
    //   201: ifeq +18 -> 219
    //   204: iload 4
    //   206: istore_3
    //   207: aload_0
    //   208: getfield 79	com/estrongs/a/b/l:d	Landroid/widget/CheckBox;
    //   211: invokevirtual 260	android/widget/CheckBox:isChecked	()Z
    //   214: ifeq +5 -> 219
    //   217: iconst_1
    //   218: istore_3
    //   219: aload 5
    //   221: iload_3
    //   222: putfield 263	com/estrongs/fs/b/bl:k	Z
    //   225: invokestatic 268	com/estrongs/android/pop/esclasses/ESActivity:A	()Landroid/app/Activity;
    //   228: ifnull -60 -> 168
    //   231: aload_0
    //   232: getfield 24	com/estrongs/a/b/l:h	Lcom/estrongs/a/b/d;
    //   235: astore 5
    //   237: invokestatic 268	com/estrongs/android/pop/esclasses/ESActivity:A	()Landroid/app/Activity;
    //   240: astore 6
    //   242: aload_0
    //   243: getfield 24	com/estrongs/a/b/l:h	Lcom/estrongs/a/b/d;
    //   246: astore 7
    //   248: aload 5
    //   250: aload 6
    //   252: ldc_w 269
    //   255: invokestatic 36	com/estrongs/a/b/d:c	()Landroid/app/Activity;
    //   258: ldc_w 270
    //   261: invokevirtual 275	android/app/Activity:getString	(I)Ljava/lang/String;
    //   264: aload_0
    //   265: getfield 31	com/estrongs/a/b/l:a	Lcom/estrongs/fs/b/bl;
    //   268: invokestatic 278	com/estrongs/a/b/d:a	(Lcom/estrongs/a/b/d;Landroid/app/Activity;ILjava/lang/String;Lcom/estrongs/fs/b/bl;)V
    //   271: aload_0
    //   272: iconst_1
    //   273: putfield 29	com/estrongs/a/b/l:b	Z
    //   276: goto -108 -> 168
    //   279: astore 5
    //   281: goto -113 -> 168
    //   284: astore 5
    //   286: goto -118 -> 168
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	289	0	this	l
    //   0	289	1	paramDialogInterface	android.content.DialogInterface
    //   0	289	2	paramInt	int
    //   193	29	3	bool1	boolean
    //   1	204	4	bool2	boolean
    //   53	67	5	localIntent	android.content.Intent
    //   175	3	5	localActivityNotFoundException	android.content.ActivityNotFoundException
    //   189	60	5	localObject1	Object
    //   279	1	5	localException1	Exception
    //   284	1	5	localException2	Exception
    //   114	137	6	localObject2	Object
    //   246	1	7	locald	d
    // Exception table:
    //   from	to	target	type
    //   110	131	175	android/content/ActivityNotFoundException
    //   136	158	279	java/lang/Exception
    //   158	168	284	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.b.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */