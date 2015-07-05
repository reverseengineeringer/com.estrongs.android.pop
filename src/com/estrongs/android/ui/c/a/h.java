package com.estrongs.android.ui.c.a;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.e;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.theme.al;

public class h
  extends a
{
  private ImageView c;
  private TextView d;
  private String e;
  private int f;
  private String g;
  private View.OnClickListener h;
  private View.OnLongClickListener i;
  
  public h(FileExplorerActivity paramFileExplorerActivity)
  {
    super(paramFileExplorerActivity);
  }
  
  public String a()
  {
    return g;
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    h = paramOnClickListener;
  }
  
  public void a(View.OnLongClickListener paramOnLongClickListener)
  {
    i = paramOnLongClickListener;
  }
  
  public void a(String paramString)
  {
    g = paramString;
  }
  
  public String b()
  {
    return e;
  }
  
  protected void b(View paramView)
  {
    paramView.setBackgroundResource(2130837560);
    c = ((ImageView)b.findViewById(2131361853));
    d = ((TextView)b.findViewById(2131361997));
    d.setTextColor(al.a(a).i());
    c.setImageResource(f);
    if (e.a()) {
      d.setText("‏" + g);
    }
    for (;;)
    {
      b.setOnClickListener(h);
      if (i != null) {
        b.setOnLongClickListener(new i(this));
      }
      return;
      d.setText(g);
    }
  }
  
  public void b(String paramString)
  {
    e = paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */