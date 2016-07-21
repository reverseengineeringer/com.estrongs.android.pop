package com.estrongs.android.view;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.support.v4.view.cn;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.estrongs.android.pop.view.utils.ac;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bl;
import com.estrongs.fs.b.al;
import com.estrongs.fs.h;
import java.util.LinkedList;
import java.util.List;

public class b
  extends cr
{
  private PopupWindow a;
  private String b;
  private TextView c;
  private ImageView d;
  
  public b(Activity paramActivity, com.estrongs.fs.util.a.a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  private void b(View paramView)
  {
    if (a == null) {
      c(paramView);
    }
    for (;;)
    {
      cn.e(d, 0.0F);
      return;
      a.showAsDropDown(paramView);
    }
  }
  
  private void c(View paramView)
  {
    View localView = LayoutInflater.from(ag).inflate(2130903103, null);
    com.estrongs.android.ui.recycler.a locala = new com.estrongs.android.ui.recycler.a(ag);
    ListView localListView = (ListView)localView.findViewById(2131624232);
    localListView.setAdapter(locala);
    a = new PopupWindow(localView, g.a(ag, 200.0F), -2);
    a.setBackgroundDrawable(ag.getResources().getDrawable(2130838545));
    a.setOutsideTouchable(true);
    a.setAnimationStyle(16973826);
    a.update();
    a.setTouchable(true);
    a.setFocusable(true);
    a.showAsDropDown(paramView);
    localListView.setOnItemClickListener(new e(this));
    a.setOnDismissListener(new f(this));
  }
  
  public void a(int paramInt)
  {
    super.a(paramInt);
  }
  
  public void a(Configuration paramConfiguration)
  {
    super.a(paramConfiguration);
  }
  
  protected void a(al paramal, List<h> paramList)
  {
    super.a(paramal, paramList);
    if (ap.ao(D.getPath()))
    {
      if (!i) {
        break label35;
      }
      f(2131232522);
    }
    label35:
    while (H.size() != 0) {
      return;
    }
    f(2131231033);
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    if (ap.ao(paramh.getPath()))
    {
      if (P() != 7) {
        a(7);
      }
      b = j(2131231014);
      c.setText(b);
    }
    for (;;)
    {
      super.a(paramh, paramTypedMap);
      return;
      int i = ac.b(ag, paramh.getPath());
      if (P() != i) {
        a(i);
      }
      if ((ap.aj(paramh.getPath())) || (ap.ak(paramh.getPath())))
      {
        b = j(2131231015);
        c.setText(b);
      }
      else if (ap.ag(paramh.getPath()))
      {
        b = j(2131231010);
        c.setText(b);
      }
      else if (ap.al(paramh.getPath()))
      {
        b = j(2131231013);
        c.setText(b);
      }
    }
  }
  
  public void a_(List<h> paramList)
  {
    super.a_(paramList);
    e();
  }
  
  public void e()
  {
    super.e();
  }
  
  public void l()
  {
    super.l();
  }
  
  public void m()
  {
    Object localObject = aA();
    LinearLayout localLinearLayout2;
    if (localObject != null)
    {
      ((View)localObject).setVisibility(0);
      ((HorizontalScrollView)((View)localObject).findViewById(2131624064)).setVisibility(8);
      LinearLayout localLinearLayout1 = (LinearLayout)b(2131625626);
      localLinearLayout2 = (LinearLayout)b(2131625627);
      c = ((TextView)((View)localObject).findViewById(2131625628));
      d = ((ImageView)b(2131624449));
      cn.e(d, 180.0F);
      localLinearLayout1.setVisibility(0);
      localLinearLayout2.setFocusable(true);
      localLinearLayout2.setBackgroundResource(2130837674);
      if (b == null) {
        break label197;
      }
      c.setText(b);
    }
    for (;;)
    {
      localLinearLayout2.setOnClickListener(new c(this));
      localObject = (TextView)bl.a((View)localObject, 2131625044);
      ((TextView)localObject).setText(ag.getString(2131230916));
      ((TextView)localObject).setFocusable(true);
      ((TextView)localObject).setOnClickListener(new d(this));
      if ((C == null) || (!ap.ag(C))) {
        break;
      }
      ((TextView)localObject).setVisibility(4);
      return;
      label197:
      c.setText(ag.getString(2131231015));
    }
    ((TextView)localObject).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */