package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.utils.cp;
import com.estrongs.android.ui.dialog.ProgressDialog;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

public class z
  extends y
{
  private static long v = -1L;
  private static long w = -1L;
  public f d;
  ak e;
  private Context f;
  private Button g;
  private ProgressBar h;
  private Button i;
  private Button j;
  private boolean k;
  private View l;
  private View m;
  private ProgressDialog n;
  private com.estrongs.android.pop.ad o;
  private String p;
  private String q;
  private boolean r = false;
  private String s = null;
  private String t = null;
  private Handler u = new af(this);
  
  public z(Context paramContext)
  {
    super(paramContext);
    f = paramContext;
    o = com.estrongs.android.pop.ad.a(f);
    s = ("pcs://" + u.a().e() + "@pcs");
    q();
  }
  
  private void a(Button paramButton, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramButton.setTextColor(f.getResources().getColor(2131558467));
    }
    for (;;)
    {
      paramButton.setEnabled(paramBoolean);
      paramButton.invalidate();
      return;
      paramButton.setTextColor(f.getResources().getColor(2131558662));
    }
  }
  
  private void a(String paramString1, String paramString2, q paramq)
  {
    l locall = new l(f);
    locall.a(paramq);
    locall.a(paramString1, paramString2, true);
    dismiss();
  }
  
  private void a(Map paramMap)
  {
    if (paramMap != null)
    {
      if (paramMap.containsKey("result")) {}
      int i1;
      do
      {
        for (;;)
        {
          try
          {
            i1 = Integer.parseInt(paramMap.get("result") + "");
            if (i1 != 0) {
              break;
            }
            paramMap = ak.a(e);
            localHandler = ak.a(e);
            localak = e;
            paramMap.sendMessage(localHandler.obtainMessage(2, 0, 0, null));
            return;
          }
          catch (Exception paramMap)
          {
            paramMap.printStackTrace();
          }
          i1 = -1;
        }
        if (i1 == 2)
        {
          paramMap = ak.a(e);
          localHandler = ak.a(e);
          localak = e;
          paramMap.sendMessage(localHandler.obtainMessage(2, 0, 1, f.getString(2131231939)));
          return;
        }
        if (i1 != 4) {
          break;
        }
        paramMap = ak.a(e);
        localHandler = ak.a(e);
        localak = e;
        paramMap.sendMessage(localHandler.obtainMessage(2, 0, 2, f.getString(2131231963)));
      } while (c.a(f) == null);
      return;
      if (i1 == 7)
      {
        paramMap = ak.a(e);
        localHandler = ak.a(e);
        localak = e;
        paramMap.sendMessage(localHandler.obtainMessage(2, 0, 3, f.getString(2131231997)));
        return;
      }
      if (i1 == 500010)
      {
        paramMap = ak.a(e);
        localHandler = ak.a(e);
        localak = e;
        paramMap.sendMessage(localHandler.obtainMessage(2, 0, 4, f.getString(2131231975)));
        return;
      }
      paramMap = ak.a(e);
      localHandler = ak.a(e);
      localak = e;
      paramMap.sendMessage(localHandler.obtainMessage(2, 0, 5, f.getString(2131231938)));
      return;
    }
    paramMap = ak.a(e);
    Handler localHandler = ak.a(e);
    ak localak = e;
    paramMap.sendMessage(localHandler.obtainMessage(2, 0, 8, null));
  }
  
  private boolean a(String paramString)
  {
    if (paramString == null) {}
    while ((!TextUtils.isDigitsOnly(paramString)) || (paramString.length() != 11)) {
      return false;
    }
    return true;
  }
  
  public static boolean b()
  {
    String str = com.estrongs.android.pop.ad.a(FexApplication.a()).aC();
    if ((str != null) && (str.length() != 0))
    {
      if (System.currentTimeMillis() - com.estrongs.android.pop.ad.a(FexApplication.a()).aB() > 1800000L)
      {
        com.estrongs.android.pop.ad.a(FexApplication.a()).g(0L);
        com.estrongs.android.pop.ad.a(FexApplication.a()).L("");
        return false;
      }
      return true;
    }
    return f();
  }
  
  private boolean b(String paramString)
  {
    if (paramString == null) {}
    while ((paramString.length() < 6) || (TextUtils.isDigitsOnly(paramString))) {
      return false;
    }
    return true;
  }
  
  private void c(String paramString)
  {
    com.estrongs.android.ui.view.ak.a(f, paramString, 0);
  }
  
  private void d(String paramString)
  {
    a(j, false);
    a(i, false);
    new Thread(new ah(this, p, q, paramString)).start();
  }
  
  public static boolean f()
  {
    if ((com.estrongs.android.pop.ad.a(FexApplication.a()).d()) || (com.estrongs.android.pop.ad.a(FexApplication.a()).f()) || (u.a().d() == 1)) {
      return false;
    }
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    int i2 = 3;
    if ((v < 0L) || (w < 0L)) {}
    try
    {
      v = localSimpleDateFormat.parse("2014-06-01").getTime();
      w = localSimpleDateFormat.parse("2014-07-01").getTime();
      int i1 = i2;
      if (System.currentTimeMillis() > v)
      {
        i1 = i2;
        if (System.currentTimeMillis() < w) {
          i1 = 1;
        }
      }
      if ((int)((System.currentTimeMillis() - com.estrongs.android.pop.ad.a(FexApplication.a()).ay()) / 86400000L) + 1 > i1)
      {
        com.estrongs.android.pop.ad.a(FexApplication.a()).c(0);
        return true;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
    return false;
  }
  
  private void g()
  {
    n = ProgressDialog.a(f, f.getString(2131231724), f.getString(2131232170), true, false, null);
  }
  
  private void h()
  {
    if (n != null) {
      n.dismiss();
    }
  }
  
  private void i()
  {
    View localView = k.a(f).inflate(2130903373, null);
    EditText localEditText1 = (EditText)localView.findViewById(2131624477);
    EditText localEditText2 = (EditText)localView.findViewById(2131624636);
    localView.findViewById(2131625347).setVisibility(8);
    l = localView;
    setContentView(l);
    a();
    if ((p != null) && (p.length() != 0)) {
      localEditText1.setText(p);
    }
    if ((q != null) && (q.length() != 0)) {
      localEditText2.setText(q);
    }
    h = ((ProgressBar)l.findViewById(2131624429));
    h.setVisibility(4);
    setTitle(2131231940);
  }
  
  private void j()
  {
    TextView localTextView = (TextView)l.findViewById(2131625345);
    if (k)
    {
      localTextView.setText(2131231982);
      localTextView.setTextColor(-65536);
    }
    for (;;)
    {
      l.invalidate();
      a();
      return;
      localTextView.setText(2131231953);
      localTextView.setTextColor(-2143009724);
    }
  }
  
  private void k()
  {
    EditText localEditText = (EditText)m.findViewById(2131624477);
    i = setCancelButton(getString(2131231976), new ac(this));
    j = setConfirmButton(getString(2131232178), new ad(this, localEditText));
  }
  
  private void l()
  {
    View localView = k.a(f).inflate(2130903374, null);
    ((TextView)localView.findViewById(2131625340)).setText(f.getString(2131231979));
    ((TextView)localView.findViewById(2131625353)).setText(f.getString(2131231973));
    ((Button)localView.findViewById(2131625352)).setOnClickListener(new ae(this));
    m = localView;
  }
  
  private void m()
  {
    TextView localTextView = (TextView)k.a(f).inflate(2130903374, null).findViewById(2131625340);
    if (localTextView != null) {
      localTextView.setText(2131231983);
    }
  }
  
  private boolean n()
  {
    if (c().equals(m))
    {
      Button localButton = (Button)m.findViewById(2131625352);
      if ((localButton != null) && (localButton.isEnabled())) {
        return true;
      }
    }
    return false;
  }
  
  private void o()
  {
    Object localObject = (Button)m.findViewById(2131625352);
    if (localObject != null)
    {
      ((Button)localObject).setTextColor(f.getResources().getColor(2131558661));
      ((Button)localObject).setEnabled(true);
    }
    localObject = (TextView)m.findViewById(2131625353);
    if (localObject != null) {
      ((TextView)localObject).setVisibility(0);
    }
    if (j.isEnabled()) {
      a(i, true);
    }
  }
  
  private void p()
  {
    Object localObject = (Button)m.findViewById(2131625352);
    if (localObject != null) {
      a((Button)localObject, false);
    }
    localObject = (TextView)m.findViewById(2131625353);
    if (localObject != null) {
      ((TextView)localObject).setVisibility(8);
    }
    a(i, false);
  }
  
  private void q()
  {
    e = new ak(this);
    if (cp.a()) {
      p = cp.c();
    }
    if (!a(p)) {
      p = null;
    }
    if (p != null) {
      r = true;
    }
    i();
    l();
    m();
    if (c.a(f) != null) {}
  }
  
  private void r()
  {
    w localw = new w(f);
    localw.a(u);
    localw.a();
    a(g, false);
    h.setVisibility(0);
    k = false;
    c(getString(2131231949));
  }
  
  private void s()
  {
    Object localObject = com.estrongs.android.pop.ad.a(f).aC();
    if ((localObject != null) && (((String)localObject).length() != 0))
    {
      localObject = ((String)localObject).split(":");
      if (localObject.length == 2) {
        break label37;
      }
    }
    label37:
    while ((!a(localObject[0])) || (!b(localObject[1]))) {
      return;
    }
    p = localObject[0];
    q = localObject[1];
  }
  
  private void t()
  {
    o.f(System.currentTimeMillis());
    long l1 = o.aB();
    s();
    if ((l1 > 0L) && (System.currentTimeMillis() - l1 < 1800000L) && (a(p)) && (b(q)))
    {
      setContentView(m);
      k();
      o();
      u();
    }
    for (;;)
    {
      return;
      if (((p == null) || (p.length() == 0)) && (cp.a()))
      {
        g();
        new Thread(new ai(this)).start();
      }
      while (c.a(f) != null)
      {
        return;
        u();
      }
    }
  }
  
  private void u()
  {
    super.show();
  }
  
  private void v()
  {
    if ((c().equals(m)) && (!j.isEnabled())) {
      return;
    }
    d = new f(f, this);
    d.a();
    d.a(b);
    d.show();
  }
  
  void a()
  {
    if (!c().equals(l)) {
      return;
    }
    EditText localEditText1 = (EditText)l.findViewById(2131624477);
    EditText localEditText2 = (EditText)l.findViewById(2131624636);
    g = setConfirmButton(getString(2131231270), new aa(this, localEditText1, localEditText2));
    setCancelButton(getString(2131231265), new ab(this));
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      paramKeyEvent = c();
      if (paramKeyEvent.equals(l)) {
        v();
      }
      for (;;)
      {
        return true;
        if ((paramKeyEvent.equals(m)) && (n())) {
          v();
        }
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void show()
  {
    t();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */