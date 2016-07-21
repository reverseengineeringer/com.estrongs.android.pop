package com.estrongs.android.widget;

import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.fs.util.j;

public class bj
  implements bl
{
  private int a;
  private int b = 1;
  
  public void a(ProgressBar paramProgressBar, TextView paramTextView, long paramLong)
  {
    paramTextView.setText(j.c(paramLong).trim());
    if (paramLong > 2147483647L) {
      b = 1000;
    }
    a = ((int)(paramLong / b));
    paramProgressBar.setMax(a);
  }
  
  public void b(ProgressBar paramProgressBar, TextView paramTextView, long paramLong)
  {
    paramProgressBar.setProgress((int)(paramLong / b));
    paramTextView.setText(j.c(paramLong).trim());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */