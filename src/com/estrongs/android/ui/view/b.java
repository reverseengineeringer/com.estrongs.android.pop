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
import com.estrongs.android.d.u;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.gf;
import com.estrongs.android.view.gg;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import com.estrongs.old.fs.impl.sftp.OldSFtpFileSystem;

public class b
  extends gf
{
  private TableRow A = null;
  private TableRow B = null;
  private TableRow C = null;
  private View D = null;
  private View E = null;
  private View F = null;
  private String G;
  private CompoundButton.OnCheckedChangeListener H = new j(this);
  private Handler I = new Handler();
  private View.OnClickListener J = new k(this);
  private String K = null;
  private String L = null;
  private int M = 0;
  private int N = 0;
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
    G = paramString1;
    a(paramActivity);
    a(ap.bP(paramString1));
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
    ad.a(ag).b(paramString, m.isChecked());
    ad.a(ag).a(paramString, M);
    if (a)
    {
      if (!s.isChecked()) {
        break label101;
      }
      if (bk.b(t)) {
        ad.a(ag).d(paramString, t);
      }
      if (bk.b(u)) {
        ad.a(ag).e(paramString, u);
      }
    }
    return;
    label101:
    ad.a(ag).d(paramString, "");
    ad.a(ag).e(paramString, "");
  }
  
  private String d()
  {
    int i3 = 22;
    Object localObject1 = f.getText().toString().trim();
    if (((String)localObject1).length() == 0)
    {
      ak.a(ag, ag.getText(2131231825), 1);
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
      boolean bool = ((CheckBox)b(2131625253)).isChecked();
      if (c) {
        bool = ((CheckBox)b(2131625252)).isChecked();
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
          if (!ap.br((String)localObject2)) {
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
              i2 = ((String)localObject2).indexOf('/', ap.bq((String)localObject2));
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
          ak.a(ag, k(2131232533), 1);
          return null;
        }
        localStringBuffer.insert(ap.bq((String)localObject2), ap.bz(str2) + ":" + ap.bz(localNumberFormatException) + "@");
        return localStringBuffer.toString();
        str1 = "webdav://";
        i2 = 80;
      }
    }
  }
  
  private void d(String paramString)
  {
    if (ad.a(ag).m(paramString))
    {
      m.setChecked(true);
      n.setChecked(false);
      M = ad.a(ag).o(paramString);
      p.setText(com.estrongs.android.util.e.a[M]);
      if (ap.K(paramString))
      {
        t = ad.a(ag).p(paramString);
        u = ad.a(ag).r(paramString);
        if (!bk.a(t)) {
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
      q.setText(ap.d(t));
      s.setChecked(true);
      if (bk.b(u)) {
        r.setText(u);
      }
    }
  }
  
  private boolean e()
  {
    try
    {
      Object localObject = d.n(ap.bP(L));
      if ((a) && (localObject != null) && ((localObject instanceof OldSFtpFileSystem)))
      {
        K = ((OldSFtpFileSystem)localObject).l(L);
        if (!K.equals("/"))
        {
          if (K.endsWith("/")) {
            K = K.substring(0, K.length() - 1);
          }
          String str = ap.j(L);
          localObject = str;
          if (str == null) {
            localObject = "";
          }
          L = (L.substring(0, L.length() - ((String)localObject).length()) + K + (String)localObject);
          boolean bool = e(L);
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
    //   3: invokestatic 302	com/estrongs/android/util/ap:br	(Ljava/lang/String;)Z
    //   6: ifeq +5 -> 11
    //   9: iconst_0
    //   10: ireturn
    //   11: aload_0
    //   12: getfield 118	com/estrongs/android/ui/view/b:c	Z
    //   15: ifeq +15 -> 30
    //   18: aload_1
    //   19: aconst_null
    //   20: aconst_null
    //   21: invokestatic 420	com/estrongs/fs/impl/w/b:a	(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;
    //   24: ifnull +185 -> 209
    //   27: goto +180 -> 207
    //   30: aload_1
    //   31: invokestatic 172	com/estrongs/android/util/ap:bP	(Ljava/lang/String;)Ljava/lang/String;
    //   34: invokestatic 393	com/estrongs/fs/d:n	(Ljava/lang/String;)Lcom/estrongs/old/fs/a;
    //   37: astore_3
    //   38: aload_3
    //   39: ifnull +154 -> 193
    //   42: new 422	com/estrongs/android/util/TypedMap
    //   45: dup
    //   46: invokespecial 423	com/estrongs/android/util/TypedMap:<init>	()V
    //   49: astore 4
    //   51: aload 4
    //   53: ldc_w 425
    //   56: aload_1
    //   57: invokestatic 427	com/estrongs/android/util/ap:i	(Ljava/lang/String;)Ljava/lang/String;
    //   60: invokevirtual 431	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   63: pop
    //   64: aload 4
    //   66: ldc_w 433
    //   69: aload_0
    //   70: getfield 76	com/estrongs/android/ui/view/b:m	Landroid/widget/RadioButton;
    //   73: invokevirtual 217	android/widget/RadioButton:isChecked	()Z
    //   76: invokestatic 439	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   79: invokevirtual 431	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   82: pop
    //   83: aload 4
    //   85: ldc_w 441
    //   88: aload_0
    //   89: getfield 153	com/estrongs/android/ui/view/b:M	I
    //   92: invokestatic 443	com/estrongs/android/util/e:a	(I)Ljava/lang/String;
    //   95: invokevirtual 431	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   98: pop
    //   99: aload_0
    //   100: getfield 114	com/estrongs/android/ui/view/b:a	Z
    //   103: ifeq +73 -> 176
    //   106: aload_0
    //   107: getfield 88	com/estrongs/android/ui/view/b:s	Landroid/widget/CheckBox;
    //   110: invokevirtual 226	android/widget/CheckBox:isChecked	()Z
    //   113: ifeq +63 -> 176
    //   116: aload_0
    //   117: getfield 90	com/estrongs/android/ui/view/b:t	Ljava/lang/String;
    //   120: invokestatic 231	com/estrongs/android/util/bk:b	(Ljava/lang/CharSequence;)Z
    //   123: ifeq +16 -> 139
    //   126: aload 4
    //   128: ldc_w 445
    //   131: aload_0
    //   132: getfield 90	com/estrongs/android/ui/view/b:t	Ljava/lang/String;
    //   135: invokevirtual 431	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   138: pop
    //   139: aload_0
    //   140: aload_0
    //   141: getfield 86	com/estrongs/android/ui/view/b:r	Landroid/widget/EditText;
    //   144: invokevirtual 249	android/widget/EditText:getText	()Landroid/text/Editable;
    //   147: invokevirtual 254	java/lang/Object:toString	()Ljava/lang/String;
    //   150: putfield 92	com/estrongs/android/ui/view/b:u	Ljava/lang/String;
    //   153: aload_0
    //   154: getfield 92	com/estrongs/android/ui/view/b:u	Ljava/lang/String;
    //   157: invokestatic 231	com/estrongs/android/util/bk:b	(Ljava/lang/CharSequence;)Z
    //   160: ifeq +16 -> 176
    //   163: aload 4
    //   165: ldc_w 447
    //   168: aload_0
    //   169: getfield 92	com/estrongs/android/ui/view/b:u	Ljava/lang/String;
    //   172: invokevirtual 431	com/estrongs/android/util/TypedMap:put	(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;
    //   175: pop
    //   176: aload_3
    //   177: aload 4
    //   179: invokeinterface 452 2 0
    //   184: aload_3
    //   185: aload_1
    //   186: aconst_null
    //   187: invokeinterface 455 3 0
    //   192: pop
    //   193: iconst_1
    //   194: ireturn
    //   195: astore_1
    //   196: aload_1
    //   197: invokevirtual 413	com/estrongs/fs/FileSystemException:printStackTrace	()V
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
    return 2130903351;
  }
  
  public void a(Activity paramActivity)
  {
    f = ((EditText)b(2131625235));
    g = ((EditText)b(2131625237));
    h = ((EditText)b(2131625255));
    i = ((EditText)b(2131624636));
    k = ((CheckBox)b(2131625259));
    l = ((CheckBox)b(2131625252));
    j = ((EditText)b(2131625239));
    m = ((RadioButton)b(2131625250));
    n = ((RadioButton)b(2131625249));
    p = ((Button)b(2131625277));
    p.setOnClickListener(J);
    k.setOnCheckedChangeListener(H);
    x = ((TableRow)b(2131625246));
    y = ((TableRow)b(2131625258));
    z = ((TableRow)b(2131625260));
    A = ((TableRow)b(2131625251));
    B = ((TableRow)b(2131625274));
    C = ((TableRow)b(2131625268));
    E = b(2131625265);
    o = ((RadioButton)b(2131625264));
    r = ((EditText)b(2131625265).findViewById(2131625267));
    D = b(2131625256);
    q = ((Button)b(2131625271));
    q.setOnClickListener(new c(this));
    s = ((CheckBox)b(2131625273));
    F = ((TableRow)b(2131625272));
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
        F.setVisibility(8);
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
        F.setVisibility(8);
        return;
      }
    } while ((!w.equals("webdav")) && (!w.equals("webdavs")));
    c = true;
    f.setHint(2131232561);
    B.setVisibility(8);
    x.setVisibility(8);
    y.setVisibility(8);
    z.setVisibility(8);
    C.setVisibility(8);
    E.setVisibility(8);
    s.setVisibility(8);
    F.setVisibility(8);
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
    L = d();
    if (L == null) {
      return;
    }
    u.a(ag, 2131230914, 2131230913);
    new Thread(new o(this)).start();
  }
  
  public void b(String paramString)
  {
    String str2 = ap.F(G);
    d(G);
    if (str2 != null)
    {
      v = true;
      if (ap.K(str2)) {
        w = "sftp";
      }
      if ((!ap.L(str2)) && (!ap.K(str2)) && (!ap.o(str2)))
      {
        str1 = str2;
        if (!ap.r(str2)) {}
      }
      else
      {
        str1 = ap.a(str2);
        str2 = ap.j(str2);
        str1 = str1 + str2;
      }
      f.setText(str1);
      str1 = ap.y(G);
      str2 = ap.A(G);
      str3 = ap.C(G);
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
        d(G);
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
        d(ap.F(G));
        if (y.getVisibility() == 0) {
          k.setChecked(true);
        }
      }
    }
    g.setText("22");
  }
  
  protected void c()
  {
    if (ak != null) {
      ak.a(Boolean.FALSE);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */