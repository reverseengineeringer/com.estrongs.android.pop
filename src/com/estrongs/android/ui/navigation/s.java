package com.estrongs.android.ui.navigation;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.pop.app.PopPreferenceActivity;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.a.aa;
import com.estrongs.android.ui.e.jk;
import com.estrongs.android.ui.preference.TabletSettingsActivity;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.NaviListView;

public class s
{
  private View a;
  private Context b;
  private al c;
  private aa d;
  private NaviListView e;
  private jk f;
  
  public s(Context paramContext, View paramView)
  {
    a = paramView;
    b = paramContext;
    c = al.a(b);
    e();
  }
  
  public static void a(FileExplorerActivity paramFileExplorerActivity)
  {
    paramFileExplorerActivity.k();
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
    return (Build.VERSION.SDK_INT < 11) || (!k.a);
  }
  
  private void e()
  {
    if (com.estrongs.android.pop.z.O)
    {
      localObject1 = (TextView)a.findViewById(2131361825);
      ((TextView)localObject1).setTextSize(1, 16.0F);
      getParentgetLayoutParamsheight = com.estrongs.android.ui.d.a.a(b, 24.0F);
    }
    Object localObject1 = (FileExplorerActivity)b;
    Object localObject2 = (NaviListView)a.findViewById(2131362074);
    ((NaviListView)localObject2).setChildDivider(c.a(2130837504));
    e = ((NaviListView)localObject2);
    Object localObject3 = new t(this, (NaviListView)localObject2, (FileExplorerActivity)localObject1);
    d = new aa(b, (Handler)localObject3);
    ((NaviListView)localObject2).setAdapter(d);
    ((NaviListView)localObject2).setItemsCanFocus(true);
    localObject3 = d.b();
    int i = 0;
    while (i < d.getGroupCount())
    {
      if (((SharedPreferences)localObject3).getBoolean("group" + i, true)) {
        ((NaviListView)localObject2).expandGroup(i);
      }
      i += 1;
    }
    localObject2 = (LinearLayout)a.findViewById(2131362487);
    f = new x(this, b, true);
    f.a().setBackgroundResource(2130838270);
    localObject3 = new com.estrongs.android.view.a.a(c.c(2130838194), b.getString(2131427363));
    ((com.estrongs.android.view.a.a)localObject3).c(c.d(2131230748));
    ((com.estrongs.android.view.a.a)localObject3).a(new y(this, (FileExplorerActivity)localObject1));
    f.a((com.estrongs.android.view.a.a)localObject3);
    if (!com.estrongs.android.pop.z.P)
    {
      localObject3 = new com.estrongs.android.view.a.a(c.c(2130838247), b.getString(2131428137));
      ((com.estrongs.android.view.a.a)localObject3).c(c.d(2131230748));
      ((com.estrongs.android.view.a.a)localObject3).a(new z(this, (FileExplorerActivity)localObject1));
      f.a((com.estrongs.android.view.a.a)localObject3);
    }
    localObject3 = new com.estrongs.android.view.a.a(c.c(2130838233), b.getString(2131427439));
    ((com.estrongs.android.view.a.a)localObject3).c(c.d(2131230748));
    ((com.estrongs.android.view.a.a)localObject3).a(new ab(this, (FileExplorerActivity)localObject1));
    f.a((com.estrongs.android.view.a.a)localObject3);
    ((LinearLayout)localObject2).addView(f.a(), new LinearLayout.LayoutParams(-1, -1));
  }
  
  public void a(r paramr)
  {
    ((FileExplorerActivity)b).a(paramr);
  }
  
  public boolean a()
  {
    return false;
  }
  
  public aa b()
  {
    return d;
  }
  
  public void c()
  {
    ((FileExplorerActivity)b).p();
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
 * Qualified Name:     com.estrongs.android.ui.navigation.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */