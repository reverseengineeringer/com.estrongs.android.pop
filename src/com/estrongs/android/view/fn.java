package com.estrongs.android.view;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.fs.util.j;

class fn
  extends Handler
{
  private int b = 1;
  
  fn(fm paramfm) {}
  
  private void a(TextView paramTextView, String paramString)
  {
    if (paramTextView != null) {
      paramTextView.setText(paramString);
    }
  }
  
  public void handleMessage(Message paramMessage)
  {
    Object localObject;
    switch (what)
    {
    case 2: 
    default: 
    case 1: 
    case 4: 
    case 3: 
    case 5: 
      do
      {
        do
        {
          return;
          if (a.a) {}
          for (paramMessage = j.c(fm.a(a));; paramMessage = String.valueOf(fm.a(a)))
          {
            if (fm.b(a) != null) {
              fm.b(a).setVisibility(0);
            }
            if (a.g != null) {
              a.g.setText(paramMessage);
            }
            fm.c(a).setIndeterminate(false);
            if (fm.a(a) > Integer.MAX_VALUE) {
              b = 100;
            }
            fm.c(a).setMax(fm.a(a) / b);
            return;
          }
          fm.c(a).setProgress(fm.d(a) / b);
          if (a.f != null)
          {
            localObject = a.f;
            if (!a.a) {
              break label314;
            }
          }
          for (paramMessage = j.c(fm.d(a));; paramMessage = String.valueOf(fm.d(a)))
          {
            ((TextView)localObject).setText(paramMessage);
            a.e.setText(String.valueOf((int)fm.a(a, fm.d(a), fm.a(a))) + "%");
            return;
          }
          if (fm.e(a) != null) {
            fm.e(a).setVisibility(0);
          }
        } while (a.h == null);
        localObject = new StringBuilder();
        if (a.a) {}
        for (paramMessage = j.c(fm.f(a));; paramMessage = String.valueOf(fm.f(a)))
        {
          paramMessage = paramMessage + "/s";
          a.h.setText(paramMessage);
          return;
        }
      } while (fm.g(a));
      a.d.setText(fm.h(a));
      return;
    case 9: 
      fm.a(a, true);
      a.d.setText(fm.h(a));
      return;
    case 6: 
      fm.c(a).setIndeterminate(true);
      return;
    case 7: 
      if (a.a) {}
      for (paramMessage = j.c(fm.i(a));; paramMessage = String.valueOf(fm.i(a)))
      {
        if (fm.b(a) != null) {
          fm.b(a).setVisibility(0);
        }
        if (a.g != null) {
          a.g.setText(paramMessage);
        }
        fm.c(a).setVisibility(0);
        fm.c(a).setIndeterminate(false);
        if (fm.i(a) > Integer.MAX_VALUE) {
          b = 100;
        }
        fm.c(a).setMax(fm.i(a) / b);
        return;
      }
    case 8: 
      label314:
      fm.c(a).setProgress(fm.j(a) / b);
      if (a.f != null)
      {
        localObject = a.f;
        if (!a.a) {
          break label762;
        }
      }
      label762:
      for (paramMessage = j.c(fm.j(a));; paramMessage = String.valueOf(fm.j(a)))
      {
        ((TextView)localObject).setText(paramMessage);
        paramMessage = String.valueOf((int)fm.a(a, fm.j(a), fm.i(a))) + "%";
        a.e.setText(paramMessage);
        return;
      }
    }
    fm.c(a).setIndeterminate(true);
    a(a.g, null);
    a(a.f, null);
    a(a.e, null);
    a(a.d, null);
    a(a.h, null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.fn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */