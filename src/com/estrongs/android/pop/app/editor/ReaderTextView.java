package com.estrongs.android.pop.app.editor;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TextView;

public class ReaderTextView
  extends TextView
{
  private int a = -1;
  private ai b = null;
  private ah c = null;
  private float d = 1.0F;
  private float e = 0.0F;
  private boolean f = true;
  
  public ReaderTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ReaderTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ReaderTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a()
  {
    a = 0;
  }
  
  public boolean getIncludeFontPadding()
  {
    return f;
  }
  
  public float getLineSpacingAdd()
  {
    return e;
  }
  
  public float getLineSpacingMult()
  {
    return d;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (a != getBottom())
    {
      a = getBottom();
      if (c != null) {
        c.a(a);
      }
    }
    super.onDraw(paramCanvas);
  }
  
  public void setIncludeFontPadding(boolean paramBoolean)
  {
    f = paramBoolean;
    super.setIncludeFontPadding(paramBoolean);
  }
  
  public void setLineSpacing(float paramFloat1, float paramFloat2)
  {
    e = paramFloat1;
    d = paramFloat2;
    super.setLineSpacing(paramFloat1, paramFloat2);
  }
  
  public void setOnPreDrawListener(ah paramah)
  {
    c = paramah;
  }
  
  public void setOnTextChangedListener(ai paramai)
  {
    b = paramai;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.ReaderTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */