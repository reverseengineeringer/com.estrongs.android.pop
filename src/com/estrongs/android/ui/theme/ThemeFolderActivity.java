package com.estrongs.android.ui.theme;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.widget.ListView;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.view.a.a;
import java.util.List;

public class ThemeFolderActivity
  extends HomeAsBackActivity
{
  private at a;
  private ai b;
  private boolean c;
  private final int d = 6;
  private int e;
  private Context f;
  private al g;
  
  private void d()
  {
    ListView localListView = (ListView)findViewById(2131625556);
    b = new ai(this, this);
    localListView.setAdapter(b);
  }
  
  private void e()
  {
    int i = b.a();
    if (e == a.e())
    {
      if (!a.e(i)) {
        d(2131232430);
      }
      while (!c) {
        return;
      }
      setResult(-1);
      return;
    }
    String str = a.d(i);
    g.a(this, str, false);
  }
  
  private void f()
  {
    if (c)
    {
      new cv(this).a(2131232414).b(2131232411).b(2131231270, new ah(this)).c(2131231265, new ag(this)).c();
      return;
    }
    finish();
  }
  
  protected void a(List<a> paramList)
  {
    paramList.add(new a(2130838595, 2131230883).a(new af(this)));
  }
  
  protected boolean c()
  {
    return false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131232416);
    setContentView(2130903440);
    int i = getIntent().getIntExtra("theme_data_index", -1);
    if (i == -1)
    {
      finish();
      return;
    }
    e = i;
    a = at.a(this);
    paramBundle = a.g();
    if (paramBundle == null)
    {
      finish();
      return;
    }
    g = ((al)paramBundle.get(e));
    f = g.a(this);
    c = false;
    d();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      f();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      f();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ThemeFolderActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */