package android.support.v7.widget;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

class AppCompatSpinner$DropdownPopup$2
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  AppCompatSpinner$DropdownPopup$2(AppCompatSpinner.DropdownPopup paramDropdownPopup) {}
  
  public void onGlobalLayout()
  {
    if (!AppCompatSpinner.DropdownPopup.access$600(this$1, this$1.this$0))
    {
      this$1.dismiss();
      return;
    }
    this$1.computeContentWidth();
    AppCompatSpinner.DropdownPopup.access$701(this$1);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AppCompatSpinner.DropdownPopup.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */