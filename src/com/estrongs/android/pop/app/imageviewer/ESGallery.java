package com.estrongs.android.pop.app.imageviewer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.Gallery;

public class ESGallery
  extends Gallery
{
  private o a;
  
  public ESGallery(Context paramContext)
  {
    super(paramContext);
  }
  
  public ESGallery(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ESGallery(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(o paramo)
  {
    a = paramo;
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (a != null) {
      a.a(2);
    }
    return super.onFling(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ESGallery
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */