package com.estrongs.android.ui.view;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.TableRow;
import com.estrongs.android.a.u;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.ea;
import com.estrongs.android.view.eb;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import com.estrongs.old.fs.impl.sftp.OldSFtpFileSystem;

public class b
  extends ea
{
  private TableRow A = null;
  private TableRow B = null;
  private TableRow C = null;
  private View D = null;
  private View E = null;
  private String F;
  private CompoundButton.OnCheckedChangeListener G = new j(this);
  private Handler H = new Handler();
  private View.OnClickListener I = new k(this);
  private String J = null;
  private String K = null;
  private int L = 0;
  private int M = 0;
  boolean a = false;
  boolean b = false;
  boolean c = false;
  public View.OnClickListener d = new m(this);
  public View.OnClickListener e = new n(this);
  private EditText f = null;
  private EditText g = null;
  private EditText h = null;
  private EditText i = null;
  private EditText j = null;
  private CheckBox k = null;
  private CheckBox l = null;
  private RadioButton m = null;
  private RadioButton n = null;
  private RadioButton o = null;
  private Button p = null;
  private Button q = null;
  private EditText r = null;
  private CheckBox s = null;
  private String t = null;
  private String u = null;
  private boolean v = false;
  private String w;
  private TableRow x = null;
  private TableRow y = null;
  private TableRow z = null;
  
  public b(Activity paramActivity, String paramString)
  {
    super(paramActivity);
    a(paramActivity);
    a(paramString);
    b(null);
  }
  
  public b(Activity paramActivity, String paramString1, String paramString2)
  {
    super(paramActivity);
    F = paramString1;
    a(paramActivity);
    a(am.by(paramString1));
    b(paramString2);
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      D.setVisibility(8);
      C.setVisibility(0);
      E.setVisibility(0);
      return;
    }
    D.setVisibility(0);
    C.setVisibility(8);
    E.setVisibility(8);
  }
  
  private void c(String paramString)
  {
    ad.a(ad).b(paramString, m.isChecked());
    ad.a(ad).a(paramString, L);
    if (a)
    {
      if (!s.isChecked()) {
        break label101;
      }
      if (bd.b(t)) {
        ad.a(ad).d(paramString, t);
      }
      if (bd.b(u)) {
        ad.a(ad).e(paramString, u);
      }
    }
    return;
    label101:
    ad.a(ad).d(paramString, "");
    ad.a(ad).e(paramString, "");
  }
  
  private String d()
  {
    int i3 = 22;
    Object localObject1 = f.getText().toString().trim();
    if (((String)localObject1).length() == 0)
    {
      ag.a(ad, ad.getText(2131427777), 1);
      return null;
    }
    if (b) {
      localObject1 = ((String)localObject1).replace("ftps://", "").replace("ftpes://", "");
    }
    label303:
    label616:
    label645:
    label662:
    label711:
    label728:
    for (;;)
    {
      boolean bool = ((CheckBox)k(2131362516)).isChecked();
      if (c) {
        bool = ((CheckBox)k(2131362515)).isChecked();
      }
      int i2;
      String str1;
      if (bool)
      {
        i2 = 443;
        str1 = "webdavs://";
      }
      for (;;)
      {
        Object localObject2 = new StringBuilder();
        if (a) {
          str1 = "sftp://";
        }
        for (;;)
        {
          localObject2 = str1 + (String)localObject1;
          if (!am.bg((String)localObject2)) {
            break label303;
          }
          return (String)localObject2;
          if (a)
          {
            localObject1 = ((String)localObject1).replace("sftp://", "");
            break;
          }
          if (c)
          {
            localObject1 = ((String)localObject1).replace("http://", "");
            if (!((String)localObject1).contains("https://")) {
              break label728;
            }
            localObject1 = ((String)localObject1).replace("https://", "");
            break;
          }
          localObject1 = ((String)localObject1).replace("ftp://", "");
          break;
          if (!c) {
            if (b)
            {
              if (!o.isChecked()) {
                str1 = "ftps://";
              } else {
                str1 = "ftpes://";
              }
            }
            else {
              str1 = "ftp://";
            }
          }
        }
        if (a) {}
        StringBuffer localStringBuffer;
        String str2;
        try
        {
          for (;;)
          {
            i1 = Integer.parseInt(g.getText().toString().trim());
            localStringBuffer = new StringBuffer((String)localObject2);
            if (!a) {
              break;
            }
            i2 = i3;
            if (i1 != i2)
            {
              i2 = ((String)localObject2).indexOf('/', am.bf((String)localObject2));
              if (i2 == -1) {
                break label616;
              }
              localStringBuffer.insert(i2, ":" + i1);
            }
            if (((String)localObject2).charAt(((String)localObject2).length() - 1) != '/') {
              localStringBuffer.append("/");
            }
            if ((k.isChecked()) && (!c)) {
              break label711;
            }
            str2 = h.getText().toString().trim();
            str1 = i.getText().toString();
            localObject1 = str1;
            if (a)
            {
              localObject1 = str1;
              if (s.isChecked()) {
                localObject1 = "";
              }
            }
            if ((str2 != null) && (str2.length() != 0)) {
              break label662;
            }
            if (!c) {
              break label645;
            }
            return localStringBuffer.toString();
            if ((c) || (!b)) {}
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
          for (;;)
          {
            int i1;
            if (a)
            {
              i1 = 22;
            }
            else if (c)
            {
              i1 = i2;
            }
            else if (b)
            {
              i1 = 990;
            }
            else
            {
              i1 = 21;
              continue;
              if (!c) {
                if (b)
                {
                  i2 = 990;
                }
                else
                {
                  i2 = 21;
                  continue;
                  localStringBuffer.append(":" + i1);
                }
              }
            }
          }
          ag.a(ad, m(2131427773), 1);
          return null;
        }
        localStringBuffer.insert(am.bf((String)localObject2), am.bi(str2) + ":" + am.bi(localNumberFormatException) + "@");
        return localStringBuffer.toString();
        str1 = "webdav://";
        i2 = 80;
      }
    }
  }
  
  private void d(String paramString)
  {
    if (ad.a(ad).m(paramString))
    {
      m.setChecked(true);
      n.setChecked(false);
      L = ad.a(ad).o(paramString);
      p.setText(com.estrongs.android.util.f.a[L]);
      if (am.I(paramString))
      {
        t = ad.a(ad).p(paramString);
        u = ad.a(ad).r(paramString);
        if (!bd.a(t)) {
          break label146;
        }
        s.setChecked(false);
      }
    }
    for (;;)
    {
      a(s.isChecked());
      return;
      m.setChecked(false);
      n.setChecked(true);
      break;
      label146:
      q.setText(am.d(t));
      s.setChecked(true);
      if (bd.b(u)) {
        r.setText(u);
      }
    }
  }
  
  private boolean e()
  {
    try
    {
      Object localObject = d.n(am.by(K));
      if ((a) && (localObject != null) && ((localObject instanceof OldSFtpFileSystem)))
      {
        J = ((OldSFtpFileSystem)localObject).l(K);
        if (!J.equals("/"))
        {
          if (J.endsWith("/")) {
            J = J.substring(0, J.length() - 1);
          }
          String str = am.i(K);
          localObject = str;
          if (str == null) {
            localObject = "";
          }
          K = (K.substring(0, K.length() - ((String)localObject).length()) + J + (String)localObject);
          boolean bool = e(K);
          return bool;
        }
      }
    }
    catch (FileSystemException localFileSystemException)
    {
      localFileSystemException.printStackTrace();
    }
    return false;
  }
  
  /* Error */
  private boolean e(String paramString)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_1
    //   3: invokestatic 299	com/estrongs/android/util/am:bg	(Ljava/lang/String;)Z
    //   6: ifeq +5 -> 11
    //   9: iconst_0
    //   10: ireturn
    //   11: aload_0
    //   12: getfield 115	com/estrongs/android/ui/view/b:c	Z
    //   15: ifeq +15 -> 30
    //   18: aload_1
    //   19: aconst_null
    //   20: aconst_null
    //   21: invokestatic 417	com/estrongs/fs/impl/r/b:a	(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;
    //   24: ifnull +185 -> 209
    //   27: goto +180 -> 207
    //   30: aload_1
    //   31: invokestatic 169	com/estrongs/android/util/am:by	(Ljava/lang/String;)Ljava/lang/String;
    //   34: invokestatic 390	com/estrongs/fs/d:n	(Ljava/lang/String;)Lcom/estrongs/old/fs/a;
    //   37: astore_3
    //   38: aload_3
    //   39: ifnull +154 -> 193
    //   42: new 419	com/estrongs/android/util/TypedMap
    //   45: dup
    //   46: invokespecial 420	com/estrongs/android/util/TypedMap:<init>	()V
    //   49: astore 4
    //   51: aload 4
    //   53: ldc_w 422
    //   56: aload_1
    //   57: invokestatic 424	com/estrongs/android/util/am:h	(Ljava/lang/String;)Ljava/lang/String;
    //   60: invokevirtual 428	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   63: pop
    //   64: aload 4
    //   66: ldc_w 430
    //   69: aload_0
    //   70: getfield 75	com/estrongs/android/ui/view/b:m	Landroid/widget/RadioButton;
    //   73: invokevirtual 214	android/widget/RadioButton:isChecked	()Z
    //   76: invokestatic 436	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   79: invokevirtual 428	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   82: pop
    //   83: aload 4
    //   85: ldc_w 438
    //   88: aload_0
    //   89: getfield 150	com/estrongs/android/ui/view/b:L	I
    //   92: invokestatic 440	com/estrongs/android/util/f:a	(I)Ljava/lang/String;
    //   95: invokevirtual 428	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   98: pop
    //   99: aload_0
    //   100: getfield 111	com/estrongs/android/ui/view/b:a	Z
    //   103: ifeq +73 -> 176
    //   106: aload_0
    //   107: getfield 87	com/estrongs/android/ui/view/b:s	Landroid/widget/CheckBox;
    //   110: invokevirtual 223	android/widget/CheckBox:isChecked	()Z
    //   113: ifeq +63 -> 176
    //   116: aload_0
    //   117: getfield 89	com/estrongs/android/ui/view/b:t	Ljava/lang/String;
    //   120: invokestatic 228	com/estrongs/android/util/bd:b	(Ljava/lang/CharSequence;)Z
    //   123: ifeq +16 -> 139
    //   126: aload 4
    //   128: ldc_w 442
    //   131: aload_0
    //   132: getfield 89	com/estrongs/android/ui/view/b:t	Ljava/lang/String;
    //   135: invokevirtual 428	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   138: pop
    //   139: aload_0
    //   140: aload_0
    //   141: getfield 85	com/estrongs/android/ui/view/b:r	Landroid/widget/EditText;
    //   144: invokevirtual 246	android/widget/EditText:getText	()Landroid/text/Editable;
    //   147: invokevirtual 251	java/lang/Object:toString	()Ljava/lang/String;
    //   150: putfield 91	com/estrongs/android/ui/view/b:u	Ljava/lang/String;
    //   153: aload_0
    //   154: getfield 91	com/estrongs/android/ui/view/b:u	Ljava/lang/String;
    //   157: invokestatic 228	com/estrongs/android/util/bd:b	(Ljava/lang/CharSequence;)Z
    //   160: ifeq +16 -> 176
    //   163: aload 4
    //   165: ldc_w 444
    //   168: aload_0
    //   169: getfield 91	com/estrongs/android/ui/view/b:u	Ljava/lang/String;
    //   172: invokevirtual 428	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   175: pop
    //   176: aload_3
    //   177: aload 4
    //   179: invokeinterface 449 2 0
    //   184: aload_3
    //   185: aload_1
    //   186: aconst_null
    //   187: invokeinterface 452 3 0
    //   192: pop
    //   193: iconst_1
    //   194: ireturn
    //   195: astore_1
    //   196: aload_1
    //   197: invokevirtual 410	com/estrongs/fs/FileSystemException:printStackTrace	()V
    //   200: iconst_0
    //   201: ireturn
    //   202: astore 4
    //   204: goto -20 -> 184
    //   207: iload_2
    //   208: ireturn
    //   209: iconst_0
    //   210: istore_2
    //   211: goto -4 -> 207
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	214	0	this	b
    //   0	214	1	paramString	String
    //   1	210	2	bool	boolean
    //   37	148	3	locala	com.estrongs.old.fs.a
    //   49	129	4	localTypedMap	com.estrongs.android.util.TypedMap
    //   202	1	4	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   11	27	195	com/estrongs/fs/FileSystemException
    //   30	38	195	com/estrongs/fs/FileSystemException
    //   42	139	195	com/estrongs/fs/FileSystemException
    //   139	176	195	com/estrongs/fs/FileSystemException
    //   176	184	195	com/estrongs/fs/FileSystemException
    //   184	193	195	com/estrongs/fs/FileSystemException
    //   42	139	202	java/lang/Exception
    //   139	176	202	java/lang/Exception
    //   176	184	202	java/lang/Exception
  }
  
  protected int a()
  {
    return 2130903200;
  }
  
  public void a(Activity paramActivity)
  {
    f = ((EditText)k(2131362498));
    g = ((EditText)k(2131362500));
    h = ((EditText)k(2131362518));
    i = ((EditText)k(2131362072));
    k = ((CheckBox)k(2131362522));
    l = ((CheckBox)k(2131362515));
    j = ((EditText)k(2131362502));
    m = ((RadioButton)k(2131362513));
    n = ((RadioButton)k(2131362512));
    p = ((Button)k(2131362540));
    p.setOnClickListener(I);
    k.setOnCheckedChangeListener(G);
    x = ((TableRow)k(2131362509));
    y = ((TableRow)k(2131362521));
    z = ((TableRow)k(2131362523));
    A = ((TableRow)k(2131362514));
    B = ((TableRow)k(2131362537));
    C = ((TableRow)k(2131362531));
    E = k(2131362528);
    o = ((RadioButton)k(2131362527));
    r = ((EditText)k(2131362528).findViewById(2131362530));
    D = k(2131362519);
    q = ((Button)k(2131362534));
    q.setOnClickListener(new c(this));
    s = ((CheckBox)k(2131362536));
    s.setOnCheckedChangeListener(new h(this));
    a(false);
  }
  
  public void a(String paramString)
  {
    String str = paramString;
    if ("ftpes".equalsIgnoreCase(paramString)) {
      str = "ftps";
    }
    w = str;
    if (w.equals("sftp"))
    {
      a = true;
      h.setEnabled(true);
      i.setEnabled(true);
      x.setVisibility(8);
      y.setVisibility(8);
      z.setVisibility(8);
      A.setVisibility(8);
      paramString = "S" + f.getHint();
      f.setHint(paramString);
    }
    do
    {
      return;
      if (w.equals("ftp"))
      {
        if (!v) {
          m.setChecked(true);
        }
        z.setVisibility(8);
        A.setVisibility(8);
        C.setVisibility(8);
        E.setVisibility(8);
        s.setVisibility(8);
        return;
      }
      if (w.equals("ftps"))
      {
        b = true;
        o.setChecked(true);
        g.setText(String.valueOf(990));
        y.setVisibility(8);
        A.setVisibility(8);
        C.setVisibility(8);
        E.setVisibility(8);
        s.setVisibility(8);
        return;
      }
    } while ((!w.equals("webdav")) && (!w.equals("webdavs")));
    c = true;
    f.setHint(2131428288);
    B.setVisibility(8);
    x.setVisibility(8);
    y.setVisibility(8);
    z.setVisibility(8);
    C.setVisibility(8);
    E.setVisibility(8);
    s.setVisibility(8);
    if (w.equals("webdavs")) {
      l.setChecked(true);
    }
    if (l.isChecked()) {
      g.setText(String.valueOf(443));
    }
    for (;;)
    {
      l.setOnCheckedChangeListener(new i(this));
      return;
      g.setText(String.valueOf(80));
    }
  }
  
  protected void b()
  {
    K = d();
    if (K == null) {
      return;
    }
    u.a(ad, 2131427784, 2131427785);
    new Thread(new o(this)).start();
  }
  
  public void b(String paramString)
  {
    String str2 = am.D(F);
    d(F);
    if (str2 != null)
    {
      v = true;
      if (am.I(str2)) {
        w = "sftp";
      }
      if ((!am.J(str2)) && (!am.I(str2)) && (!am.m(str2)))
      {
        str1 = str2;
        if (!am.p(str2)) {}
      }
      else
      {
        str1 = am.a(str2);
        str2 = am.i(str2);
        str1 = str1 + str2;
      }
      f.setText(str1);
      str1 = am.w(F);
      str2 = am.y(F);
      str3 = am.A(F);
      if ((str1 != null) && (str1.length() > 0)) {
        g.setText(str1);
      }
    }
    label226:
    while (!w.equals("sftp"))
    {
      String str1;
      String str3;
      break label226;
      if ((str2 != null) && (str2.length() > 0))
      {
        d(F);
        h.setText(str2);
        k.setChecked(false);
      }
      for (;;)
      {
        if ((str3 != null) && (str3.length() > 0)) {
          i.setText(str3);
        }
        if ((paramString != null) && (paramString.length() > 0)) {
          j.setText(paramString);
        }
        return;
        if ((str1 != null) || (!w.equals("sftp"))) {
          break;
        }
        g.setText("22");
        break;
        d(am.D(F));
        if (y.getVisibility() == 0) {
          k.setChecked(true);
        }
      }
    }
    g.setText("22");
  }
  
  protected void c()
  {
    if (ah != null) {
      ah.a(Boolean.FALSE);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */