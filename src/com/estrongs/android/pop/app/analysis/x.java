package com.estrongs.android.pop.app.analysis;

import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.PopupWindow.OnDismissListener;

class x
  implements PopupWindow.OnDismissListener
{
  x(AnalysisResultActivity paramAnalysisResultActivity) {}
  
  public void onDismiss()
  {
    WindowManager.LayoutParams localLayoutParams = a.getWindow().getAttributes();
    alpha = 1.0F;
    a.getWindow().setAttributes(localLayoutParams);
    AnalysisResultActivity.e(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */