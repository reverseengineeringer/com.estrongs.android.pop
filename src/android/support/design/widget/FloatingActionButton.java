package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.design.e;
import android.support.design.i;
import android.support.design.j;
import android.support.v7.widget.AppCompatDrawableManager;
import android.support.v7.widget.AppCompatImageHelper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View.MeasureSpec;

@t(a=ad.class)
public class FloatingActionButton
  extends VisibilityAwareImageButton
{
  private ColorStateList a;
  private PorterDuff.Mode b;
  private int c;
  private int d;
  private int e;
  private int f;
  private boolean g;
  private final Rect h = new Rect();
  private AppCompatImageHelper i;
  private aq j;
  
  public FloatingActionButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    cr.a(paramContext);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, j.FloatingActionButton, paramInt, i.Widget_Design_FloatingActionButton);
    a = paramContext.getColorStateList(j.FloatingActionButton_backgroundTint);
    b = a(paramContext.getInt(j.FloatingActionButton_backgroundTintMode, -1), null);
    d = paramContext.getColor(j.FloatingActionButton_rippleColor, 0);
    e = paramContext.getInt(j.FloatingActionButton_fabSize, 0);
    c = paramContext.getDimensionPixelSize(j.FloatingActionButton_borderWidth, 0);
    float f1 = paramContext.getDimension(j.FloatingActionButton_elevation, 0.0F);
    float f2 = paramContext.getDimension(j.FloatingActionButton_pressedTranslationZ, 0.0F);
    g = paramContext.getBoolean(j.FloatingActionButton_useCompatPadding, false);
    paramContext.recycle();
    i = new AppCompatImageHelper(this, AppCompatDrawableManager.get());
    i.loadFromAttributes(paramAttributeSet, paramInt);
    paramInt = (int)getResources().getDimension(e.design_fab_image_size);
    f = ((getSizeDimension() - paramInt) / 2);
    getImpl().a(a, b, d, c);
    getImpl().c(f1);
    getImpl().d(f2);
    getImpl().g();
  }
  
  private static int a(int paramInt1, int paramInt2)
  {
    int k = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (k)
    {
    case 0: 
    default: 
      return paramInt1;
    case -2147483648: 
      return Math.min(paramInt1, paramInt2);
    }
    return paramInt2;
  }
  
  static PorterDuff.Mode a(int paramInt, PorterDuff.Mode paramMode)
  {
    switch (paramInt)
    {
    default: 
      return paramMode;
    case 3: 
      return PorterDuff.Mode.SRC_OVER;
    case 5: 
      return PorterDuff.Mode.SRC_IN;
    case 9: 
      return PorterDuff.Mode.SRC_ATOP;
    case 14: 
      return PorterDuff.Mode.MULTIPLY;
    }
    return PorterDuff.Mode.SCREEN;
  }
  
  private void a(af paramaf, boolean paramBoolean)
  {
    getImpl().b(c(paramaf), paramBoolean);
  }
  
  private void b(af paramaf, boolean paramBoolean)
  {
    getImpl().a(c(paramaf), paramBoolean);
  }
  
  private aq c()
  {
    int k = Build.VERSION.SDK_INT;
    if (k >= 21) {
      return new at(this, new ag(this, null));
    }
    if (k >= 14) {
      return new an(this, new ag(this, null));
    }
    return new ah(this, new ag(this, null));
  }
  
  private as c(af paramaf)
  {
    if (paramaf == null) {
      return null;
    }
    return new ac(this, paramaf);
  }
  
  private aq getImpl()
  {
    if (j == null) {
      j = c();
    }
    return j;
  }
  
  public void a()
  {
    a(null);
  }
  
  public void a(af paramaf)
  {
    a(paramaf, true);
  }
  
  public void b()
  {
    b(null);
  }
  
  public void b(af paramaf)
  {
    b(paramaf, true);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    getImpl().a(getDrawableState());
  }
  
  public ColorStateList getBackgroundTintList()
  {
    return a;
  }
  
  public PorterDuff.Mode getBackgroundTintMode()
  {
    return b;
  }
  
  public float getCompatElevation()
  {
    return getImpl().a();
  }
  
  public Drawable getContentBackground()
  {
    return getImpl().f();
  }
  
  final int getSizeDimension()
  {
    switch (e)
    {
    default: 
      return getResources().getDimensionPixelSize(e.design_fab_size_normal);
    }
    return getResources().getDimensionPixelSize(e.design_fab_size_mini);
  }
  
  public boolean getUseCompatPadding()
  {
    return g;
  }
  
  @TargetApi(11)
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    getImpl().b();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    getImpl().h();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    getImpl().i();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int k = getSizeDimension();
    paramInt1 = Math.min(a(k, paramInt1), a(k, paramInt2));
    setMeasuredDimension(h.left + paramInt1 + h.right, paramInt1 + h.top + h.bottom);
  }
  
  public void setBackgroundColor(int paramInt)
  {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundResource(int paramInt)
  {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (a != paramColorStateList)
    {
      a = paramColorStateList;
      getImpl().a(paramColorStateList);
    }
  }
  
  public void setBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (b != paramMode)
    {
      b = paramMode;
      getImpl().a(paramMode);
    }
  }
  
  public void setCompatElevation(float paramFloat)
  {
    getImpl().c(paramFloat);
  }
  
  public void setImageResource(int paramInt)
  {
    i.setImageResource(paramInt);
  }
  
  public void setRippleColor(int paramInt)
  {
    if (d != paramInt)
    {
      d = paramInt;
      getImpl().a(paramInt);
    }
  }
  
  public void setUseCompatPadding(boolean paramBoolean)
  {
    if (g != paramBoolean)
    {
      g = paramBoolean;
      getImpl().c();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.FloatingActionButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */