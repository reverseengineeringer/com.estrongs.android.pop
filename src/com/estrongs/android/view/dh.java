package com.estrongs.android.view;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.fs.util.j;

class dh
  extends Handler
{
  private int b = 1;
  
  dh(dg paramdg) {}
  
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
          for (paramMessage = j.c(dg.a(a));; paramMessage = String.valueOf(dg.a(a)))
          {
            if (dg.b(a) != null) {
              dg.b(a).setVisibility(0);
            }
            if (a.g != null) {
              a.g.setText(paramMessage);
            }
            dg.c(a).setIndeterminate(false);
            if (dg.a(a) > Integer.MAX_VALUE) {
              b = 100;
            }
            dg.c(a).setMax(dg.a(a) / b);
            return;
          }
          dg.c(a).setProgress(dg.d(a) / b);
          if (a.f != null)
          {
            localObject = a.f;
            if (!a.a) {
              break label314;
            }
          }
          for (paramMessage = j.c(dg.d(a));; paramMessage = String.valueOf(dg.d(a)))
          {
            ((TextView)localObject).setText(paramMessage);
            a.e.setText(String.valueOf((int)dg.a(a, dg.d(a), dg.a(a))) + "%");
            return;
          }
          if (dg.e(a) != null) {
            dg.e(a).setVisibility(0);
          }
        } while (a.h == null);
        localObject = new StringBuilder();
        if (a.a) {}
        for (paramMessage = j.c(dg.f(a));; paramMessage = String.valueOf(dg.f(a)))
        {
          paramMessage = paramMessage + "/s";
          a.h.setText(paramMessage);
          return;
        }
      } while (dg.g(a));
      a.d.setText(dg.h(a));
      return;
    case 9: 
      dg.a(a, true);
      a.d.setText(dg.h(a));
      return;
    case 6: 
      dg.c(a).setIndeterminate(true);
      return;
    case 7: 
      if (a.a) {}
      for (paramMessage = j.c(dg.i(a));; paramMessage = String.valueOf(dg.i(a)))
      {
        if (dg.b(a) != null) {
          dg.b(a).setVisibility(0);
        }
        if (a.g != null) {
          a.g.setText(paramMessage);
        }
        dg.c(a).setVisibility(0);
        dg.c(a).setIndeterminate(false);
        if (dg.i(a) > Integer.MAX_VALUE) {
          b = 100;
        }
        dg.c(a).setMax(dg.i(a) / b);
        return;
      }
    case 8: 
      label314:
      dg.c(a).setProgress(dg.j(a) / b);
      if (a.f != null)
      {
        localObject = a.f;
        if (!a.a) {
          break label762;
        }
      }
      label762:
      for (paramMessage = j.c(dg.j(a));; paramMessage = String.valueOf(dg.j(a)))
      {
        ((TextView)localObject).setText(paramMessage);
        paramMessage = String.valueOf((int)dg.a(a, dg.j(a), dg.i(a))) + "%";
        a.e.setText(paramMessage);
        return;
      }
    }
    dg.c(a).setIndeterminate(true);
    a(a.g, null);
    a(a.f, null);
    a(a.e, null);
    a(a.d, null);
    a(a.h, null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */