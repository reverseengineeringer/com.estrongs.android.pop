package android.support.a.a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

@TargetApi(21)
public class b
  extends k
  implements Animatable
{
  private d b;
  private Context c;
  private ArgbEvaluator d = null;
  private final Drawable.Callback e = new c(this);
  
  private b()
  {
    this(null, null, null);
  }
  
  private b(Context paramContext)
  {
    this(paramContext, null, null);
  }
  
  private b(Context paramContext, d paramd, Resources paramResources)
  {
    c = paramContext;
    if (paramd != null)
    {
      b = paramd;
      return;
    }
    b = new d(paramContext, paramd, e, paramResources);
  }
  
  static TypedArray a(Resources paramResources, Resources.Theme paramTheme, AttributeSet paramAttributeSet, int[] paramArrayOfInt)
  {
    if (paramTheme == null) {
      return paramResources.obtainAttributes(paramAttributeSet, paramArrayOfInt);
    }
    return paramTheme.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt, 0, 0);
  }
  
  public static b a(Context paramContext, Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
  {
    paramContext = new b(paramContext);
    paramContext.inflate(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    return paramContext;
  }
  
  private void a(Animator paramAnimator)
  {
    Object localObject;
    if ((paramAnimator instanceof AnimatorSet))
    {
      localObject = ((AnimatorSet)paramAnimator).getChildAnimations();
      if (localObject != null)
      {
        int i = 0;
        while (i < ((List)localObject).size())
        {
          a((Animator)((List)localObject).get(i));
          i += 1;
        }
      }
    }
    if ((paramAnimator instanceof ObjectAnimator))
    {
      paramAnimator = (ObjectAnimator)paramAnimator;
      localObject = paramAnimator.getPropertyName();
      if (("fillColor".equals(localObject)) || ("strokeColor".equals(localObject)))
      {
        if (d == null) {
          d = new ArgbEvaluator();
        }
        paramAnimator.setEvaluator(d);
      }
    }
  }
  
  private void a(String paramString, Animator paramAnimator)
  {
    paramAnimator.setTarget(b.b.a(paramString));
    if (Build.VERSION.SDK_INT < 21) {
      a(paramAnimator);
    }
    if (b.c == null)
    {
      b.c = new ArrayList();
      b.d = new android.support.v4.e.a();
    }
    b.c.add(paramAnimator);
    b.d.put(paramAnimator, paramString);
  }
  
  private boolean a()
  {
    ArrayList localArrayList = b.c;
    if (localArrayList == null) {
      return false;
    }
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      if (((Animator)localArrayList.get(i)).isRunning()) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public void applyTheme(Resources.Theme paramTheme)
  {
    if (a != null) {
      android.support.v4.b.a.a.a(a, paramTheme);
    }
  }
  
  public boolean canApplyTheme()
  {
    if (a != null) {
      return android.support.v4.b.a.a.d(a);
    }
    return false;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (a != null) {
      a.draw(paramCanvas);
    }
    do
    {
      return;
      b.b.draw(paramCanvas);
    } while (!a());
    invalidateSelf();
  }
  
  public int getAlpha()
  {
    if (a != null) {
      return android.support.v4.b.a.a.c(a);
    }
    return b.b.getAlpha();
  }
  
  public int getChangingConfigurations()
  {
    if (a != null) {
      return a.getChangingConfigurations();
    }
    return super.getChangingConfigurations() | b.a;
  }
  
  public Drawable.ConstantState getConstantState()
  {
    if (a != null) {
      return new e(a.getConstantState());
    }
    return null;
  }
  
  public int getIntrinsicHeight()
  {
    if (a != null) {
      return a.getIntrinsicHeight();
    }
    return b.b.getIntrinsicHeight();
  }
  
  public int getIntrinsicWidth()
  {
    if (a != null) {
      return a.getIntrinsicWidth();
    }
    return b.b.getIntrinsicWidth();
  }
  
  public int getOpacity()
  {
    if (a != null) {
      return a.getOpacity();
    }
    return b.b.getOpacity();
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet)
  {
    inflate(paramResources, paramXmlPullParser, paramAttributeSet, null);
  }
  
  public void inflate(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
  {
    if (a != null)
    {
      android.support.v4.b.a.a.a(a, paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
      return;
    }
    int i = paramXmlPullParser.getEventType();
    label28:
    Object localObject1;
    Object localObject2;
    if (i != 1) {
      if (i == 2)
      {
        localObject1 = paramXmlPullParser.getName();
        if (!"animated-vector".equals(localObject1)) {
          break label156;
        }
        localObject1 = a(paramResources, paramTheme, paramAttributeSet, a.e);
        i = ((TypedArray)localObject1).getResourceId(0, 0);
        if (i != 0)
        {
          localObject2 = l.a(paramResources, i, paramTheme);
          ((l)localObject2).a(false);
          ((l)localObject2).setCallback(e);
          if (b.b != null) {
            b.b.setCallback(null);
          }
          b.b = ((l)localObject2);
        }
        ((TypedArray)localObject1).recycle();
      }
    }
    for (;;)
    {
      i = paramXmlPullParser.next();
      break label28;
      break;
      label156:
      if ("target".equals(localObject1))
      {
        localObject1 = paramResources.obtainAttributes(paramAttributeSet, a.f);
        localObject2 = ((TypedArray)localObject1).getString(0);
        i = ((TypedArray)localObject1).getResourceId(1, 0);
        if (i != 0)
        {
          if (c == null) {
            break label229;
          }
          a((String)localObject2, AnimatorInflater.loadAnimator(c, i));
        }
        ((TypedArray)localObject1).recycle();
      }
    }
    label229:
    throw new IllegalStateException("Context can't be null when inflating animators");
  }
  
  public boolean isRunning()
  {
    if (a != null) {
      return ((AnimatedVectorDrawable)a).isRunning();
    }
    ArrayList localArrayList = b.c;
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      if (((Animator)localArrayList.get(i)).isRunning()) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public boolean isStateful()
  {
    if (a != null) {
      return a.isStateful();
    }
    return b.b.isStateful();
  }
  
  public Drawable mutate()
  {
    if (a != null)
    {
      a.mutate();
      return this;
    }
    throw new IllegalStateException("Mutate() is not supported for older platform");
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    if (a != null)
    {
      a.setBounds(paramRect);
      return;
    }
    b.b.setBounds(paramRect);
  }
  
  protected boolean onLevelChange(int paramInt)
  {
    if (a != null) {
      return a.setLevel(paramInt);
    }
    return b.b.setLevel(paramInt);
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    if (a != null) {
      return a.setState(paramArrayOfInt);
    }
    return b.b.setState(paramArrayOfInt);
  }
  
  public void setAlpha(int paramInt)
  {
    if (a != null)
    {
      a.setAlpha(paramInt);
      return;
    }
    b.b.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    if (a != null)
    {
      a.setColorFilter(paramColorFilter);
      return;
    }
    b.b.setColorFilter(paramColorFilter);
  }
  
  public void setTint(int paramInt)
  {
    if (a != null)
    {
      android.support.v4.b.a.a.a(a, paramInt);
      return;
    }
    b.b.setTint(paramInt);
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    if (a != null)
    {
      android.support.v4.b.a.a.a(a, paramColorStateList);
      return;
    }
    b.b.setTintList(paramColorStateList);
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    if (a != null)
    {
      android.support.v4.b.a.a.a(a, paramMode);
      return;
    }
    b.b.setTintMode(paramMode);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (a != null) {
      return a.setVisible(paramBoolean1, paramBoolean2);
    }
    b.b.setVisible(paramBoolean1, paramBoolean2);
    return super.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public void start()
  {
    if (a != null) {
      ((AnimatedVectorDrawable)a).start();
    }
    while (a()) {
      return;
    }
    ArrayList localArrayList = b.c;
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      ((Animator)localArrayList.get(i)).start();
      i += 1;
    }
    invalidateSelf();
  }
  
  public void stop()
  {
    if (a != null) {
      ((AnimatedVectorDrawable)a).stop();
    }
    for (;;)
    {
      return;
      ArrayList localArrayList = b.c;
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        ((Animator)localArrayList.get(i)).end();
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */