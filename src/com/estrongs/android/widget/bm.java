package com.estrongs.android.widget;

import android.widget.ProgressBar;
import android.widget.TextView;

public class bm
  implements bl
{
  public void a(ProgressBar paramProgressBar, TextView paramTextView, long paramLong)
  {
    paramProgressBar.setMax((int)paramLong);
    paramTextView.setText(String.valueOf(paramLong));
  }
  
  public void b(ProgressBar paramProgressBar, TextView paramTextView, long paramLong)
  {
    paramProgressBar.setProgress((int)paramLong);
    paramTextView.setText(String.valueOf(paramLong));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */