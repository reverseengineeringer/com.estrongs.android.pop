package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.view.gf;
import com.estrongs.fs.util.j;

class e
  extends gf
{
  public e(a parama, Activity paramActivity)
  {
    super(paramActivity);
    paramActivity = (ImageView)b(2131624328);
    TextView localTextView1 = (TextView)b(2131624329);
    TextView localTextView2 = (TextView)b(2131624334);
    TextView localTextView3 = (TextView)b(2131624339);
    TextView localTextView4 = (TextView)b(2131624341);
    com.estrongs.android.h.a.e.a(a.getAbsolutePath(), paramActivity, a);
    localTextView1.setText(a.getName());
    localTextView2.setText(a.b() + "(" + a.c() + ")");
    localTextView3.setText(j.c(a.length()));
    localTextView4.setText(a.a());
  }
  
  protected int a()
  {
    return 2130903106;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */