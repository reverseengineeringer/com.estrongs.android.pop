package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Handler;
import com.estrongs.a.q;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.pop.multicopy.MultiThreadCopy;
import com.estrongs.android.ui.notification.e;
import com.estrongs.android.util.bd;
import com.estrongs.android.view.ak;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.ad;
import com.estrongs.fs.b.ag;
import com.estrongs.fs.b.ba;
import com.estrongs.fs.b.bm;
import com.estrongs.fs.b.i;
import com.estrongs.fs.b.r;
import com.estrongs.fs.b.u;
import com.estrongs.fs.b.y;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.o;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ix
  extends cg
{
  public static final Map<Long, Dialog> d = new HashMap();
  public static final Map<Long, e> e = new HashMap();
  private Activity a;
  private boolean b = true;
  private boolean c = false;
  public DialogInterface.OnClickListener f;
  private long g = 0L;
  private boolean h = true;
  private boolean i = true;
  private boolean j = false;
  private boolean k = false;
  private com.estrongs.a.a.p l = new ja(this);
  private DialogInterface.OnDismissListener m;
  private DialogInterface.OnClickListener n;
  private DialogInterface.OnClickListener o;
  private DialogInterface.OnClickListener p;
  private ak q;
  private com.estrongs.a.a r;
  private Handler s;
  private e t;
  
  public ix(Activity paramActivity, String paramString, com.estrongs.a.a parama)
  {
    this(paramActivity, paramString, parama, true, false, false);
  }
  
  public ix(Activity paramActivity, String paramString, com.estrongs.a.a parama, boolean paramBoolean)
  {
    this(paramActivity, paramString, parama, paramBoolean, false, false);
  }
  
  public ix(Activity paramActivity, String paramString, com.estrongs.a.a parama, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramActivity, paramString, parama, paramBoolean1, paramBoolean2, false);
  }
  
  public ix(Activity paramActivity, String paramString, com.estrongs.a.a parama, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {}
  
  public ix(ShowDialogActivity paramShowDialogActivity, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean)
  {
    super(paramShowDialogActivity);
    j = paramBoolean;
    setTitle(paramString1);
    a(paramShowDialogActivity, paramString4, paramString5);
    s = new Handler();
    q.a(mContext.getString(2131428119, new Object[] { paramString2 }), paramString3);
    q.d(8);
    q.e(8);
    q.c(8);
    setSingleButton(mContext.getString(2131427339), new jv(this));
  }
  
  private void a(Activity paramActivity, String paramString1, String paramString2)
  {
    q = new ak(paramActivity, paramString1, paramString2);
    setContentView(q.aq());
  }
  
  private void b(String paramString)
  {
    s.post(new jl(this, paramString));
  }
  
  private void f()
  {
    if (r.canPause())
    {
      if (r.canHide())
      {
        setMiddleButton(mContext.getString(2131427367), n);
        if (r.getTaskStatus() == 3) {
          setRightButton(mContext.getString(2131428010), p);
        }
        for (;;)
        {
          setLeftButton(mContext.getString(2131427340), f);
          return;
          setRightButton(mContext.getString(2131427395), o);
        }
      }
      if (r.getTaskStatus() == 3) {
        setConfirmButton(mContext.getString(2131428010), p);
      }
      for (;;)
      {
        setCancelButton(mContext.getString(2131427340), f);
        return;
        setConfirmButton(mContext.getString(2131427395), o);
      }
    }
    if (r.canHide())
    {
      setConfirmButton(mContext.getString(2131427367), n);
      setCancelButton(mContext.getString(2131427340), f);
      return;
    }
    setSingleButton(mContext.getString(2131427340), f);
  }
  
  private void g()
  {
    if ((i) && (e.get(Long.valueOf(r.getTaskId())) == null) && (((r instanceof ab)) || ((r instanceof r)) || ((r instanceof bm)) || ((r instanceof ba)) || ((r instanceof ad)) || ((r instanceof i)) || ((r instanceof com.estrongs.fs.b.p)) || ((r instanceof ag)) || ((r instanceof y)) || ((r instanceof com.estrongs.fs.b.a))))
    {
      t = new iz(this, a, getTitle(), r);
      e.put(Long.valueOf(r.getTaskId()), t);
    }
    while (e.get(Long.valueOf(r.getTaskId())) == null) {
      return;
    }
    t = ((e)e.get(Long.valueOf(r.getTaskId())));
  }
  
  private void h()
  {
    long l1 = System.currentTimeMillis() - g;
    if (l1 > 2000L) {}
    for (l1 = 0L;; l1 = 2000L - l1)
    {
      s.postDelayed(new jk(this), l1);
      return;
    }
  }
  
  private void i()
  {
    if (r.getClass().equals(r.class))
    {
      Object localObject1 = (r)r;
      Object localObject2 = ((r)localObject1).h();
      if (((ArrayList)localObject2).size() > 0)
      {
        u localu = (u)((ArrayList)localObject2).get(0);
        if ((e) && (c > 0L))
        {
          ArrayList localArrayList = new ArrayList();
          localObject2 = ((r)localObject1).a(a.getPath());
          localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = b;
          }
          localArrayList.add(new o((String)localObject1, true));
          localObject1 = MultiThreadCopy.a((String)localObject1);
          if (((File)localObject1).exists()) {
            localArrayList.add(new o(((File)localObject1).getPath(), true));
          }
          new ab(d.a(), localArrayList, false).execute();
        }
      }
    }
  }
  
  public ix a(String paramString1, String paramString2)
  {
    q.b(paramString1, paramString2);
    return this;
  }
  
  public ix a(boolean paramBoolean)
  {
    h = paramBoolean;
    return this;
  }
  
  protected String a()
  {
    return r.getDescription() + " " + getString(2131428213);
  }
  
  protected String a(com.estrongs.a.p paramp)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramp != null)
    {
      localObject1 = localObject2;
      if (b != null)
      {
        localObject1 = localObject2;
        if ((b instanceof q)) {
          localObject1 = b).a;
        }
      }
    }
    if (a == 13) {
      localObject1 = getContext().getString(2131428047);
    }
    do
    {
      return (String)localObject1;
      if (a == 14) {
        return getContext().getString(2131428048);
      }
    } while (a != 12);
    return getContext().getString(2131428049);
  }
  
  protected void a(com.estrongs.a.a parama)
  {
    if (parama.canCancel())
    {
      dismiss();
      parama.requestStop();
      if (!bd.a(b())) {
        b(b());
      }
    }
  }
  
  public void a(String paramString)
  {
    q.a(paramString);
  }
  
  public ix b(boolean paramBoolean)
  {
    q.a(paramBoolean);
    return this;
  }
  
  protected String b()
  {
    return r.getDescription() + " " + getString(2131428214);
  }
  
  protected void b(com.estrongs.a.a parama) {}
  
  public void c()
  {
    d.remove(Long.valueOf(r.getTaskId()));
  }
  
  protected void c(com.estrongs.a.a parama) {}
  
  protected void d()
  {
    super.show();
    k = false;
    g = System.currentTimeMillis();
  }
  
  public void dismiss()
  {
    k = true;
    if (bd.b(a)) {
      a.finish();
    }
    if (r != null) {
      d.remove(Long.valueOf(r.getTaskId()));
    }
    if (!isShowing()) {
      if (m != null) {
        m.onDismiss(this);
      }
    }
    try
    {
      super.dismiss();
      return;
    }
    catch (Exception localException) {}
    if (r != null)
    {
      r.removeProgressListener(q.c);
      r.removeTaskStatusChangeListener(l);
      if (!(r instanceof ad)) {
        r.setTaskDecisionListener(null);
      }
    }
    super.dismiss();
    return;
  }
  
  public void e()
  {
    d();
  }
  
  public void setOnDismissListener(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    m = paramOnDismissListener;
    super.setOnDismissListener(paramOnDismissListener);
  }
  
  public void show()
  {
    if (h)
    {
      s.postDelayed(new jm(this), 1500L);
      return;
    }
    s.post(new jn(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */