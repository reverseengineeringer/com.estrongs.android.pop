package com.estrongs.android.pop.app.finder;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.FloatingActionButton;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.estrongs.android.pop.app.finder.a.b;
import com.estrongs.android.pop.app.finder.data.FinderGroupData;
import com.estrongs.android.pop.app.finder.data.FinderGroupData.GroupType;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.bl;
import java.util.List;

public class f
  implements View.OnClickListener, View.OnKeyListener, b
{
  private Context a;
  private PopupWindow b;
  private View c;
  private RecyclerView d;
  private RecyclerView.LayoutManager e;
  private com.estrongs.android.pop.app.finder.a.a f;
  private TextView g;
  private TextView h;
  private TextView i;
  private FloatingActionButton j;
  
  public f(Context paramContext)
  {
    a = paramContext;
    c();
    e();
  }
  
  private void c()
  {
    c = View.inflate(a, 2130903234, null);
    d = ((RecyclerView)bl.a(c, 2131624909));
    g = ((TextView)bl.a(c, 2131624912));
    h = ((TextView)bl.a(c, 2131624913));
    i = ((TextView)bl.a(c, 2131624914));
    j = ((FloatingActionButton)bl.a(c, 2131624911));
    c.setFocusable(true);
    c.setFocusableInTouchMode(true);
    c.setOnKeyListener(this);
    c.setOnClickListener(this);
    g.setOnClickListener(this);
    h.setOnClickListener(this);
    i.setOnClickListener(this);
    j.setOnClickListener(this);
    b = new PopupWindow(a);
    b.setWidth(-1);
    b.setHeight(-1);
    b.setBackgroundDrawable(null);
    b.setContentView(c);
    b.setFocusable(true);
    b.setOutsideTouchable(true);
    b.setTouchable(true);
  }
  
  private void d()
  {
    g.setText(a.getString(2131231265));
    h.setText(a.getString(2131231271));
    i.setText(a.getString(2131231270));
  }
  
  private void e()
  {
    f = new com.estrongs.android.pop.app.finder.a.a(a);
    e = new LinearLayoutManager(a);
    d.setLayoutManager(e);
    d.setAdapter(f);
    f.notifyDataSetChanged();
    f.a(this);
  }
  
  private void f()
  {
    if ((a instanceof FileExplorerActivity)) {
      ((FileExplorerActivity)a).f("finder://");
    }
  }
  
  public void a(View paramView)
  {
    if ((a == null) || (((Activity)a).isFinishing())) {}
    while (b == null) {
      return;
    }
    d();
    b.showAtLocation(paramView, 0, 0, 0);
  }
  
  public void a(FinderGroupData paramFinderGroupData, int paramInt)
  {
    f.notifyItemChanged(paramInt);
    if (d == FinderGroupData.GroupType.Additional)
    {
      a.a().g();
      f.a();
    }
  }
  
  public void a(List<FinderGroupData> paramList)
  {
    f.a(paramList);
    f.notifyDataSetChanged();
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      b.setAnimationStyle(2131296634);
      return;
    }
    b.setAnimationStyle(-1);
  }
  
  public boolean a()
  {
    return (b != null) && (b.isShowing());
  }
  
  public void b()
  {
    if (b != null) {
      b.dismiss();
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView == g) {
      a.a().c();
    }
    do
    {
      return;
      if (paramView == h)
      {
        a.a().d();
        return;
      }
      if (paramView == i)
      {
        a.a().e();
        b.dismiss();
        f();
        return;
      }
      if (paramView == j)
      {
        a.a().c();
        return;
      }
    } while (paramView != c);
    a.a().c();
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 0) && (paramInt == 4))
    {
      a.a().c();
      b.dismiss();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.finder.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */