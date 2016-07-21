package com.estrongs.android.pop.app;

import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.SwitchCompat;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.adapter.y;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.view.a.a;
import java.util.List;

public class GestureManageActivity
  extends HomeAsBackActivity
{
  private y a;
  private ad b;
  private TextView c;
  private a d;
  private a e;
  
  private void d()
  {
    Object localObject = (ListView)findViewById(2131624232);
    a = new y(this);
    ((ListView)localObject).setAdapter(a);
    c = ((TextView)findViewById(2131624798));
    ((ListView)localObject).setEmptyView(c);
    boolean bool = b.am();
    if (bool) {
      c.setText(2131231536);
    }
    for (;;)
    {
      localObject = (SwitchCompat)findViewById(2131624348);
      ((SwitchCompat)localObject).setFocusable(true);
      ((SwitchCompat)localObject).setOnCheckedChangeListener(new cq(this));
      ((SwitchCompat)localObject).setChecked(bool);
      a.a(bool);
      return;
      c.setText(2131231535);
    }
  }
  
  protected void a(List<a> paramList)
  {
    boolean bool = b.am();
    e = new a(2130838572, 2131231534).a(new cr(this));
    e.d(bool);
    paramList.add(e);
    d = new a(2130838582, 2131231541).a(new cu(this));
    d.d(bool);
    paramList.add(d);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    b = ad.a(this);
    super.onCreate(paramBundle);
    setContentView(2130903244);
    getSupportActionBar().setTitle(2131231547);
    d();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.GestureManageActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */