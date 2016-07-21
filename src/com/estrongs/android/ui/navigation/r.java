package com.estrongs.android.ui.navigation;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.estrongs.android.pop.app.PopPreferenceActivity;
import com.estrongs.android.pop.esclasses.p;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.adapter.ListAdapter_NewNavi;
import com.estrongs.android.ui.e.km;
import com.estrongs.android.ui.preference.TabletSettingsActivity;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.NaviListView;
import com.estrongs.android.view.a.a;

public class r
{
  private View a;
  private Context b;
  private at c;
  private ListAdapter_NewNavi d;
  private NaviListView e;
  private km f;
  
  public r(Context paramContext, View paramView)
  {
    a = paramView;
    b = paramContext;
    c = at.a(b);
    e();
  }
  
  public static void a(FileExplorerActivity paramFileExplorerActivity)
  {
    paramFileExplorerActivity.o();
    if (a(paramFileExplorerActivity)) {}
    for (Intent localIntent = new Intent(paramFileExplorerActivity, PopPreferenceActivity.class);; localIntent = new Intent(paramFileExplorerActivity, TabletSettingsActivity.class))
    {
      localIntent.setFlags(268435456);
      paramFileExplorerActivity.startActivity(localIntent);
      return;
    }
  }
  
  public static boolean a(Context paramContext)
  {
    return (Build.VERSION.SDK_INT < 11) || (!p.a);
  }
  
  private void e()
  {
    FileExplorerActivity localFileExplorerActivity = (FileExplorerActivity)b;
    Object localObject1 = (NaviListView)a.findViewById(2131624232);
    ((NaviListView)localObject1).setDividerHeight(0);
    e = ((NaviListView)localObject1);
    Object localObject2 = new s(this, (NaviListView)localObject1, localFileExplorerActivity);
    d = new ListAdapter_NewNavi(b, (Handler)localObject2);
    localObject2 = LayoutInflater.from(b).inflate(2130903305, (ViewGroup)localObject1, false);
    ((NaviListView)localObject1).addHeaderView((View)localObject2);
    ((NaviListView)localObject1).setAdapter(d);
    ((NaviListView)localObject1).setItemsCanFocus(true);
    ((View)localObject2).setFocusable(false);
    if (c.p()) {
      a.findViewById(2131625215).setBackgroundDrawable(c.k());
    }
    localObject2 = d.d();
    int i = 0;
    if (i < d.getGroupCount())
    {
      if (i == d.getGroupCount() - 1) {
        if (((SharedPreferences)localObject2).getBoolean("group" + i, true)) {
          ((NaviListView)localObject1).expandGroup(i);
        }
      }
      for (;;)
      {
        i += 1;
        break;
        if (((SharedPreferences)localObject2).getBoolean("group" + i, false)) {
          ((NaviListView)localObject1).expandGroup(i);
        }
      }
    }
    f = new w(this, b, true);
    if (c.p())
    {
      f.a().setBackgroundDrawable(c.j());
      f.b(c.l());
      f.c(c.l());
    }
    localObject1 = new a(c.b(2130838549), b.getString(2131230851));
    ((a)localObject1).c(c.c(2131558413));
    ((a)localObject1).a(new x(this, localFileExplorerActivity));
    f.a((a)localObject1);
    if (!z.P)
    {
      localObject1 = new a(c.b(2130838619), b.getString(2131231713));
      ((a)localObject1).c(c.c(2131558413));
      ((a)localObject1).a(new y(this, localFileExplorerActivity));
      f.a((a)localObject1);
    }
    localObject1 = new a(c.b(2130838603), b.getString(2131231617));
    ((a)localObject1).c(c.c(2131558413));
    ((a)localObject1).a(new aa(this, localFileExplorerActivity));
    f.a((a)localObject1);
  }
  
  public void a(q paramq)
  {
    ((FileExplorerActivity)b).a(paramq);
  }
  
  public boolean a()
  {
    return false;
  }
  
  public ListAdapter_NewNavi b()
  {
    return d;
  }
  
  public void c()
  {
    ((FileExplorerActivity)b).w();
  }
  
  public View d()
  {
    if (e == null) {
      return a;
    }
    return e;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */