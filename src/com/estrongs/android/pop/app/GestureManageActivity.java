package com.estrongs.android.pop.app;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.a.w;
import com.estrongs.android.ui.e.jk;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.SimpleSwitchButton;
import com.estrongs.android.ui.view.by;
import com.estrongs.android.view.a.a;

public class GestureManageActivity
  extends ESActivity
{
  private FrameLayout a;
  private w b;
  private ad c;
  private TextView d;
  
  private void a()
  {
    a.removeAllViews();
    a.addView(g.a(this).inflate(2130903136, null));
    ((FrameLayout)findViewById(2131362208)).setBackgroundDrawable(al.a(this).h());
    ((TextView)findViewById(2131362346)).setText(2131428346);
    Object localObject1 = (ListView)findViewById(2131362074);
    b = new w(this);
    ((ListView)localObject1).setAdapter(b);
    d = ((TextView)findViewById(2131362041));
    ((ListView)localObject1).setEmptyView(d);
    boolean bool = c.al();
    if (bool) {
      d.setText(2131428353);
    }
    for (;;)
    {
      Object localObject2 = new by(this, (RelativeLayout)findViewById(2131362207), 1);
      jk localjk = new jk(this, true);
      localObject1 = new a(al.a(this).c(2130838212), getString(2131428350)).a(new cm(this));
      localjk.a((a)localObject1);
      ((a)localObject1).d(bool);
      a locala = new a(al.a(this).c(2130838220), getString(2131428362)).a(new cp(this));
      localjk.a(locala);
      locala.d(bool);
      ((by)localObject2).a("add", localjk);
      ((by)localObject2).a("add", Boolean.valueOf(false));
      localObject2 = (SimpleSwitchButton)findViewById(2131361848);
      ((SimpleSwitchButton)localObject2).setFocusable(true);
      ((SimpleSwitchButton)localObject2).setOnCheckedChangeListener(new cq(this, (a)localObject1, locala));
      ((SimpleSwitchButton)localObject2).setChecked(bool);
      b.a(bool);
      b();
      return;
      d.setText(2131428367);
    }
  }
  
  private void b()
  {
    LinearLayout localLinearLayout = (LinearLayout)((ImageView)findViewById(2131361917)).getParent();
    localLinearLayout.setFocusable(true);
    localLinearLayout.setOnClickListener(new cr(this));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903187);
    a = ((FrameLayout)findViewById(2131362210));
    findViewById(2131362212).setVisibility(8);
    c = ad.a(this);
    a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.GestureManageActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */