package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Handler;
import android.support.design.widget.Snackbar;
import com.estrongs.a.q;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.pop.multicopy.MultiThreadCopy;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.notification.f;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.bk;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.b.ad;
import com.estrongs.fs.b.ag;
import com.estrongs.fs.b.bc;
import com.estrongs.fs.b.i;
import com.estrongs.fs.b.r;
import com.estrongs.fs.b.u;
import com.estrongs.fs.b.y;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.z;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class jh
  extends ci
{
  public static final Map<Long, Dialog> d = new HashMap();
  public static final Map<Long, f> e = new HashMap();
  private Activity a;
  private boolean b = true;
  private boolean c = false;
  public DialogInterface.OnClickListener f;
  private long g = 0L;
  private boolean h = true;
  private boolean i = true;
  private boolean j = false;
  private boolean k = false;
  private com.estrongs.a.a.p l = new jk(this);
  private DialogInterface.OnDismissListener m;
  private DialogInterface.OnClickListener n;
  private DialogInterface.OnClickListener o;
  private DialogInterface.OnClickListener p;
  private com.estrongs.android.view.bo q;
  private com.estrongs.a.a r;
  private Handler s;
  private f t;
  
  public jh(Activity paramActivity, String paramString, com.estrongs.a.a parama)
  {
    this(paramActivity, paramString, parama, true, false, false);
  }
  
  public jh(Activity paramActivity, String paramString, com.estrongs.a.a parama, boolean paramBoolean)
  {
    this(paramActivity, paramString, parama, paramBoolean, false, false);
  }
  
  public jh(Activity paramActivity, String paramString, com.estrongs.a.a parama, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramActivity, paramString, parama, paramBoolean1, paramBoolean2, false);
  }
  
  public jh(Activity paramActivity, String paramString, com.estrongs.a.a parama, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {}
  
  public jh(ShowDialogActivity paramShowDialogActivity, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean)
  {
    super(paramShowDialogActivity);
    j = paramBoolean;
    setTitle(paramString1);
    a(paramShowDialogActivity, paramString4, paramString5);
    s = new Handler();
    q.a(mContext.getString(2131232402, new Object[] { paramString2 }), paramString3);
    q.e(8);
    q.f(8);
    q.d(8);
    setSingleButton(mContext.getString(2131231270), new kg(this));
  }
  
  private void a(Activity paramActivity, String paramString1, String paramString2)
  {
    q = new com.estrongs.android.view.bo(paramActivity, paramString1, paramString2);
    q.a(this);
    setContentView(q.aE());
  }
  
  private void a(String paramString, ab paramab)
  {
    int i1 = com.estrongs.android.i.a.a("delete_clean_notification_files", 2);
    if (i1 <= 0) {
      i1 = 0;
    }
    for (;;)
    {
      paramab = (FileExplorerActivity)a;
      paramString = Snackbar.a(f, paramString, 0);
      if (i1 != 0) {
        paramString.a(2131230832, new jw(this, paramab));
      }
      paramString.a();
      return;
      if (c == null) {
        i1 = 0;
      } else if (i1 <= c.size()) {
        i1 = 1;
      } else {
        i1 = 0;
      }
    }
  }
  
  private void b(String paramString)
  {
    s.post(new jv(this, paramString));
  }
  
  private void c(String paramString)
  {
    if (((r instanceof ab)) && ((a instanceof FileExplorerActivity)))
    {
      a(paramString, (ab)r);
      return;
    }
    ak.a(getContext(), paramString, 0);
  }
  
  private void f()
  {
    if (r.canPause())
    {
      if (r.canHide())
      {
        setMiddleButton(mContext.getString(2131230857), n);
        if (r.getTaskStatus() == 3) {
          setRightButton(mContext.getString(2131231909), p);
        }
        for (;;)
        {
          setLeftButton(mContext.getString(2131231265), f);
          return;
          setRightButton(mContext.getString(2131230873), o);
        }
      }
      if (r.getTaskStatus() == 3) {
        setConfirmButton(mContext.getString(2131231909), p);
      }
      for (;;)
      {
        setCancelButton(mContext.getString(2131231265), f);
        return;
        setConfirmButton(mContext.getString(2131230873), o);
      }
    }
    if (r.canHide())
    {
      setConfirmButton(mContext.getString(2131230857), n);
      setCancelButton(mContext.getString(2131231265), f);
      return;
    }
    setSingleButton(mContext.getString(2131231265), f);
  }
  
  private void g()
  {
    if ((i) && (e.get(Long.valueOf(r.getTaskId())) == null) && (((r instanceof ab)) || ((r instanceof r)) || ((r instanceof com.estrongs.fs.b.bo)) || ((r instanceof bc)) || ((r instanceof ad)) || ((r instanceof i)) || ((r instanceof com.estrongs.fs.b.p)) || ((r instanceof ag)) || ((r instanceof y)) || ((r instanceof com.estrongs.fs.b.a))))
    {
      t = new jj(this, a, getTitle(), r);
      e.put(Long.valueOf(r.getTaskId()), t);
    }
    while (e.get(Long.valueOf(r.getTaskId())) == null) {
      return;
    }
    t = ((f)e.get(Long.valueOf(r.getTaskId())));
  }
  
  private void h()
  {
    long l1 = System.currentTimeMillis() - g;
    if (l1 > 2000L) {}
    for (l1 = 0L;; l1 = 2000L - l1)
    {
      s.postDelayed(new ju(this), l1);
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
          localArrayList.add(new z((String)localObject1, true));
          localObject1 = MultiThreadCopy.a((String)localObject1);
          if (((File)localObject1).exists()) {
            localArrayList.add(new z(((File)localObject1).getPath(), true));
          }
          new ab(d.a(), localArrayList, false).execute();
        }
      }
    }
  }
  
  public jh a(String paramString1, String paramString2)
  {
    q.b(paramString1, paramString2);
    return this;
  }
  
  public jh a(boolean paramBoolean)
  {
    h = paramBoolean;
    return this;
  }
  
  protected String a()
  {
    return r.getDescription() + " " + getString(2131232195);
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
      localObject1 = getContext().getString(2131231284);
    }
    do
    {
      return (String)localObject1;
      if (a == 14) {
        return getContext().getString(2131231731);
      }
    } while (a != 12);
    return getContext().getString(2131231845);
  }
  
  protected void a(com.estrongs.a.a parama)
  {
    if (parama.canCancel())
    {
      dismiss();
      parama.requestStop();
      if (!bk.a(b())) {
        b(b());
      }
    }
  }
  
  public void a(String paramString)
  {
    q.a(paramString);
  }
  
  public jh b(boolean paramBoolean)
  {
    q.a(paramBoolean);
    return this;
  }
  
  protected String b()
  {
    return r.getDescription() + " " + getString(2131232166);
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
    if (bk.b(a)) {
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
      r.removeProgressListener(q.e);
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
      s.postDelayed(new jx(this), 1500L);
      return;
    }
    s.post(new jy(this));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.jh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */