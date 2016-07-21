package android.support.design.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;

class VisibilityAwareImageButton
  extends ImageButton
{
  private int a = getVisibility();
  
  public VisibilityAwareImageButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public VisibilityAwareImageButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public VisibilityAwareImageButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  final void a(int paramInt, boolean paramBoolean)
  {
    super.setVisibility(paramInt);
    if (paramBoolean) {
      a = paramInt;
    }
  }
  
  final int getUserSetVisibility()
  {
    return a;
  }
  
  public void setVisibility(int paramInt)
  {
    a(paramInt, true);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.VisibilityAwareImageButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */