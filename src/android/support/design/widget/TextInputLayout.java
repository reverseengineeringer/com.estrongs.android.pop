package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.DrawableContainer;
import android.os.Parcelable;
import android.support.design.d;
import android.support.design.h;
import android.support.design.i;
import android.support.design.j;
import android.support.v4.view.ex;
import android.support.v4.widget.Space;
import android.support.v7.widget.AppCompatDrawableManager;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class TextInputLayout
  extends LinearLayout
{
  private EditText a;
  private boolean b;
  private CharSequence c;
  private Paint d;
  private LinearLayout e;
  private int f;
  private boolean g;
  private TextView h;
  private int i;
  private boolean j;
  private CharSequence k;
  private boolean l;
  private TextView m;
  private int n;
  private int o;
  private int p;
  private boolean q;
  private ColorStateList r;
  private ColorStateList s;
  private final n t = new n(this);
  private boolean u;
  private cs v;
  private boolean w;
  
  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    cr.a(paramContext);
    setOrientation(1);
    setWillNotDraw(false);
    setAddStatesFromChildren(true);
    t.a(a.b);
    t.b(new AccelerateInterpolator());
    t.d(8388659);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, j.TextInputLayout, paramInt, i.Widget_Design_TextInputLayout);
    b = paramContext.getBoolean(j.TextInputLayout_hintEnabled, true);
    setHint(paramContext.getText(j.TextInputLayout_android_hint));
    u = paramContext.getBoolean(j.TextInputLayout_hintAnimationEnabled, true);
    if (paramContext.hasValue(j.TextInputLayout_android_textColorHint))
    {
      paramAttributeSet = paramContext.getColorStateList(j.TextInputLayout_android_textColorHint);
      s = paramAttributeSet;
      r = paramAttributeSet;
    }
    if (paramContext.getResourceId(j.TextInputLayout_hintTextAppearance, -1) != -1) {
      setHintTextAppearance(paramContext.getResourceId(j.TextInputLayout_hintTextAppearance, 0));
    }
    i = paramContext.getResourceId(j.TextInputLayout_errorTextAppearance, 0);
    boolean bool1 = paramContext.getBoolean(j.TextInputLayout_errorEnabled, false);
    boolean bool2 = paramContext.getBoolean(j.TextInputLayout_counterEnabled, false);
    setCounterMaxLength(paramContext.getInt(j.TextInputLayout_counterMaxLength, -1));
    o = paramContext.getResourceId(j.TextInputLayout_counterTextAppearance, 0);
    p = paramContext.getResourceId(j.TextInputLayout_counterOverflowTextAppearance, 0);
    paramContext.recycle();
    setErrorEnabled(bool1);
    setCounterEnabled(bool2);
    if (android.support.v4.view.cn.e(this) == 0) {
      android.support.v4.view.cn.c(this, 1);
    }
    android.support.v4.view.cn.a(this, new cq(this, null));
  }
  
  private LinearLayout.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof LinearLayout.LayoutParams)) {}
    for (paramLayoutParams = (LinearLayout.LayoutParams)paramLayoutParams; b; paramLayoutParams = new LinearLayout.LayoutParams(paramLayoutParams))
    {
      if (d == null) {
        d = new Paint();
      }
      d.setTypeface(t.d());
      d.setTextSize(t.g());
      topMargin = ((int)-d.ascent());
      return paramLayoutParams;
    }
    topMargin = 0;
    return paramLayoutParams;
  }
  
  private void a()
  {
    android.support.v4.view.cn.b(e, android.support.v4.view.cn.m(a), 0, android.support.v4.view.cn.n(a), a.getPaddingBottom());
  }
  
  private void a(float paramFloat)
  {
    if (t.f() == paramFloat) {
      return;
    }
    if (v == null)
    {
      v = do.a();
      v.a(a.a);
      v.a(200);
      v.a(new co(this));
    }
    v.a(t.f(), paramFloat);
    v.a();
  }
  
  private void a(int paramInt)
  {
    boolean bool2 = q;
    if (n == -1)
    {
      m.setText(String.valueOf(paramInt));
      q = false;
      if ((a != null) && (bool2 != q))
      {
        a(false);
        b();
      }
      return;
    }
    boolean bool1;
    label66:
    TextView localTextView;
    Context localContext;
    if (paramInt > n)
    {
      bool1 = true;
      q = bool1;
      if (bool2 != q)
      {
        localTextView = m;
        localContext = getContext();
        if (!q) {
          break label158;
        }
      }
    }
    label158:
    for (int i1 = p;; i1 = o)
    {
      localTextView.setTextAppearance(localContext, i1);
      m.setText(getContext().getString(h.character_counter_pattern, new Object[] { Integer.valueOf(paramInt), Integer.valueOf(n) }));
      break;
      bool1 = false;
      break label66;
    }
  }
  
  private void a(TextView paramTextView)
  {
    if (e != null)
    {
      e.removeView(paramTextView);
      int i1 = f - 1;
      f = i1;
      if (i1 == 0) {
        e.setVisibility(8);
      }
    }
  }
  
  private void a(TextView paramTextView, int paramInt)
  {
    if (e == null)
    {
      e = new LinearLayout(getContext());
      e.setOrientation(0);
      addView(e, -1, -2);
      Space localSpace = new Space(getContext());
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, 0, 1.0F);
      e.addView(localSpace, localLayoutParams);
      if (a != null) {
        a();
      }
    }
    e.setVisibility(0);
    e.addView(paramTextView, paramInt);
    f += 1;
  }
  
  private void a(boolean paramBoolean)
  {
    int i2 = 1;
    int i1;
    boolean bool;
    if ((a != null) && (!TextUtils.isEmpty(a.getText())))
    {
      i1 = 1;
      bool = a(getDrawableState(), 16842908);
      if (TextUtils.isEmpty(getError())) {
        break label119;
      }
      label46:
      if (r != null) {
        t.b(r.getDefaultColor());
      }
      if ((!q) || (m == null)) {
        break label124;
      }
      t.a(m.getCurrentTextColor());
    }
    for (;;)
    {
      if ((i1 == 0) && (!bool) && (i2 == 0)) {
        break label177;
      }
      b(paramBoolean);
      return;
      i1 = 0;
      break;
      label119:
      i2 = 0;
      break label46;
      label124:
      if ((bool) && (s != null)) {
        t.a(s.getDefaultColor());
      } else if (r != null) {
        t.a(r.getDefaultColor());
      }
    }
    label177:
    c(paramBoolean);
  }
  
  private static boolean a(int[] paramArrayOfInt, int paramInt)
  {
    boolean bool2 = false;
    int i2 = paramArrayOfInt.length;
    int i1 = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < i2)
      {
        if (paramArrayOfInt[i1] == paramInt) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  private void b()
  {
    c();
    Drawable localDrawable = a.getBackground();
    if (localDrawable == null) {
      return;
    }
    if ((j) && (h != null))
    {
      localDrawable.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(h.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
      return;
    }
    if ((q) && (m != null))
    {
      localDrawable.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(m.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
      return;
    }
    localDrawable.clearColorFilter();
    a.refreshDrawableState();
  }
  
  private void b(boolean paramBoolean)
  {
    if ((v != null) && (v.b())) {
      v.e();
    }
    if ((paramBoolean) && (u))
    {
      a(1.0F);
      return;
    }
    t.b(1.0F);
  }
  
  private void c()
  {
    Drawable localDrawable1 = a.getBackground();
    if (localDrawable1 == null) {}
    Drawable localDrawable2;
    do
    {
      do
      {
        return;
      } while (w);
      localDrawable2 = localDrawable1.getConstantState().newDrawable();
      if ((localDrawable1 instanceof DrawableContainer)) {
        w = ab.a((DrawableContainer)localDrawable1, localDrawable2.getConstantState());
      }
    } while (w);
    a.setBackgroundDrawable(localDrawable2);
    w = true;
  }
  
  private void c(boolean paramBoolean)
  {
    if ((v != null) && (v.b())) {
      v.e();
    }
    if ((paramBoolean) && (u))
    {
      a(0.0F);
      return;
    }
    t.b(0.0F);
  }
  
  private void setEditText(EditText paramEditText)
  {
    if (a != null) {
      throw new IllegalArgumentException("We already have an EditText, can only have one");
    }
    if (!(paramEditText instanceof TextInputEditText)) {
      Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
    }
    a = paramEditText;
    t.c(a.getTypeface());
    t.a(a.getTextSize());
    t.c(a.getGravity());
    a.addTextChangedListener(new cl(this));
    if (r == null) {
      r = a.getHintTextColors();
    }
    if ((b) && (TextUtils.isEmpty(c)))
    {
      setHint(a.getHint());
      a.setHint(null);
    }
    if (m != null) {
      a(a.getText().length());
    }
    if (e != null) {
      a();
    }
    a(false);
  }
  
  private void setHintInternal(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
    t.a(paramCharSequence);
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramView instanceof EditText))
    {
      setEditText((EditText)paramView);
      super.addView(paramView, 0, a(paramLayoutParams));
      return;
    }
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (b) {
      t.a(paramCanvas);
    }
  }
  
  public int getCounterMaxLength()
  {
    return n;
  }
  
  public EditText getEditText()
  {
    return a;
  }
  
  public CharSequence getError()
  {
    if (g) {
      return k;
    }
    return null;
  }
  
  public CharSequence getHint()
  {
    if (b) {
      return c;
    }
    return null;
  }
  
  public Typeface getTypeface()
  {
    return t.d();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((b) && (a != null))
    {
      paramInt1 = a.getLeft() + a.getCompoundPaddingLeft();
      paramInt3 = a.getRight() - a.getCompoundPaddingRight();
      t.a(paramInt1, a.getTop() + a.getCompoundPaddingTop(), paramInt3, a.getBottom() - a.getCompoundPaddingBottom());
      t.b(paramInt1, getPaddingTop(), paramInt3, paramInt4 - paramInt2 - getPaddingBottom());
      t.h();
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (TextInputLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setError(a);
    requestLayout();
  }
  
  public Parcelable onSaveInstanceState()
  {
    TextInputLayout.SavedState localSavedState = new TextInputLayout.SavedState(super.onSaveInstanceState());
    if (j) {
      a = getError();
    }
    return localSavedState;
  }
  
  public void refreshDrawableState()
  {
    super.refreshDrawableState();
    a(android.support.v4.view.cn.H(this));
  }
  
  public void setCounterEnabled(boolean paramBoolean)
  {
    if (l != paramBoolean)
    {
      if (!paramBoolean) {
        break label131;
      }
      m = new TextView(getContext());
      m.setMaxLines(1);
    }
    for (;;)
    {
      try
      {
        m.setTextAppearance(getContext(), o);
        a(m, -1);
        if (a == null)
        {
          a(0);
          l = paramBoolean;
          return;
        }
      }
      catch (Exception localException)
      {
        m.setTextAppearance(getContext(), i.TextAppearance_AppCompat_Caption);
        m.setTextColor(android.support.v4.content.a.b(getContext(), d.design_textinput_error_color_light));
        continue;
        a(a.getText().length());
        continue;
      }
      label131:
      a(m);
      m = null;
    }
  }
  
  public void setCounterMaxLength(int paramInt)
  {
    if (n != paramInt)
    {
      if (paramInt <= 0) {
        break label39;
      }
      n = paramInt;
      if (l) {
        if (a != null) {
          break label47;
        }
      }
    }
    label39:
    label47:
    for (paramInt = 0;; paramInt = a.getText().length())
    {
      a(paramInt);
      return;
      n = -1;
      break;
    }
  }
  
  public void setError(CharSequence paramCharSequence)
  {
    if (TextUtils.equals(k, paramCharSequence)) {}
    do
    {
      return;
      k = paramCharSequence;
      if (g) {
        break;
      }
    } while (TextUtils.isEmpty(paramCharSequence));
    setErrorEnabled(true);
    boolean bool2 = android.support.v4.view.cn.H(this);
    boolean bool1;
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      bool1 = true;
      j = bool1;
      if (!j) {
        break label154;
      }
      h.setText(paramCharSequence);
      h.setVisibility(0);
      if (bool2)
      {
        if (android.support.v4.view.cn.f(h) == 1.0F) {
          android.support.v4.view.cn.c(h, 0.0F);
        }
        android.support.v4.view.cn.s(h).a(1.0F).a(200L).a(a.d).a(new cm(this)).c();
      }
    }
    for (;;)
    {
      b();
      a(true);
      return;
      bool1 = false;
      break;
      label154:
      if (h.getVisibility() == 0) {
        if (bool2) {
          android.support.v4.view.cn.s(h).a(0.0F).a(200L).a(a.c).a(new cn(this, paramCharSequence)).c();
        } else {
          h.setVisibility(4);
        }
      }
    }
  }
  
  public void setErrorEnabled(boolean paramBoolean)
  {
    if (g != paramBoolean)
    {
      if (h != null) {
        android.support.v4.view.cn.s(h).b();
      }
      if (!paramBoolean) {
        break label125;
      }
    }
    for (h = new TextView(getContext());; h = null)
    {
      try
      {
        h.setTextAppearance(getContext(), i);
        h.setVisibility(4);
        android.support.v4.view.cn.d(h, 1);
        a(h, 0);
        g = paramBoolean;
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          h.setTextAppearance(getContext(), i.TextAppearance_AppCompat_Caption);
          h.setTextColor(android.support.v4.content.a.b(getContext(), d.design_textinput_error_color_light));
        }
      }
      label125:
      j = false;
      b();
      a(h);
    }
  }
  
  public void setHint(CharSequence paramCharSequence)
  {
    if (b)
    {
      setHintInternal(paramCharSequence);
      sendAccessibilityEvent(2048);
    }
  }
  
  public void setHintAnimationEnabled(boolean paramBoolean)
  {
    u = paramBoolean;
  }
  
  public void setHintEnabled(boolean paramBoolean)
  {
    Object localObject;
    if (paramBoolean != b)
    {
      b = paramBoolean;
      localObject = a.getHint();
      if (b) {
        break label89;
      }
      if ((!TextUtils.isEmpty(c)) && (TextUtils.isEmpty((CharSequence)localObject))) {
        a.setHint(c);
      }
      setHintInternal(null);
    }
    for (;;)
    {
      if (a != null)
      {
        localObject = a(a.getLayoutParams());
        a.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      return;
      label89:
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        if (TextUtils.isEmpty(c)) {
          setHint((CharSequence)localObject);
        }
        a.setHint(null);
      }
    }
  }
  
  public void setHintTextAppearance(int paramInt)
  {
    t.e(paramInt);
    s = ColorStateList.valueOf(t.j());
    if (a != null)
    {
      a(false);
      LinearLayout.LayoutParams localLayoutParams = a(a.getLayoutParams());
      a.setLayoutParams(localLayoutParams);
      a.requestLayout();
    }
  }
  
  public void setTypeface(Typeface paramTypeface)
  {
    t.c(paramTypeface);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TextInputLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */