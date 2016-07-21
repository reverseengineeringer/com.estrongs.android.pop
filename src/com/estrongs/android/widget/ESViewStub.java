package com.estrongs.android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import java.lang.ref.WeakReference;

public class ESViewStub
  extends View
{
  protected Context a;
  protected int b = 0;
  private int c = 0;
  private int d;
  private WeakReference<View> e;
  private LayoutInflater f;
  private e g;
  
  public ESViewStub(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public ESViewStub(Context paramContext, int paramInt)
  {
    super(paramContext);
    c = paramInt;
    a(paramContext);
  }
  
  public ESViewStub(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ESViewStub(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    a = paramContext;
    setVisibility(8);
    setWillNotDraw(true);
  }
  
  public View a()
  {
    Object localObject = getParent();
    if ((localObject != null) && ((localObject instanceof ViewGroup)))
    {
      if (c != 0)
      {
        ViewGroup localViewGroup = (ViewGroup)localObject;
        int i;
        if (f != null)
        {
          localObject = f;
          localObject = ((LayoutInflater)localObject).inflate(c, localViewGroup, false);
          if (d != -1) {
            ((View)localObject).setId(d);
          }
          i = localViewGroup.indexOfChild(this);
          localViewGroup.removeViewInLayout(this);
          ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
          if (localLayoutParams == null) {
            break label140;
          }
          localViewGroup.addView((View)localObject, i, localLayoutParams);
        }
        for (;;)
        {
          e = new WeakReference(localObject);
          if (g != null) {
            g.a(this, (View)localObject);
          }
          return (View)localObject;
          localObject = LayoutInflater.from(a);
          break;
          label140:
          localViewGroup.addView((View)localObject, i);
        }
      }
      throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
    }
    throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
  }
  
  protected void dispatchDraw(Canvas paramCanvas) {}
  
  public void draw(Canvas paramCanvas) {}
  
  public int getInflatedId()
  {
    return d;
  }
  
  public LayoutInflater getLayoutInflater()
  {
    return f;
  }
  
  public int getLayoutResource()
  {
    return c;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(0, 0);
  }
  
  public void setInflatedId(int paramInt)
  {
    d = paramInt;
  }
  
  public void setLayoutInflater(LayoutInflater paramLayoutInflater)
  {
    f = paramLayoutInflater;
  }
  
  public void setLayoutResource(int paramInt)
  {
    c = paramInt;
  }
  
  public void setOnInflateListener(e parame)
  {
    g = parame;
  }
  
  public void setVisibility(int paramInt)
  {
    if (e != null)
    {
      View localView = (View)e.get();
      if (localView != null) {
        localView.setVisibility(paramInt);
      }
    }
    do
    {
      return;
      throw new IllegalStateException("setVisibility called on un-referenced view");
      super.setVisibility(paramInt);
    } while ((paramInt != 0) && (paramInt != 4));
    a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.ESViewStub
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */