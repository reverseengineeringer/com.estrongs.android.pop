package com.estrongs.android.pop.app;

import android.content.Context;
import android.support.v7.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.ui.base.a;
import com.estrongs.android.ui.theme.at;
import java.util.Hashtable;

class fa
  extends a
{
  private final int b = 5;
  private Hashtable<Integer, MenuItem.OnMenuItemClickListener> c = new Hashtable();
  
  fa(PopAudioPlayer paramPopAudioPlayer) {}
  
  public Context a()
  {
    return a;
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
    PopAudioPlayer.a(a, paramActionMode);
    paramMenu = new fb(this, a);
    paramMenu.addView(LayoutInflater.from(a).inflate(2130903387, null), new LinearLayout.LayoutParams(-1, -1));
    paramActionMode.setCustomView(paramMenu);
    PopAudioPlayer.a(a, (TextView)paramMenu.findViewById(2131624518));
    PopAudioPlayer.e(a).setVisibility(0);
    paramMenu.findViewById(2131625412).setOnClickListener(new fc(this));
    ((ImageView)paramMenu.findViewById(2131625413)).setImageDrawable(at.a(a).g(2130838525));
    paramMenu.findViewById(2131625404).setOnClickListener(new fd(this));
    ((ImageView)paramMenu.findViewById(2131625405)).setImageDrawable(at.a(a).g(2130838529));
    paramMenu.findViewById(2131625407).setOnClickListener(new fe(this));
    PopAudioPlayer.a(a, (ImageView)paramMenu.findViewById(2131625410));
    PopAudioPlayer.f(a).setImageDrawable(at.a(a).g(2130838527));
    PopAudioPlayer.f(a).setEnabled(false);
    paramMenu.findViewById(2131625402).setOnClickListener(new ff(this));
    paramMenu.findViewById(2131625030).setOnClickListener(new fg(this));
    return true;
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    PopAudioPlayer.a(a, null);
    a.z();
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    PopAudioPlayer.e(a).setText(PopAudioPlayer.c(a) + "/" + PopAudioPlayer.d(a));
    if (PopAudioPlayer.c(a) > 1)
    {
      PopAudioPlayer.f(a).setEnabled(true);
      return true;
    }
    PopAudioPlayer.f(a).setEnabled(false);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */