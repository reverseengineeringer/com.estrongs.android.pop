package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.d.f;
import com.estrongs.android.view.ea;
import com.estrongs.fs.util.j;

class e
  extends ea
{
  public e(a parama, Activity paramActivity)
  {
    super(paramActivity);
    paramActivity = (ImageView)k(2131361829);
    TextView localTextView1 = (TextView)k(2131361830);
    TextView localTextView2 = (TextView)k(2131361835);
    TextView localTextView3 = (TextView)k(2131361840);
    TextView localTextView4 = (TextView)k(2131361842);
    paramActivity.setImageDrawable(f.e(a));
    localTextView1.setText(a.getName());
    localTextView2.setText(a.b() + "(" + a.c() + ")");
    localTextView3.setText(j.c(a.length()));
    localTextView4.setText(a.a());
  }
  
  protected int a()
  {
    return 2130903044;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */