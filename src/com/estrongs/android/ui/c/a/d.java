package com.estrongs.android.ui.c.a;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESImageView;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.theme.al;

public class d
  extends a
{
  public static int c = 0;
  private ImageView d;
  private TextView e;
  private TextView f;
  private View g;
  private String h;
  private int i;
  private String j;
  private int k = -1;
  private View.OnClickListener l;
  private boolean m = false;
  
  public d(FileExplorerActivity paramFileExplorerActivity)
  {
    super(paramFileExplorerActivity);
  }
  
  public String a()
  {
    return h;
  }
  
  public void a(int paramInt)
  {
    i = paramInt;
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    l = paramOnClickListener;
  }
  
  public void a(String paramString)
  {
    j = paramString;
  }
  
  public void b(int paramInt)
  {
    k = paramInt;
    if (f != null)
    {
      if (paramInt == -1) {
        f.setText("0");
      }
    }
    else {
      return;
    }
    f.setText("" + paramInt);
  }
  
  protected void b(View paramView)
  {
    d = ((ImageView)b.findViewById(2131361853));
    e = ((TextView)b.findViewById(2131361808));
    f = ((TextView)b.findViewById(2131361983));
    g = b;
    g.setBackgroundResource(2130837560);
    d.setImageResource(i);
    e.setText(j);
    e.setTextColor(al.a(a).i());
    if (k == -1) {}
    for (;;)
    {
      g.setOnClickListener(l);
      if (m) {
        e.setVisibility(8);
      }
      if ((d instanceof ESImageView)) {
        ((ESImageView)d).a(new e(this));
      }
      return;
      f.setText("" + k);
    }
  }
  
  public void b(String paramString)
  {
    h = paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */