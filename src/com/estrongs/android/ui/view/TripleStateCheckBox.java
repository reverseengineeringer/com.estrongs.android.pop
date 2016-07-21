package com.estrongs.android.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

public class TripleStateCheckBox
  extends ImageView
{
  int a = 0;
  
  public TripleStateCheckBox(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TripleStateCheckBox(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TripleStateCheckBox(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a() {}
  
  public int getCheckBoxState()
  {
    return a;
  }
  
  public void setChecked(int paramInt)
  {
    if (paramInt == 2)
    {
      setImageResource(2130837733);
      a = 2;
    }
    do
    {
      return;
      if (paramInt == 1)
      {
        setImageResource(2130837732);
        a = 1;
        return;
      }
    } while (paramInt != 0);
    setImageResource(2130837731);
    a = 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.TripleStateCheckBox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */