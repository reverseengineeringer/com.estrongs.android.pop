package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Handler;
import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.q;
import com.estrongs.android.pop.m;
import com.estrongs.android.view.dg;

public class jw
  extends cg
{
  private Activity a;
  private boolean b = false;
  private com.estrongs.a.a.p c = new kb(this);
  private DialogInterface.OnDismissListener d;
  private DialogInterface.OnClickListener e;
  public final DialogInterface.OnClickListener f;
  private DialogInterface.OnClickListener g;
  private DialogInterface.OnClickListener h;
  private dg i;
  private a j;
  private Handler k;
  
  public jw(Activity paramActivity, String paramString, a parama)
  {
    this(paramActivity, paramString, null, parama);
    setCancelable(false);
  }
  
  public jw(Activity paramActivity, String paramString1, String paramString2, a parama)
  {
    super(paramActivity);
    a = paramActivity;
    setCancelable(false);
    setTitle(paramString1);
    i = new dg(paramActivity, null, paramString2);
    setContentView(i.aq());
    k = new Handler();
    parama.setTaskDecisionListener(new m(paramActivity));
    e = new jx(this);
    f = new jy(this, parama);
    g = new jz(this, parama);
    h = new ka(this, parama);
    if (parama.canPause())
    {
      setRightButton(getString(2131427367), e);
      if (parama.getTaskStatus() == 3)
      {
        setMiddleButton(getString(2131428010), h);
        setLeftButton(getString(2131427340), f);
      }
    }
    for (;;)
    {
      parama.addProgressListener(i.c);
      parama.addTaskStatusChangeListener(c);
      j = parama;
      if (processData != null) {
        i.c.a(parama, processData);
      }
      return;
      setMiddleButton(getString(2131427395), g);
      break;
      setConfirmButton(getString(2131427367), e);
      setCancelButton(getString(2131427340), f);
    }
  }
  
  private void a(String paramString)
  {
    k.post(new ke(this, paramString));
  }
  
  protected String a()
  {
    return j.getDescription() + " " + getString(2131428213);
  }
  
  protected String a(com.estrongs.a.p paramp)
  {
    if ((paramp != null) && (b != null)) {
      return b).a;
    }
    return null;
  }
  
  protected void a(a parama) {}
  
  protected Object b(com.estrongs.a.p paramp)
  {
    if ((paramp != null) && (b != null)) {
      return b).b;
    }
    return Integer.valueOf(-1);
  }
  
  protected String b()
  {
    return j.getDescription() + " " + getString(2131428214);
  }
  
  protected void b(a parama) {}
  
  public void dismiss()
  {
    if (!isShowing())
    {
      if (d != null) {
        d.onDismiss(this);
      }
      return;
    }
    b = true;
    j.removeProgressListener(i.c);
    super.dismiss();
  }
  
  public void setOnDismissListener(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    d = paramOnDismissListener;
    super.setOnDismissListener(paramOnDismissListener);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */