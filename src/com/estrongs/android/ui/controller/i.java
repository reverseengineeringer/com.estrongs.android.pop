package com.estrongs.android.ui.controller;

import android.content.Context;
import android.support.v7.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.base.a;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.view.cr;

class i
  extends a
{
  i(h paramh) {}
  
  public Context a()
  {
    return a.a;
  }
  
  public boolean b()
  {
    return true;
  }
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    return true;
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    paramMenu = new j(this, a.a);
    paramMenu.addView(LayoutInflater.from(a.a).inflate(2130903386, null), new LinearLayout.LayoutParams(-1, -1));
    paramActionMode.setCustomView(paramMenu);
    h.a(a, (TextView)paramMenu.findViewById(2131624518));
    h.c(a).setVisibility(0);
    paramMenu.findViewById(2131625412).setOnClickListener(new k(this));
    ((ImageView)paramMenu.findViewById(2131625413)).setImageDrawable(at.a(a.a).g(2130838525));
    h.a(a, paramMenu.findViewById(2131625404));
    h.a(a).setOnClickListener(new l(this));
    ((ImageView)paramMenu.findViewById(2131625405)).setImageDrawable(at.a(a.a).g(2130838529));
    h.b(a, paramMenu.findViewById(2131625407));
    h.b(a).setOnClickListener(new m(this));
    ((ImageView)h.b(a).findViewById(2131625408)).setImageDrawable(at.a(a.a).g(2130838529));
    paramMenu.findViewById(2131625402).setOnClickListener(new n(this));
    h.a(a, (ImageView)paramMenu.findViewById(2131625410));
    h.d(a).setImageDrawable(at.a(a.a).g(2130838527));
    h.d(a).setEnabled(false);
    paramMenu.findViewById(2131625030).setOnClickListener(new o(this));
    return true;
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    h.a(a, null);
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    if ((h.a(a) != null) && (h.b(a) != null))
    {
      if (a.j != a.k) {
        break label134;
      }
      h.b(a).setVisibility(0);
      h.a(a).setVisibility(8);
    }
    for (;;)
    {
      h.c(a).setText(a.j + "/" + a.k);
      if (!a.a.O().L()) {
        break;
      }
      h.d(a).setEnabled(true);
      return true;
      label134:
      h.b(a).setVisibility(8);
      h.a(a).setVisibility(0);
    }
    h.d(a).setEnabled(false);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */