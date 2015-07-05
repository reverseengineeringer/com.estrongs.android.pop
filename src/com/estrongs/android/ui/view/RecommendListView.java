package com.estrongs.android.ui.view;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.app.b;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.pop.view.utils.v;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.y;
import com.estrongs.fs.util.j;

public class RecommendListView
  extends ListView
{
  private Context a;
  private boolean b = false;
  private boolean c = false;
  private v[] d = null;
  private bx e = null;
  private Object f = new Object();
  private Handler g;
  private al h;
  private ProgressBar i;
  private SparseArray<View> j = new SparseArray();
  private View.OnClickListener k = new bv(this);
  
  public RecommendListView(Context paramContext)
  {
    super(paramContext);
    a = paramContext;
    h = al.a(a);
    setDivider(h.a(2130837712));
  }
  
  public RecommendListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = paramContext;
    h = al.a(a);
    setDivider(h.a(2130837712));
  }
  
  public RecommendListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a = paramContext;
    h = al.a(a);
    setDivider(h.a(2130837712));
  }
  
  private int a(y paramy)
  {
    paramy = (v)d;
    int n;
    if (d == null)
    {
      n = -1;
      return n;
    }
    int m = 0;
    for (;;)
    {
      if (m >= d.length) {
        break label49;
      }
      n = m;
      if (paramy == d[m]) {
        break;
      }
      m += 1;
    }
    label49:
    return -1;
  }
  
  private void a(View paramView, v paramv)
  {
    if ((paramView == null) || (paramv == null)) {}
    TextView localTextView1;
    TextView localTextView2;
    ProgressBar localProgressBar;
    Button localButton;
    do
    {
      return;
      LinearLayout localLinearLayout1 = (LinearLayout)paramView.findViewById(2131362678);
      LinearLayout localLinearLayout2 = (LinearLayout)paramView.findViewById(2131362680);
      localTextView1 = (TextView)paramView.findViewById(2131362681);
      localTextView2 = (TextView)paramView.findViewById(2131362682);
      localProgressBar = (ProgressBar)paramView.findViewById(2131362683);
      localButton = (Button)paramView.findViewById(2131362684);
      TextView localTextView3 = (TextView)paramView.findViewById(2131362679);
      paramView = (TextView)paramView.findViewById(2131362693);
      localLinearLayout2.setVisibility(0);
      localLinearLayout1.setVisibility(8);
      long l1;
      long l2;
      if (q == 1)
      {
        localButton.setText(a.getText(2131427358));
        l1 = t;
        l2 = u;
        localTextView1.setText(j.c(l2) + "/" + j.c(l1));
        if (l1 == 0L) {}
        for (m = 0;; m = (int)(l2 * 1000L / l1))
        {
          localProgressBar.setMax(1000);
          localProgressBar.setProgress(m);
          localTextView2.setText(m / 10 + "%");
          return;
        }
      }
      if (q == 0)
      {
        localTextView1.setText(a.getText(2131427447));
        localProgressBar.setMax(1000);
        localProgressBar.setProgress(0);
        localTextView2.setText("0%");
        if (v == 0) {
          v = n.b().b(paramv);
        }
        if ((v == 0) || (v == 1)) {
          if (paramv.c() != null)
          {
            localButton.setText(a.getText(2131427608));
            localButton.setBackgroundResource(2130837589);
          }
        }
        for (;;)
        {
          localLinearLayout2.setVisibility(8);
          localLinearLayout1.setVisibility(0);
          localTextView3.setText(c);
          paramView.setText(g);
          return;
          localButton.setText(a.getText(2131427359));
          break;
          if (v == 2)
          {
            localButton.setText(a.getText(2131427609));
            localButton.setBackgroundResource(2130837589);
          }
          else if (v == 3)
          {
            localButton.setText(a.getText(2131427610));
            localButton.setBackgroundResource(2130837591);
          }
        }
      }
      if (q == 2)
      {
        localTextView1.setText(a.getText(2131427613));
        l1 = t;
        l2 = u;
        if (l1 == 0L) {}
        for (m = 0;; m = (int)(l2 * 1000L / l1))
        {
          localProgressBar.setMax(1000);
          localProgressBar.setProgress(m);
          localTextView2.setText(m / 10 + "%");
          localButton.setText(a.getText(2131427397));
          localButton.setBackgroundResource(2130837589);
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
        localButton.setText(a.getText(2131427612));
        localButton.setBackgroundResource(2130837589);
        return;
      }
      if (q == 5)
      {
        localTextView1.setText(a.getText(2131427447));
        localButton.setText(a.getText(2131427358));
        localButton.setBackgroundResource(2130837590);
        return;
      }
    } while (q != 4);
    localTextView1.setText(j.c(u) + "/" + j.c(t));
    if (t == 0L) {}
    for (int m = 0;; m = (int)(u * 1000L / t))
    {
      localProgressBar.setMax(1000);
      localProgressBar.setProgress(m);
      localTextView2.setText(m / 10 + "%");
      localButton.setText(a.getText(2131427611));
      return;
    }
  }
  
  private Handler b()
  {
    return new bw(this);
  }
  
  private void b(int paramInt)
  {
    Message localMessage = new Message();
    arg1 = 123465;
    arg2 = paramInt;
    synchronized (f)
    {
      if (g != null) {
        g.sendMessage(localMessage);
      }
      return;
    }
  }
  
  public void a()
  {
    n.b().e();
    if (e != null)
    {
      int m = getFirstVisiblePosition();
      e.notifyDataSetChanged();
      setSelection(m);
    }
  }
  
  public void a(int paramInt)
  {
    n.b().a(d[paramInt], 0);
    if (c) {}
    int m;
    int n;
    do
    {
      return;
      m = getFirstVisiblePosition();
      n = getLastVisiblePosition();
    } while ((m > paramInt) || (paramInt > n));
    a((View)j.get(paramInt), d[paramInt]);
  }
  
  public void a(ProgressBar paramProgressBar)
  {
    i = paramProgressBar;
  }
  
  public void a(Object paramObject)
  {
    int m = a((y)paramObject);
    if (c) {
      return;
    }
    int n = getFirstVisiblePosition();
    int i1 = getLastVisiblePosition();
    if ((n <= m) && (m <= i1)) {
      a((View)j.get(m), d[m]);
    }
    try
    {
      paramObject = b.a(n.a(d[m].f));
      a.startActivity((Intent)paramObject);
      return;
    }
    catch (NullPointerException paramObject) {}
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public void a(v[] paramArrayOfv)
  {
    for (;;)
    {
      synchronized (f)
      {
        g = b();
        n.b().a(g);
        if (e == null)
        {
          if ((paramArrayOfv != null) && (paramArrayOfv.length > 0))
          {
            d = paramArrayOfv;
            e = new bx(this, a, 2130903236, d);
            setAdapter(e);
            e.notifyDataSetChanged();
          }
          a();
          return;
        }
      }
      if (getAdapter() == null)
      {
        setAdapter(e);
        e.notifyDataSetChanged();
      }
    }
  }
  
  public void b(v[] paramArrayOfv)
  {
    if ((c) || (paramArrayOfv == null)) {
      return;
    }
    d = paramArrayOfv;
    e = new bx(this, a, 2130903236, d);
    setAdapter(e);
    int m = getFirstVisiblePosition();
    e.notifyDataSetChanged();
    setSelection(m);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.RecommendListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */