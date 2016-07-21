package com.estrongs.android.pop.app.analysis.b;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.cn;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.a.b.f;
import com.estrongs.android.a.j;
import com.estrongs.android.appinfo.AppFolderInfoManager;
import com.estrongs.android.pop.app.analysis.AnalysisResultDetailActivity;
import com.estrongs.android.ui.dialog.hf;
import com.estrongs.android.ui.dialog.o;
import com.estrongs.android.ui.fastscroller.vertical.VerticalRecyclerViewFastScroller;
import com.estrongs.fs.w;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

public abstract class a
  extends h
  implements j
{
  protected RecyclerView a;
  protected Button b;
  protected com.estrongs.android.ui.recycler.g c;
  protected String d;
  protected String e;
  protected String f;
  protected String g;
  protected int h;
  protected View i;
  protected ProgressBar j;
  protected TextView k;
  protected TextView l;
  protected VerticalRecyclerViewFastScroller m;
  protected LinearLayoutManager n;
  protected AtomicLong o = new AtomicLong();
  protected float p;
  
  protected int a()
  {
    return 2130903087;
  }
  
  public void a(int paramInt)
  {
    if (l != null)
    {
      l.setText(b(paramInt));
      l.setVisibility(0);
    }
  }
  
  protected void a(View paramView)
  {
    a = ((RecyclerView)paramView.findViewById(2131623946));
    n = new LinearLayoutManager(getActivity());
    a.setLayoutManager(n);
    if ((Build.VERSION.SDK_INT < 14) && (Build.VERSION.SDK_INT >= 11))
    {
      a.setItemAnimator(null);
      b = ((Button)paramView.findViewById(2131624205));
      b.setOnClickListener(new b(this));
      i = paramView.findViewById(2131624216);
      j = ((ProgressBar)paramView.findViewById(2131624217));
      k = ((TextView)paramView.findViewById(2131624218));
      m = ((VerticalRecyclerViewFastScroller)paramView.findViewById(2131624129));
      if (m != null)
      {
        m.setRecyclerView(a);
        if (Build.VERSION.SDK_INT >= 14) {
          break label218;
        }
        m.setVisibility(8);
        a.setVerticalScrollBarEnabled(true);
      }
    }
    for (;;)
    {
      d();
      l = ((TextView)paramView.findViewById(2131624219));
      return;
      a.setItemAnimator(new DefaultItemAnimator());
      break;
      label218:
      a.addOnScrollListener(m.getOnScrollListener());
      m.setVisibility(4);
      a.setVerticalScrollBarEnabled(false);
    }
  }
  
  protected void a(View paramView, int paramInt)
  {
    int[] arrayOfInt = new int[2];
    paramView.getLocationOnScreen(arrayOfInt);
    p = arrayOfInt[1];
    float f3 = cn.v(a);
    float f2 = a.getHeight() + f3 - m.getHandleView().getHeight() / 2;
    float f1 = f2;
    if (paramInt < 0) {
      f1 = f2 - paramView.getHeight();
    }
    cn.d(m, f3);
    m.b(f3, f1);
    m.invalidate();
  }
  
  protected void a(g paramg, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramg = ((f)b).n();
      if (paramg == null) {
        return;
      }
      new o(getActivity(), paramg).a();
      return;
    }
    String str = b.getAbsolutePath();
    hf localhf = new hf(getActivity(), str, true);
    localhf.c(false);
    if (b.getFileType() == w.a) {
      localhf.a(true);
    }
    for (;;)
    {
      localhf.a();
      return;
      localhf.a(false);
      localhf.b(true);
      localhf.b(2131231886, new c(this, str));
      localhf.a(2131231265, new d(this));
    }
  }
  
  public void a(String paramString)
  {
    if (getActivity() != null) {
      n();
    }
  }
  
  protected void a(String paramString, List<com.estrongs.fs.h> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return;
    }
    AppFolderInfoManager.d().a(paramString, paramList, new e(this));
  }
  
  public void a(String paramString, Map<String, com.estrongs.android.a.b.a> paramMap) {}
  
  protected void a(List<com.estrongs.fs.h> paramList)
  {
    a(d, paramList);
  }
  
  protected void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      i.setVisibility(8);
      return;
    }
    i.setVisibility(0);
    j.setVisibility(8);
    k.setVisibility(0);
    k.setText(b(f()));
  }
  
  protected String b()
  {
    return f;
  }
  
  protected void c()
  {
    d = o().getStringExtra("analysis_result_card_path");
    e = o().getStringExtra("analysis_result_card_key");
    h = o().getIntExtra("analysis_result_page_type", 3);
    f = o().getStringExtra("analysis_result_card_title");
    g = o().getStringExtra("analysis_result_card_packagename");
    j();
    e();
    com.estrongs.android.a.b.a().a(this);
  }
  
  protected void d()
  {
    c = new com.estrongs.android.ui.recycler.g(getActivity());
    c.b(1);
    c.a(q().getColor(2131558421));
    a.addItemDecoration(c);
  }
  
  protected void e()
  {
    i.setVisibility(0);
    j.setVisibility(0);
    k.setText(b(2131232182));
    k.setVisibility(0);
  }
  
  protected int f()
  {
    return 2131231510;
  }
  
  protected AnalysisResultDetailActivity g()
  {
    return (AnalysisResultDetailActivity)getActivity();
  }
  
  protected void h()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("analysis_result_card_key", e);
    localIntent.putExtra("analysis_result_card_path", d);
    localIntent.putExtra("analysis_result_cleaned_size", o.get());
    getActivity().setResult(-1, localIntent);
  }
  
  protected abstract void i();
  
  protected abstract void j();
  
  public void k() {}
  
  public void l() {}
  
  public void m() {}
  
  protected void n() {}
  
  public void onDestroy()
  {
    super.onDestroy();
    com.estrongs.android.a.b.a().b(this);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */