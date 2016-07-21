package com.estrongs.android.ui.e;

import android.app.Activity;
import android.widget.LinearLayout;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.view.a.a;
import java.util.Map;

public class hy
  extends f
{
  private PopAudioPlayer k;
  private iq l;
  
  public hy(Activity paramActivity, boolean paramBoolean, LinearLayout paramLinearLayout)
  {
    super(paramActivity, paramBoolean);
    k();
  }
  
  private void m()
  {
    l.d();
  }
  
  public void f(int paramInt)
  {
    l.a(paramInt);
    l();
  }
  
  protected void h()
  {
    if ((b instanceof PopAudioPlayer))
    {
      k = ((PopAudioPlayer)b);
      l = new iq(k);
      l.e();
      return;
    }
    throw new IllegalArgumentException("Need PopAudioPlayer as the first argument");
  }
  
  protected Map<String, a> i()
  {
    return l.c();
  }
  
  protected void k()
  {
    m();
    e(2131558745);
  }
  
  public void l()
  {
    a(l.a());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */