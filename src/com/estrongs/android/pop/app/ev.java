package com.estrongs.android.pop.app;

import android.widget.Button;
import com.estrongs.android.pop.app.a.al;
import com.estrongs.android.ui.f.e;
import com.estrongs.android.ui.view.ac;

class ev
  implements fz
{
  ev(eu parameu, e parame) {}
  
  public void a(al paramal)
  {
    a.g();
    try
    {
      if (paramal.a() == null) {
        PopAudioPlayer.k(b.a).setText(paramal.b());
      }
      for (;;)
      {
        PopAudioPlayer.i(b.a).a(paramal);
        b.a.h();
        return;
        PopAudioPlayer.k(b.a).setText(paramal.a());
      }
      return;
    }
    catch (Exception paramal)
    {
      paramal.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */