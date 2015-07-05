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
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.utils.cg;
import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.a;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

public class w
  extends v
{
  private static long v = -1L;
  private static long w = -1L;
  public d d;
  ah e;
  private Context f;
  private Button g;
  private ProgressBar h;
  private Button i;
  private Button j;
  private boolean k;
  private View l;
  private View m;
  private ProgressDialog n;
  private ad o;
  private String p;
  private String q;
  private boolean r = false;
  private String s = null;
  private String t = null;
  private Handler u = new ac(this);
  
  public w(Context paramContext)
  {
    super(paramContext);
    f = paramContext;
    o = ad.a(f);
    s = ("pcs://" + r.a().e() + "@pcs");
    q();
  }
  
  private void a(Button paramButton, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramButton.setTextColor(f.getResources().getColor(2131230725));
    }
    for (;;)
    {
      paramButton.setEnabled(paramBoolean);
      paramButton.invalidate();
      return;
      paramButton.setTextColor(f.getResources().getColor(2131230765));
    }
  }
  
  private void a(String paramString1, String paramString2, n paramn)
  {
    j localj = new j(f);
    localj.a(paramn);
    localj.a(paramString1, paramString2, true);
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
            paramMap = ah.a(e);
            localHandler = ah.a(e);
            localah = e;
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
          paramMap = ah.a(e);
          localHandler = ah.a(e);
          localah = e;
          paramMap.sendMessage(localHandler.obtainMessage(2, 0, 1, f.getString(2131428614)));
          return;
        }
        if (i1 != 4) {
          break;
        }
        paramMap = ah.a(e);
        localHandler = ah.a(e);
        localah = e;
        paramMap.sendMessage(localHandler.obtainMessage(2, 0, 2, f.getString(2131428607)));
        paramMap = a.a();
      } while (paramMap == null);
      paramMap.c("PCS_Phone_Registered", "PCS_Phone_Registered");
      return;
      if (i1 == 7)
      {
        paramMap = ah.a(e);
        localHandler = ah.a(e);
        localah = e;
        paramMap.sendMessage(localHandler.obtainMessage(2, 0, 3, f.getString(2131428576)));
        return;
      }
      if (i1 == 500010)
      {
        paramMap = ah.a(e);
        localHandler = ah.a(e);
        localah = e;
        paramMap.sendMessage(localHandler.obtainMessage(2, 0, 4, f.getString(2131428633)));
        return;
      }
      paramMap = ah.a(e);
      localHandler = ah.a(e);
      localah = e;
      paramMap.sendMessage(localHandler.obtainMessage(2, 0, 5, f.getString(2131428615)));
      return;
    }
    paramMap = ah.a(e);
    Handler localHandler = ah.a(e);
    ah localah = e;
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
    String str = ad.a(FexApplication.a()).aB();
    if ((str != null) && (str.length() != 0))
    {
      if (System.currentTimeMillis() - ad.a(FexApplication.a()).aA() > 1800000L)
      {
        ad.a(FexApplication.a()).g(0L);
        ad.a(FexApplication.a()).L("");
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
    ag.a(f, paramString, 0);
  }
  
  private void d(String paramString)
  {
    a(j, false);
    a(i, false);
    new Thread(new ae(this, p, q, paramString)).start();
  }
  
  public static boolean f()
  {
    if ((ad.a(FexApplication.a()).c()) || (ad.a(FexApplication.a()).e()) || (r.a().d() == 1)) {
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
      if ((int)((System.currentTimeMillis() - ad.a(FexApplication.a()).ax()) / 86400000L) + 1 > i1)
      {
        ad.a(FexApplication.a()).c(0);
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
    n = ProgressDialog.a(f, f.getString(2131428638), f.getString(2131427447), true, false, null);
  }
  
  private void h()
  {
    if (n != null) {
      n.dismiss();
    }
  }
  
  private void i()
  {
    View localView = g.a(f).inflate(2130903212, null);
    EditText localEditText1 = (EditText)localView.findViewById(2131361967);
    EditText localEditText2 = (EditText)localView.findViewById(2131362072);
    localView.findViewById(2131362597).setVisibility(8);
    l = localView;
    setContentView(l);
    a();
    if ((p != null) && (p.length() != 0)) {
      localEditText1.setText(p);
    }
    if ((q != null) && (q.length() != 0)) {
      localEditText2.setText(q);
    }
    h = ((ProgressBar)l.findViewById(2131361935));
    h.setVisibility(4);
    setTitle(2131428613);
  }
  
  private void j()
  {
    TextView localTextView = (TextView)l.findViewById(2131362595);
    if (k)
    {
      localTextView.setText(2131428640);
      localTextView.setTextColor(-65536);
    }
    for (;;)
    {
      l.invalidate();
      a();
      return;
      localTextView.setText(2131428693);
      localTextView.setTextColor(-2143009724);
    }
  }
  
  private void k()
  {
    EditText localEditText = (EditText)m.findViewById(2131361967);
    i = setCancelButton(getString(2131428643), new z(this));
    j = setConfirmButton(getString(2131427443), new aa(this, localEditText));
  }
  
  private void l()
  {
    View localView = g.a(f).inflate(2130903213, null);
    ((TextView)localView.findViewById(2131362589)).setText(f.getString(2131428650));
    ((TextView)localView.findViewById(2131362603)).setText(f.getString(2131428644));
    ((Button)localView.findViewById(2131362602)).setOnClickListener(new ab(this));
    m = localView;
  }
  
  private void m()
  {
    TextView localTextView = (TextView)g.a(f).inflate(2130903213, null).findViewById(2131362589);
    if (localTextView != null) {
      localTextView.setText(2131428648);
    }
  }
  
  private boolean n()
  {
    if (c().equals(m))
    {
      Button localButton = (Button)m.findViewById(2131362602);
      if ((localButton != null) && (localButton.isEnabled())) {
        return true;
      }
    }
    return false;
  }
  
  private void o()
  {
    Object localObject = (Button)m.findViewById(2131362602);
    if (localObject != null)
    {
      ((Button)localObject).setTextColor(f.getResources().getColor(2131230738));
      ((Button)localObject).setEnabled(true);
    }
    localObject = (TextView)m.findViewById(2131362603);
    if (localObject != null) {
      ((TextView)localObject).setVisibility(0);
    }
    if (j.isEnabled()) {
      a(i, true);
    }
  }
  
  private void p()
  {
    Object localObject = (Button)m.findViewById(2131362602);
    if (localObject != null) {
      a((Button)localObject, false);
    }
    localObject = (TextView)m.findViewById(2131362603);
    if (localObject != null) {
      ((TextView)localObject).setVisibility(8);
    }
    a(i, false);
  }
  
  private void q()
  {
    e = new ah(this);
    if (cg.a()) {
      p = cg.c();
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
    a locala = a.a();
    if (locala != null)
    {
      if (p == null) {
        locala.f("Phone_no", "Phone_no");
      }
    }
    else {
      return;
    }
    locala.f("Phone_get", "Phone_get");
  }
  
  private void r()
  {
    t localt = new t(f);
    localt.a(u);
    localt.a();
    a(g, false);
    h.setVisibility(0);
    k = false;
    c(getString(2131428591));
  }
  
  private void s()
  {
    Object localObject = ad.a(f).aB();
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
    long l1 = o.aA();
    s();
    if ((l1 > 0L) && (System.currentTimeMillis() - l1 < 1800000L) && (a(p)) && (b(q)))
    {
      setContentView(m);
      k();
      o();
      u();
      return;
    }
    if (((p == null) || (p.length() == 0)) && (cg.a()))
    {
      g();
      new Thread(new af(this)).start();
    }
    for (;;)
    {
      a locala = a.a();
      if (locala == null) {
        break;
      }
      locala.c("Press_Normalize", "Press_Normalize");
      locala.e("Normalize_UV", "Normalize_UV");
      return;
      u();
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
    d = new d(f, this);
    d.a();
    d.a(b);
    d.show();
  }
  
  void a()
  {
    if (!c().equals(l)) {
      return;
    }
    EditText localEditText1 = (EditText)l.findViewById(2131361967);
    EditText localEditText2 = (EditText)l.findViewById(2131362072);
    g = setConfirmButton(getString(2131427339), new x(this, localEditText1, localEditText2));
    setCancelButton(getString(2131427340), new y(this));
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
 * Qualified Name:     com.estrongs.android.ui.pcs.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */