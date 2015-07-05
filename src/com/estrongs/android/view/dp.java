package com.estrongs.android.view;

import android.app.Activity;
import android.view.View;
import android.widget.CheckBox;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.widget.HeaderGridView;
import com.estrongs.android.widget.e;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a.a;

public class dp
  extends aw
{
  boolean a = false;
  
  public dp(Activity paramActivity, a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb);
    paramActivity = g.getOnItemClickListener();
    g.setOnItemClickListener(new dq(this, paramActivity));
  }
  
  protected void a(e parame, int paramInt)
  {
    if ((a) && (3 == B()) && (z()))
    {
      d.setBackgroundDrawable(null);
      ((View)g.getParent()).setOnClickListener(new dr(this, paramInt));
    }
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    v();
    super.a(paramh, paramTypedMap);
  }
  
  public void c(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a = true;
      a(true);
    }
  }
  
  public boolean p()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */