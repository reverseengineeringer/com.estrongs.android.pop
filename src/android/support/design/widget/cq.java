package android.support.design.widget;

import android.support.v4.view.a;
import android.support.v4.view.a.g;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.TextView;
import java.util.List;

class cq
  extends a
{
  private cq(TextInputLayout paramTextInputLayout) {}
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(TextInputLayout.class.getSimpleName());
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, g paramg)
  {
    super.onInitializeAccessibilityNodeInfo(paramView, paramg);
    paramg.b(TextInputLayout.class.getSimpleName());
    paramView = TextInputLayout.c(a).i();
    if (!TextUtils.isEmpty(paramView)) {
      paramg.c(paramView);
    }
    if (TextInputLayout.d(a) != null) {
      paramg.d(TextInputLayout.d(a));
    }
    if (TextInputLayout.b(a) != null) {}
    for (paramView = TextInputLayout.b(a).getText();; paramView = null)
    {
      if (!TextUtils.isEmpty(paramView))
      {
        paramg.j(true);
        paramg.e(paramView);
      }
      return;
    }
  }
  
  public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
    paramView = TextInputLayout.c(a).i();
    if (!TextUtils.isEmpty(paramView)) {
      paramAccessibilityEvent.getText().add(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */