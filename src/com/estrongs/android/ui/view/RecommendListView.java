package com.estrongs.android.ui.view;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.app.RecommAcitivity;
import com.estrongs.android.pop.app.b;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.aa;
import com.estrongs.fs.util.j;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class RecommendListView
  extends ListView
{
  private float a;
  private float b;
  private float c;
  private float d;
  private Context e;
  private boolean f = false;
  private boolean g = false;
  private v[] h = null;
  private ci i = null;
  private Object j = new Object();
  private Handler k;
  private at l;
  private ProgressBar m;
  private SparseArray<View> n = new SparseArray();
  private View o;
  private View p;
  private Set<String> q = new HashSet();
  private View.OnClickListener r = new ce(this);
  
  public RecommendListView(Context paramContext)
  {
    super(paramContext);
    e = paramContext;
    l = at.a(e);
    setDivider(new ColorDrawable(l.c(2131558585)));
    setDividerHeight(paramContext.getResources().getDimensionPixelOffset(2131165254));
  }
  
  public RecommendListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    e = paramContext;
    l = at.a(e);
    setDivider(new ColorDrawable(l.c(2131558585)));
    setDividerHeight(paramContext.getResources().getDimensionPixelOffset(2131165254));
  }
  
  public RecommendListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    e = paramContext;
    l = at.a(e);
    setDivider(new ColorDrawable(l.c(2131558585)));
    setDividerHeight(paramContext.getResources().getDimensionPixelOffset(2131165254));
  }
  
  private int a(aa paramaa)
  {
    paramaa = (v)d;
    int i2;
    if (h == null)
    {
      i2 = -1;
      return i2;
    }
    int i1 = 0;
    for (;;)
    {
      if (i1 >= h.length) {
        break label49;
      }
      i2 = i1;
      if (paramaa == h[i1]) {
        break;
      }
      i1 += 1;
    }
    label49:
    return -1;
  }
  
  private void a(int paramInt, String paramString1, String paramString2)
  {
    Object localObject;
    if (!paramString1.startsWith("market://"))
    {
      localObject = paramString2;
      if (paramString2 != null) {}
    }
    else
    {
      localObject = paramString1;
    }
    paramString1 = new Intent("android.intent.action.VIEW");
    paramString1.setData(Uri.parse((String)localObject));
    if (((String)localObject).startsWith("market://"))
    {
      paramString2 = getContext().getPackageManager().queryIntentActivities(paramString1, 0).iterator();
      while (paramString2.hasNext())
      {
        localObject = (ResolveInfo)paramString2.next();
        if ("com.android.vending".equals(activityInfo.applicationInfo.packageName)) {
          paramString1.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
        }
      }
    }
    try
    {
      if ((e instanceof RecommAcitivity)) {
        ((RecommAcitivity)e).a(paramString1);
      }
      for (;;)
      {
        n.d(h[paramInt]);
        if (h[paramInt].q != 6) {
          break;
        }
        h[paramInt].q = 7;
        i.notifyDataSetChanged();
        return;
        e.startActivity(paramString1);
      }
      return;
    }
    catch (ActivityNotFoundException paramString1)
    {
      ak.a(e, e.getText(2131231690), 1);
      if (h[paramInt].q == 6)
      {
        h[paramInt].q = 0;
        i.notifyDataSetChanged();
      }
    }
  }
  
  private void a(View paramView, v paramv)
  {
    if ((paramView == null) || (paramv == null)) {
      return;
    }
    LinearLayout localLinearLayout1 = (LinearLayout)paramView.findViewById(2131625446);
    LinearLayout localLinearLayout2 = (LinearLayout)paramView.findViewById(2131625448);
    TextView localTextView1 = (TextView)paramView.findViewById(2131625449);
    TextView localTextView2 = (TextView)paramView.findViewById(2131625450);
    ProgressBar localProgressBar = (ProgressBar)paramView.findViewById(2131625451);
    Button localButton = (Button)paramView.findViewById(2131625452);
    TextView localTextView3 = (TextView)paramView.findViewById(2131625447);
    paramView = (TextView)paramView.findViewById(2131625461);
    localLinearLayout2.setVisibility(0);
    localLinearLayout1.setVisibility(8);
    localTextView3.setText(c);
    paramView.setText(g);
    long l1;
    long l2;
    int i1;
    if (q == 1)
    {
      localButton.setText(e.getText(2131230897));
      l1 = t;
      l2 = u;
      localTextView1.setText(j.c(l2) + "/" + j.c(l1));
      if (l1 == 0L) {}
      for (i1 = 0;; i1 = (int)(l2 * 1000L / l1))
      {
        localProgressBar.setMax(1000);
        localProgressBar.setProgress(i1);
        localTextView2.setText(i1 / 10 + "%");
        return;
      }
    }
    if (q == 0)
    {
      localTextView1.setText(e.getText(2131232170));
      localProgressBar.setMax(1000);
      localProgressBar.setProgress(0);
      localTextView2.setText("0%");
      if (v == 0) {
        v = n.b().b(paramv);
      }
      if ((v == 0) || (v == 1)) {
        if (paramv.c() != null)
        {
          localButton.setText(e.getText(2131232247));
          localButton.setBackgroundResource(2130837824);
        }
      }
      for (;;)
      {
        localLinearLayout2.setVisibility(8);
        localLinearLayout1.setVisibility(0);
        localTextView3.setText(c);
        paramView.setText(g);
        return;
        localButton.setText(e.getText(2131230847));
        break;
        if (v == 2)
        {
          localButton.setText(e.getText(2131232248));
          localButton.setBackgroundResource(2130837824);
        }
        else if (v == 3)
        {
          localButton.setText(e.getText(2131232246));
          localButton.setBackgroundResource(2130837826);
        }
      }
    }
    if (q == 2)
    {
      localTextView1.setText(e.getText(2131232245));
      l1 = t;
      l2 = u;
      if (l1 == 0L) {}
      for (i1 = 0;; i1 = (int)(l2 * 1000L / l1))
      {
        localProgressBar.setMax(1000);
        localProgressBar.setProgress(i1);
        localTextView2.setText(i1 / 10 + "%");
        localButton.setText(e.getText(2131231723));
        localButton.setBackgroundResource(2130837824);
        return;
      }
    }
    if (q == 3)
    {
      paramView = j.c(t);
      localTextView1.setText(paramView + "/" + paramView);
      localProgressBar.setMax(1000);
      localProgressBar.setProgress(1000);
      localTextView2.setText("100%");
      localButton.setText(e.getText(2131231096));
      localButton.setBackgroundResource(2130837824);
      return;
    }
    if (q == 5)
    {
      localTextView1.setText(e.getText(2131232170));
      localButton.setText(e.getText(2131230897));
      localButton.setBackgroundResource(2130837825);
      return;
    }
    if (q == 4)
    {
      localTextView1.setText(j.c(u) + "/" + j.c(t));
      if (t == 0L) {}
      for (i1 = 0;; i1 = (int)(u * 1000L / t))
      {
        localProgressBar.setMax(1000);
        localProgressBar.setProgress(i1);
        localTextView2.setText(i1 / 10 + "%");
        localButton.setText(e.getText(2131232244));
        return;
      }
    }
    if ((q == 7) || (q == 6))
    {
      localLinearLayout2.setVisibility(8);
      localLinearLayout1.setVisibility(0);
      localButton.setText(e.getText(2131232247));
      return;
    }
    localLinearLayout2.setVisibility(8);
    localLinearLayout1.setVisibility(0);
  }
  
  private void b(int paramInt)
  {
    Message localMessage = new Message();
    arg1 = 123465;
    arg2 = paramInt;
    synchronized (j)
    {
      if (k != null) {
        k.sendMessage(localMessage);
      }
      return;
    }
  }
  
  private Handler getAsyncHandler()
  {
    return new ch(this);
  }
  
  public void a()
  {
    n.b().e();
    if (i != null)
    {
      int i1 = getFirstVisiblePosition();
      i.notifyDataSetChanged();
      setSelection(i1);
    }
  }
  
  public void a(int paramInt)
  {
    n.b().a(h[paramInt], 0);
    if (g) {}
    int i1;
    int i2;
    do
    {
      return;
      i1 = getFirstVisiblePosition();
      i2 = getLastVisiblePosition();
    } while ((i1 > paramInt) || (paramInt > i2));
    a((View)n.get(paramInt), h[paramInt]);
  }
  
  public void a(Object paramObject)
  {
    int i1 = a((aa)paramObject);
    if (g) {
      return;
    }
    int i2 = getFirstVisiblePosition();
    int i3 = getLastVisiblePosition();
    if ((i2 <= i1) && (i1 <= i3)) {
      a((View)n.get(i1), h[i1]);
    }
    try
    {
      paramObject = b.a(n.a(h[i1].f));
      e.startActivity((Intent)paramObject);
      return;
    }
    catch (NullPointerException paramObject) {}
  }
  
  public void a(v[] paramArrayOfv)
  {
    for (;;)
    {
      synchronized (j)
      {
        k = getAsyncHandler();
        n.b().a(k);
        if (i == null)
        {
          if ((paramArrayOfv != null) && (paramArrayOfv.length > 0))
          {
            h = paramArrayOfv;
            i = new ci(this, h);
            if (p != null) {
              addHeaderView(p);
            }
            setAdapter(i);
            i.notifyDataSetChanged();
          }
          a();
          return;
        }
      }
      if (getAdapter() == null)
      {
        setAdapter(i);
        i.notifyDataSetChanged();
      }
    }
  }
  
  public void b(v[] paramArrayOfv)
  {
    if ((g) || (paramArrayOfv == null)) {
      return;
    }
    h = paramArrayOfv;
    if (i == null)
    {
      i = new ci(this, h);
      setAdapter(i);
    }
    for (;;)
    {
      int i1 = getFirstVisiblePosition();
      i.notifyDataSetChanged();
      setSelection(i1);
      return;
      i.a(h);
    }
  }
  
  public int getItemsCount()
  {
    if (h == null) {
      return 0;
    }
    return h.length;
  }
  
  public Set<String> getPackages()
  {
    return q;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    }
    do
    {
      for (;;)
      {
        return super.onInterceptTouchEvent(paramMotionEvent);
        b = 0.0F;
        a = 0.0F;
        c = paramMotionEvent.getX();
        d = paramMotionEvent.getY();
      }
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      a += Math.abs(f1 - c);
      b += Math.abs(f2 - d);
      c = f1;
      d = f2;
    } while (a <= b);
    return false;
  }
  
  public void setDialogStyle(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public void setListFooter(View paramView)
  {
    o = paramView;
  }
  
  public void setListHeaderLayout(View paramView)
  {
    p = paramView;
  }
  
  public void setRefreshProgressBar(ProgressBar paramProgressBar)
  {
    m = paramProgressBar;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.RecommendListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */