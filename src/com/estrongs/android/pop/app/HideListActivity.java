package com.estrongs.android.pop.app;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.utils.ad;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.util.bk;
import com.estrongs.android.view.a.a;
import java.util.List;

public class HideListActivity
  extends HomeAsBackActivity
{
  public View.OnClickListener a = new cw(this);
  public View.OnClickListener b = new cx(this);
  private aj[] c = null;
  private ListView d = null;
  private aj e = null;
  private boolean f = false;
  private cz g;
  
  private void d()
  {
    findViewById(2131624953).setVisibility(8);
    d = ((ListView)findViewById(2131624232));
    TextView localTextView = (TextView)findViewById(2131624798);
    localTextView.setText(2131231559);
    d.setEmptyView(localTextView);
    c = ad.f();
    if ((c == null) || (c.length == 0)) {
      return;
    }
    g = new cz(this, this, 2130903262, c);
    d.setAdapter(g);
  }
  
  protected void a(List<a> paramList)
  {
    paramList.add(new a(2130838591, 2131231560).a(new cy(this)));
  }
  
  public void finish()
  {
    super.finish();
    if (bk.f()) {}
    FileExplorerActivity localFileExplorerActivity;
    do
    {
      do
      {
        return;
      } while (!f);
      localFileExplorerActivity = FileExplorerActivity.X();
    } while (localFileExplorerActivity == null);
    localFileExplorerActivity.m(null);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131231654);
    setTitle(2131231654);
    setContentView(2130903244);
    d();
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