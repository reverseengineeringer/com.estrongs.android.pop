package com.estrongs.android.pop.app;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.utils.af;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.e.jk;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.by;

public class HideListActivity
  extends ESActivity
{
  public View.OnClickListener a = new ct(this);
  public View.OnClickListener b = new cu(this);
  private FrameLayout c;
  private af[] d = null;
  private ListView e = null;
  private af f = null;
  private boolean g = false;
  private cx h;
  
  private void a()
  {
    c.removeAllViews();
    c.addView(g.a(this).inflate(2130903136, null));
    ((TextView)findViewById(2131361825)).setText(2131427416);
    ((TextView)findViewById(2131361997)).setText(2131427416);
    findViewById(2131362345).setVisibility(8);
    ((FrameLayout)findViewById(2131362208)).setBackgroundDrawable(al.a(this).h());
    e = ((ListView)findViewById(2131362074));
    Object localObject = (TextView)findViewById(2131362041);
    ((TextView)localObject).setText(2131428157);
    e.setEmptyView((View)localObject);
    d = aa.f();
    if ((d == null) || (d.length == 0)) {}
    for (;;)
    {
      localObject = new by(this, (RelativeLayout)findViewById(2131362207), 1);
      jk localjk = new jk(this, true);
      localjk.a(2131428357, 2130838224, new cv(this));
      ((by)localObject).a("menu", localjk);
      ((by)localObject).a("menu", Boolean.valueOf(false));
      b();
      return;
      h = new cx(this, this, 2130903155, d);
      e.setAdapter(h);
    }
  }
  
  private void b()
  {
    LinearLayout localLinearLayout = (LinearLayout)((ImageView)findViewById(2131361917)).getParent();
    localLinearLayout.setFocusable(true);
    localLinearLayout.setOnClickListener(new cw(this));
  }
  
  public void finish()
  {
    super.finish();
    if (g)
    {
      FileExplorerActivity localFileExplorerActivity = FileExplorerActivity.J();
      if (localFileExplorerActivity != null) {
        localFileExplorerActivity.h(null);
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903187);
    c = ((FrameLayout)findViewById(2131362210));
    findViewById(2131362212).setVisibility(8);
    a();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.HideListActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */