package android.support.a.a;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@TargetApi(21)
public class l
  extends k
{
  static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
  private s c;
  private PorterDuffColorFilter d;
  private ColorFilter e;
  private boolean f;
  private boolean g = true;
  private Drawable.ConstantState h;
  private final float[] i = new float[9];
  private final Matrix j = new Matrix();
  private final Rect k = new Rect();
  
  private l()
  {
    c = new s();
  }
  
  private l(s params)
  {
    c = params;
    d = a(d, c, d);
  }
  
  private static PorterDuff.Mode a(int paramInt, PorterDuff.Mode paramMode)
  {
    switch (paramInt)
    {
    case 4: 
    case 6: 
    case 7: 
    case 8: 
    case 10: 
    case 11: 
    case 12: 
    case 13: 
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
    case 15: 
      return PorterDuff.Mode.SCREEN;
    }
    return PorterDuff.Mode.ADD;
  }
  
  public static l a(Resources paramResources, int paramInt, Resources.Theme paramTheme)
  {
    Object localObject;
    if (Build.VERSION.SDK_INT >= 21)
    {
      localObject = new l();
      a = android.support.v4.content.a.a.a(paramResources, paramInt, paramTheme);
      h = new t(a.getConstantState());
      return (l)localObject;
    }
    try
    {
      localObject = paramResources.getXml(paramInt);
      localAttributeSet = Xml.asAttributeSet((XmlPullParser)localObject);
      do
      {
        paramInt = ((XmlPullParser)localObject).next();
      } while ((paramInt != 2) && (paramInt != 1));
      if (paramInt != 2) {
        throw new XmlPullParserException("No start tag found");
      }
    }
    catch (XmlPullParserException paramResources)
    {
      AttributeSet localAttributeSet;
      Log.e("VectorDrawableCompat", "parser error", paramResources);
      return null;
      paramResources = a(paramResources, (XmlPullParser)localObject, localAttributeSet, paramTheme);
      return paramResources;
    }
    catch (IOException paramResources)
    {
      for (;;)
      {
        Log.e("VectorDrawableCompat", "parser error", paramResources);
      }
    }
  }
  
  public static l a(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
  {
    l locall = new l();
    locall.inflate(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    return locall;
  }
  
  private void a(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser)
  {
    s locals = c;
    r localr = b;
    d = a(j.a(paramTypedArray, paramXmlPullParser, "tintMode", 6, -1), PorterDuff.Mode.SRC_IN);
    ColorStateList localColorStateList = paramTypedArray.getColorStateList(1);
    if (localColorStateList != null) {
      c = localColorStateList;
    }
    e = j.a(paramTypedArray, paramXmlPullParser, "autoMirrored", 5, e);
    c = j.a(paramTypedArray, paramXmlPullParser, "viewportWidth", 7, c);
    d = j.a(paramTypedArray, paramXmlPullParser, "viewportHeight", 8, d);
    if (c <= 0.0F) {
      throw new XmlPullParserException(paramTypedArray.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
    }
    if (d <= 0.0F) {
      throw new XmlPullParserException(paramTypedArray.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    }
    a = paramTypedArray.getDimension(3, a);
    b = paramTypedArray.getDimension(2, b);
    if (a <= 0.0F) {
      throw new XmlPullParserException(paramTypedArray.getPositionDescription() + "<vector> tag requires width > 0");
    }
    if (b <= 0.0F) {
      throw new XmlPullParserException(paramTypedArray.getPositionDescription() + "<vector> tag requires height > 0");
    }
    localr.a(j.a(paramTypedArray, paramXmlPullParser, "alpha", 4, localr.b()));
    paramTypedArray = paramTypedArray.getString(0);
    if (paramTypedArray != null)
    {
      f = paramTypedArray;
      g.put(paramTypedArray, localr);
    }
  }
  
  private boolean a()
  {
    return false;
  }
  
  private static int b(int paramInt, float paramFloat)
  {
    return (int)(Color.alpha(paramInt) * paramFloat) << 24 | 0xFFFFFF & paramInt;
  }
  
  private void b(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
  {
    s locals = c;
    r localr = b;
    Stack localStack = new Stack();
    localStack.push(r.a(localr));
    int i1 = paramXmlPullParser.getEventType();
    int m = 1;
    if (i1 != 1)
    {
      Object localObject;
      p localp;
      int n;
      if (i1 == 2)
      {
        localObject = paramXmlPullParser.getName();
        localp = (p)localStack.peek();
        if ("path".equals(localObject))
        {
          localObject = new o();
          ((o)localObject).a(paramResources, paramAttributeSet, paramTheme, paramXmlPullParser);
          a.add(localObject);
          if (((o)localObject).b() != null) {
            g.put(((o)localObject).b(), localObject);
          }
          m = 0;
          n = a;
          a = (o | n);
          label162:
          n = m;
        }
      }
      for (;;)
      {
        i1 = paramXmlPullParser.next();
        m = n;
        break;
        if ("clip-path".equals(localObject))
        {
          localObject = new n();
          ((n)localObject).a(paramResources, paramAttributeSet, paramTheme, paramXmlPullParser);
          a.add(localObject);
          if (((n)localObject).b() != null) {
            g.put(((n)localObject).b(), localObject);
          }
          a |= o;
          break label162;
        }
        if ("group".equals(localObject))
        {
          localObject = new p();
          ((p)localObject).a(paramResources, paramAttributeSet, paramTheme, paramXmlPullParser);
          a.add(localObject);
          localStack.push(localObject);
          if (((p)localObject).a() != null) {
            g.put(((p)localObject).a(), localObject);
          }
          a |= p.a((p)localObject);
        }
        break label162;
        n = m;
        if (i1 == 3)
        {
          n = m;
          if ("group".equals(paramXmlPullParser.getName()))
          {
            localStack.pop();
            n = m;
          }
        }
      }
    }
    if (m != 0)
    {
      paramResources = new StringBuffer();
      if (paramResources.length() > 0) {
        paramResources.append(" or ");
      }
      paramResources.append("path");
      throw new XmlPullParserException("no " + paramResources + " defined");
    }
  }
  
  PorterDuffColorFilter a(PorterDuffColorFilter paramPorterDuffColorFilter, ColorStateList paramColorStateList, PorterDuff.Mode paramMode)
  {
    if ((paramColorStateList == null) || (paramMode == null)) {
      return null;
    }
    return new PorterDuffColorFilter(paramColorStateList.getColorForState(getState(), 0), paramMode);
  }
  
  Object a(String paramString)
  {
    return c.b.g.get(paramString);
  }
  
  void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public boolean canApplyTheme()
  {
    if (a != null) {
      android.support.v4.b.a.a.d(a);
    }
    return false;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (a != null) {
      a.draw(paramCanvas);
    }
    Object localObject;
    int m;
    int n;
    do
    {
      do
      {
        return;
        copyBounds(k);
      } while ((k.width() <= 0) || (k.height() <= 0));
      if (e != null) {
        break;
      }
      localObject = d;
      paramCanvas.getMatrix(j);
      j.getValues(i);
      float f2 = Math.abs(i[0]);
      float f1 = Math.abs(i[4]);
      float f4 = Math.abs(i[1]);
      float f3 = Math.abs(i[3]);
      if ((f4 != 0.0F) || (f3 != 0.0F))
      {
        f1 = 1.0F;
        f2 = 1.0F;
      }
      m = (int)(f2 * k.width());
      n = (int)(f1 * k.height());
      m = Math.min(2048, m);
      n = Math.min(2048, n);
    } while ((m <= 0) || (n <= 0));
    int i1 = paramCanvas.save();
    paramCanvas.translate(k.left, k.top);
    if (a())
    {
      paramCanvas.translate(k.width(), 0.0F);
      paramCanvas.scale(-1.0F, 1.0F);
    }
    k.offsetTo(0, 0);
    c.b(m, n);
    if (!g) {
      c.a(m, n);
    }
    for (;;)
    {
      c.a(paramCanvas, (ColorFilter)localObject, k);
      paramCanvas.restoreToCount(i1);
      return;
      localObject = e;
      break;
      if (!c.b())
      {
        c.a(m, n);
        c.c();
      }
    }
  }
  
  public int getAlpha()
  {
    if (a != null) {
      return android.support.v4.b.a.a.c(a);
    }
    return c.b.a();
  }
  
  public int getChangingConfigurations()
  {
    if (a != null) {
      return a.getChangingConfigurations();
    }
    return super.getChangingConfigurations() | c.getChangingConfigurations();
  }
  
  public Drawable.ConstantState getConstantState()
  {
    if (a != null) {
      return new t(a.getConstantState());
    }
    c.a = getChangingConfigurations();
    return c;
  }
  
  public int getIntrinsicHeight()
  {
    if (a != null) {
      return a.getIntrinsicHeight();
    }
    return (int)c.b.b;
  }
  
  public int getIntrinsicWidth()
  {
    if (a != null) {
      return a.getIntrinsicWidth();
    }
    return (int)c.b.a;
  }
  
  public int getOpacity()
  {
    if (a != null) {
      return a.getOpacity();
    }
    return -3;
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet)
  {
    if (a != null)
    {
      a.inflate(paramResources, paramXmlPullParser, paramAttributeSet);
      return;
    }
    inflate(paramResources, paramXmlPullParser, paramAttributeSet, null);
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
  {
    if (a != null)
    {
      android.support.v4.b.a.a.a(a, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
      return;
    }
    s locals = c;
    b = new r();
    TypedArray localTypedArray = b(paramResources, paramTheme, paramAttributeSet, a.a);
    a(localTypedArray, paramXmlPullParser);
    localTypedArray.recycle();
    a = getChangingConfigurations();
    k = true;
    b(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    d = a(d, c, d);
  }
  
  public void invalidateSelf()
  {
    if (a != null)
    {
      a.invalidateSelf();
      return;
    }
    super.invalidateSelf();
  }
  
  public boolean isStateful()
  {
    if (a != null) {
      return a.isStateful();
    }
    return (super.isStateful()) || ((c != null) && (c.c != null) && (c.c.isStateful()));
  }
  
  public Drawable mutate()
  {
    if (a != null) {
      a.mutate();
    }
    while ((f) || (super.mutate() != this)) {
      return this;
    }
    c = new s(c);
    f = true;
    return this;
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    if (a != null) {
      return a.setState(paramArrayOfInt);
    }
    paramArrayOfInt = c;
    if ((c != null) && (d != null))
    {
      d = a(d, c, d);
      invalidateSelf();
      return true;
    }
    return false;
  }
  
  public void scheduleSelf(Runnable paramRunnable, long paramLong)
  {
    if (a != null)
    {
      a.scheduleSelf(paramRunnable, paramLong);
      return;
    }
    super.scheduleSelf(paramRunnable, paramLong);
  }
  
  public void setAlpha(int paramInt)
  {
    if (a != null) {
      a.setAlpha(paramInt);
    }
    while (c.b.a() == paramInt) {
      return;
    }
    c.b.a(paramInt);
    invalidateSelf();
  }
  
  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (a != null)
    {
      a.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    super.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setBounds(Rect paramRect)
  {
    if (a != null)
    {
      a.setBounds(paramRect);
      return;
    }
    super.setBounds(paramRect);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    if (a != null)
    {
      a.setColorFilter(paramColorFilter);
      return;
    }
    e = paramColorFilter;
    invalidateSelf();
  }
  
  public void setTint(int paramInt)
  {
    if (a != null)
    {
      android.support.v4.b.a.a.a(a, paramInt);
      return;
    }
    setTintList(ColorStateList.valueOf(paramInt));
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    if (a != null) {
      android.support.v4.b.a.a.a(a, paramColorStateList);
    }
    s locals;
    do
    {
      return;
      locals = c;
    } while (c == paramColorStateList);
    c = paramColorStateList;
    d = a(d, paramColorStateList, d);
    invalidateSelf();
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    if (a != null) {
      android.support.v4.b.a.a.a(a, paramMode);
    }
    s locals;
    do
    {
      return;
      locals = c;
    } while (d == paramMode);
    d = paramMode;
    d = a(d, c, paramMode);
    invalidateSelf();
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (a != null) {
      return a.setVisible(paramBoolean1, paramBoolean2);
    }
    return super.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public void unscheduleSelf(Runnable paramRunnable)
  {
    if (a != null)
    {
      a.unscheduleSelf(paramRunnable);
      return;
    }
    super.unscheduleSelf(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     android.support.a.a.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */