package com.estrongs.android.ui.theme;

import android.content.res.Resources;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESResourceActivity;

public class ThemeToolbarActivity
  extends ESResourceActivity
{
  private ImageView a;
  private ImageView b;
  private TextView d;
  private ImageView e;
  private ImageView f;
  private TextView g;
  private Button h;
  private int i;
  private int j = 0;
  private at k;
  
  private void a()
  {
    if (k.o()) {}
    for (int m = 0;; m = 1)
    {
      i = m;
      j = i;
      al localal = k.a();
      av localav = new av(this);
      b = ((ImageView)findViewById(2131625579));
      a = ((ImageView)findViewById(2131625578));
      a.setOnTouchListener(localav);
      a.setOnClickListener(new aw(this, localal));
      d = ((TextView)findViewById(2131625580));
      f = ((ImageView)findViewById(2131625583));
      e = ((ImageView)findViewById(2131625582));
      e.setOnTouchListener(localav);
      e.setOnClickListener(new ax(this, localal));
      g = ((TextView)findViewById(2131625584));
      h = ((Button)findViewById(2131625575));
      h.setOnClickListener(new ay(this));
      b();
      return;
    }
  }
  
  private void b()
  {
    if (j == 0)
    {
      f.setVisibility(8);
      b.setVisibility(0);
      g.setTextColor(getResources().getColorStateList(2131558711));
      d.setTextColor(getResources().getColorStateList(2131558712));
      return;
    }
    b.setVisibility(8);
    f.setVisibility(0);
    d.setTextColor(getResources().getColorStateList(2131558711));
    g.setTextColor(getResources().getColorStateList(2131558712));
  }
  
  public void finish()
  {
    if (j != i) {
      setResult(-1);
    }
    super.finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903445);
    k = at.a(this);
    try
    {
      a();
      return;
    }
    catch (Exception paramBundle)
    {
      paramBundle.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ThemeToolbarActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */