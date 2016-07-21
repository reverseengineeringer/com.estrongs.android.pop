package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ExpandableListAdapter;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.adapter.s;
import com.estrongs.android.ui.view.NaviListView;

public class iy
{
  private ci a;
  private Context b;
  private String c;
  
  public iy(Context paramContext)
  {
    b = paramContext;
    d();
  }
  
  private void d()
  {
    View localView = k.a(b).inflate(2130903186, null);
    NaviListView localNaviListView = (NaviListView)localView.findViewById(2131624232);
    Object localObject = new iz(this, localNaviListView);
    localObject = new s(b, (Handler)localObject);
    localNaviListView.setAdapter((ExpandableListAdapter)localObject);
    localNaviListView.setOnGroupClickListener(new ja(this));
    localNaviListView.setOnChildClickListener(new jd(this, (s)localObject));
    a = new cv(b).a(localView).a(2131231540).b();
  }
  
  public String a()
  {
    return c;
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    a.setOnDismissListener(paramOnDismissListener);
  }
  
  public void b()
  {
    a.show();
  }
  
  public void c()
  {
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.iy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */