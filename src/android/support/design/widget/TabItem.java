package android.support.design.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.design.j;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.view.View;

public final class TabItem
  extends View
{
  final CharSequence a;
  final Drawable b;
  final int c;
  
  public TabItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = TintTypedArray.obtainStyledAttributes(paramContext, paramAttributeSet, j.TabItem);
    a = paramContext.getText(j.TabItem_android_text);
    b = paramContext.getDrawable(j.TabItem_android_icon);
    c = paramContext.getResourceId(j.TabItem_android_layout, 0);
    paramContext.recycle();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TabItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */