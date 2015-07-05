package com.estrongs.android.ui.view;

import android.content.Context;
import android.os.AsyncTask;
import android.text.ClipboardManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.am;
import com.estrongs.android.view.ea;
import com.estrongs.android.view.eb;

public class au
  extends ea
{
  protected TextView a;
  protected TextView b;
  protected String c;
  protected AsyncTask<Void, Void, Void> d;
  protected boolean e;
  protected View f;
  protected View g;
  protected String h = null;
  protected String i = null;
  
  public au(Context paramContext, ViewGroup paramViewGroup, String paramString)
  {
    super(paramContext, paramViewGroup, true);
    c = paramString;
    al.a(paramContext);
    paramContext = (ClipboardManager)paramContext.getSystemService("clipboard");
    ((TextView)k(2131362222)).setText(am.d(paramString));
    a = ((TextView)k(2131362225));
    b = ((TextView)k(2131362228));
    f = k(2131362224);
    f.setEnabled(false);
    f.setOnClickListener(new av(this, paramContext));
    g = k(2131362227);
    g.setEnabled(false);
    g.setOnClickListener(new aw(this, paramContext));
  }
  
  protected int a()
  {
    return 2130903122;
  }
  
  public void b()
  {
    f();
  }
  
  /* Error */
  public void c()
  {
    // Byte code:
    //   0: new 106	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: getfield 30	com/estrongs/android/ui/view/au:c	Ljava/lang/String;
    //   8: invokespecial 109	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: invokevirtual 113	java/io/File:getParentFile	()Ljava/io/File;
    //   14: astore_1
    //   15: new 115	java/lang/StringBuilder
    //   18: dup
    //   19: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   22: aload_0
    //   23: getfield 30	com/estrongs/android/ui/view/au:c	Ljava/lang/String;
    //   26: invokestatic 57	com/estrongs/android/util/am:d	(Ljava/lang/String;)Ljava/lang/String;
    //   29: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: ldc 123
    //   34: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: ldc 125
    //   39: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: astore 5
    //   47: ldc -125
    //   49: astore_3
    //   50: new 133	java/io/PrintWriter
    //   53: dup
    //   54: new 135	java/io/FileOutputStream
    //   57: dup
    //   58: new 106	java/io/File
    //   61: dup
    //   62: aload_1
    //   63: aload 5
    //   65: invokespecial 138	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   68: invokespecial 141	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   71: invokespecial 144	java/io/PrintWriter:<init>	(Ljava/io/OutputStream;)V
    //   74: astore 4
    //   76: aload 4
    //   78: astore_1
    //   79: aload 4
    //   81: new 115	java/lang/StringBuilder
    //   84: dup
    //   85: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   88: aload_0
    //   89: ldc -111
    //   91: invokevirtual 97	com/estrongs/android/ui/view/au:l	(I)Ljava/lang/String;
    //   94: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: aload_0
    //   98: getfield 30	com/estrongs/android/ui/view/au:c	Ljava/lang/String;
    //   101: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: invokevirtual 148	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   110: aload 4
    //   112: astore_1
    //   113: aload_0
    //   114: getfield 26	com/estrongs/android/ui/view/au:h	Ljava/lang/String;
    //   117: ifnull +57 -> 174
    //   120: aload 4
    //   122: astore_1
    //   123: aload 4
    //   125: new 115	java/lang/StringBuilder
    //   128: dup
    //   129: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   132: ldc -106
    //   134: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: aload_0
    //   138: getfield 26	com/estrongs/android/ui/view/au:h	Ljava/lang/String;
    //   141: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: invokevirtual 148	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   150: aload 4
    //   152: astore_1
    //   153: new 115	java/lang/StringBuilder
    //   156: dup
    //   157: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   160: ldc -125
    //   162: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: ldc -104
    //   167: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: astore_3
    //   174: aload_3
    //   175: astore_2
    //   176: aload 4
    //   178: astore_1
    //   179: aload_0
    //   180: getfield 28	com/estrongs/android/ui/view/au:i	Ljava/lang/String;
    //   183: ifnull +56 -> 239
    //   186: aload 4
    //   188: astore_1
    //   189: aload 4
    //   191: new 115	java/lang/StringBuilder
    //   194: dup
    //   195: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   198: ldc -102
    //   200: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: aload_0
    //   204: getfield 28	com/estrongs/android/ui/view/au:i	Ljava/lang/String;
    //   207: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   210: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   213: invokevirtual 148	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   216: aload 4
    //   218: astore_1
    //   219: new 115	java/lang/StringBuilder
    //   222: dup
    //   223: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   226: aload_3
    //   227: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: ldc -100
    //   232: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   238: astore_2
    //   239: aload 4
    //   241: invokestatic 161	com/estrongs/fs/util/j:a	(Ljava/io/Writer;)V
    //   244: aload_2
    //   245: astore_1
    //   246: aload_2
    //   247: ldc -93
    //   249: invokevirtual 169	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   252: ifeq +15 -> 267
    //   255: aload_2
    //   256: iconst_0
    //   257: aload_2
    //   258: invokevirtual 172	java/lang/String:length	()I
    //   261: iconst_1
    //   262: isub
    //   263: invokevirtual 176	java/lang/String:substring	(II)Ljava/lang/String;
    //   266: astore_1
    //   267: aload_0
    //   268: ldc -79
    //   270: invokevirtual 97	com/estrongs/android/ui/view/au:l	(I)Ljava/lang/String;
    //   273: astore_2
    //   274: aload_0
    //   275: invokevirtual 181	com/estrongs/android/ui/view/au:ar	()Landroid/content/Context;
    //   278: aload_2
    //   279: iconst_2
    //   280: anewarray 183	java/lang/Object
    //   283: dup
    //   284: iconst_0
    //   285: aload_1
    //   286: aastore
    //   287: dup
    //   288: iconst_1
    //   289: aload 5
    //   291: aastore
    //   292: invokestatic 189	java/text/MessageFormat:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   295: iconst_1
    //   296: invokestatic 194	com/estrongs/android/ui/view/ag:a	(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    //   299: return
    //   300: astore_3
    //   301: aconst_null
    //   302: astore_2
    //   303: aload_2
    //   304: astore_1
    //   305: aload_3
    //   306: invokevirtual 197	java/lang/Exception:printStackTrace	()V
    //   309: aload_2
    //   310: astore_1
    //   311: aload_0
    //   312: invokevirtual 181	com/estrongs/android/ui/view/au:ar	()Landroid/content/Context;
    //   315: new 115	java/lang/StringBuilder
    //   318: dup
    //   319: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   322: aload_0
    //   323: ldc -58
    //   325: invokevirtual 201	com/estrongs/android/ui/view/au:m	(I)Ljava/lang/String;
    //   328: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: ldc -53
    //   333: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   336: aload_3
    //   337: invokevirtual 206	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   340: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   343: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   346: iconst_1
    //   347: invokestatic 194	com/estrongs/android/ui/view/ag:a	(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    //   350: aload_2
    //   351: invokestatic 161	com/estrongs/fs/util/j:a	(Ljava/io/Writer;)V
    //   354: return
    //   355: astore_2
    //   356: aconst_null
    //   357: astore_1
    //   358: aload_1
    //   359: invokestatic 161	com/estrongs/fs/util/j:a	(Ljava/io/Writer;)V
    //   362: aload_2
    //   363: athrow
    //   364: astore_2
    //   365: goto -7 -> 358
    //   368: astore_3
    //   369: aload 4
    //   371: astore_2
    //   372: goto -69 -> 303
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	375	0	this	au
    //   14	345	1	localObject1	Object
    //   175	176	2	str1	String
    //   355	8	2	localObject2	Object
    //   364	1	2	localObject3	Object
    //   371	1	2	localPrintWriter1	java.io.PrintWriter
    //   49	178	3	str2	String
    //   300	37	3	localException1	Exception
    //   368	1	3	localException2	Exception
    //   74	296	4	localPrintWriter2	java.io.PrintWriter
    //   45	245	5	str3	String
    // Exception table:
    //   from	to	target	type
    //   50	76	300	java/lang/Exception
    //   50	76	355	finally
    //   79	110	364	finally
    //   113	120	364	finally
    //   123	150	364	finally
    //   153	174	364	finally
    //   179	186	364	finally
    //   189	216	364	finally
    //   219	239	364	finally
    //   305	309	364	finally
    //   311	350	364	finally
    //   79	110	368	java/lang/Exception
    //   113	120	368	java/lang/Exception
    //   123	150	368	java/lang/Exception
    //   153	174	368	java/lang/Exception
    //   179	186	368	java/lang/Exception
    //   189	216	368	java/lang/Exception
    //   219	239	368	java/lang/Exception
  }
  
  public void d()
  {
    e();
    if (ah != null) {
      ah.a(Boolean.valueOf(true));
    }
  }
  
  public void e()
  {
    e = true;
    if (d != null) {
      d.cancel(true);
    }
  }
  
  protected void f()
  {
    if (d != null) {
      d.cancel(true);
    }
    d = new ax(this);
    d.execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */