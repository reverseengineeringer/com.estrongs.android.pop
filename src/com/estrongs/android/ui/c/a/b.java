package com.estrongs.android.ui.c.a;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.e;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.theme.al;

public class b
  extends a
{
  private Drawable c;
  private String d;
  private View.OnClickListener e;
  private View.OnLongClickListener f;
  
  public b(FileExplorerActivity paramFileExplorerActivity)
  {
    super(paramFileExplorerActivity);
  }
  
  public void a(Drawable paramDrawable)
  {
    c = paramDrawable;
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    e = paramOnClickListener;
  }
  
  public void a(View.OnLongClickListener paramOnLongClickListener)
  {
    f = paramOnLongClickListener;
  }
  
  public void a(String paramString)
  {
    d = paramString;
  }
  
  protected void b(View paramView)
  {
    paramView.setBackgroundResource(2130837560);
    ((ImageView)paramView.findViewById(2131361853)).setImageDrawable(c);
    paramView = (TextView)paramView.findViewById(2131361979);
    if (e.a()) {
      paramView.setText("‏" + d);
    }
    for (;;)
    {
      paramView.setTextColor(al.a(a).i());
      b.setOnClickListener(e);
      if (f != null) {
        b.setOnLongClickListener(new c(this));
      }
      return;
      paramView.setText(d);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */