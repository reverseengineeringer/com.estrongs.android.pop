package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Handler;
import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.q;
import com.estrongs.android.pop.m;
import com.estrongs.android.view.fm;

public class kh
  extends ci
{
  private Activity a;
  private boolean b = false;
  private com.estrongs.a.a.p c = new km(this);
  private DialogInterface.OnDismissListener d;
  private DialogInterface.OnClickListener e;
  public final DialogInterface.OnClickListener f;
  private DialogInterface.OnClickListener g;
  private DialogInterface.OnClickListener h;
  private fm i;
  private a j;
  private Handler k;
  
  public kh(Activity paramActivity, String paramString, a parama)
  {
    this(paramActivity, paramString, null, parama);
    setCancelable(false);
  }
  
  public kh(Activity paramActivity, String paramString1, String paramString2, a parama)
  {
    super(paramActivity);
    a = paramActivity;
    setCancelable(false);
    setTitle(paramString1);
    i = new fm(paramActivity, null, paramString2);
    setContentView(i.aE());
    k = new Handler();
    parama.setTaskDecisionListener(new m(paramActivity));
    e = new ki(this);
    f = new kj(this, parama);
    g = new kk(this, parama);
    h = new kl(this, parama);
    if (parama.canPause())
    {
      setRightButton(getString(2131230857), e);
      if (parama.getTaskStatus() == 3)
      {
        setMiddleButton(getString(2131231909), h);
        setLeftButton(getString(2131231265), f);
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
      setMiddleButton(getString(2131230873), g);
      break;
      setConfirmButton(getString(2131230857), e);
      setCancelButton(getString(2131231265), f);
    }
  }
  
  private void a(String paramString)
  {
    k.post(new kp(this, paramString));
  }
  
  protected String a()
  {
    return j.getDescription() + " " + getString(2131232195);
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
    return j.getDescription() + " " + getString(2131232166);
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
 * Qualified Name:     com.estrongs.android.ui.dialog.kh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */