package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.cn;
import android.support.v7.appcompat.R.bool;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.widget.ActionMenuView.ActionMenuChildView;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.ListPopupWindow.ForwardingListener;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.Toast;

public class ActionMenuItemView
  extends AppCompatTextView
  implements aa, ActionMenuView.ActionMenuChildView, View.OnClickListener, View.OnLongClickListener
{
  private m a;
  private CharSequence b;
  private Drawable c;
  private k d;
  private ListPopupWindow.ForwardingListener e;
  private c f;
  private boolean g;
  private boolean h;
  private int i;
  private int j;
  private int k;
  
  public ActionMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = paramContext.getResources();
    g = localResources.getBoolean(R.bool.abc_config_allowActionMenuItemTextWithIcon);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ActionMenuItemView, paramInt, 0);
    i = paramContext.getDimensionPixelSize(R.styleable.ActionMenuItemView_android_minWidth, 0);
    paramContext.recycle();
    k = ((int)(getDisplayMetricsdensity * 32.0F + 0.5F));
    setOnClickListener(this);
    setOnLongClickListener(this);
    j = -1;
  }
  
  private void c()
  {
    int i1 = 0;
    int m;
    if (!TextUtils.isEmpty(b))
    {
      m = 1;
      if (c != null)
      {
        n = i1;
        if (!a.m()) {
          break label51;
        }
        if (!g)
        {
          n = i1;
          if (!h) {
            break label51;
          }
        }
      }
      int n = 1;
      label51:
      if ((m & n) == 0) {
        break label75;
      }
    }
    label75:
    for (CharSequence localCharSequence = b;; localCharSequence = null)
    {
      setText(localCharSequence);
      return;
      m = 0;
      break;
    }
  }
  
  public void a(m paramm, int paramInt)
  {
    a = paramm;
    setIcon(paramm.getIcon());
    setTitle(paramm.a(this));
    setId(paramm.getItemId());
    if (paramm.isVisible()) {}
    for (paramInt = 0;; paramInt = 8)
    {
      setVisibility(paramInt);
      setEnabled(paramm.isEnabled());
      if ((paramm.hasSubMenu()) && (e == null)) {
        e = new b(this);
      }
      return;
    }
  }
  
  public boolean a()
  {
    return !TextUtils.isEmpty(getText());
  }
  
  public boolean b()
  {
    return true;
  }
  
  public m getItemData()
  {
    return a;
  }
  
  public boolean needsDividerAfter()
  {
    return a();
  }
  
  public boolean needsDividerBefore()
  {
    return (a()) && (a.getIcon() == null);
  }
  
  public void onClick(View paramView)
  {
    if (d != null) {
      d.invokeItem(a);
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    g = getContext().getResources().getBoolean(R.bool.abc_config_allowActionMenuItemTextWithIcon);
    c();
  }
  
  public boolean onLongClick(View paramView)
  {
    if (a()) {
      return false;
    }
    int[] arrayOfInt = new int[2];
    Rect localRect = new Rect();
    getLocationOnScreen(arrayOfInt);
    getWindowVisibleDisplayFrame(localRect);
    Context localContext = getContext();
    int m = getWidth();
    int i1 = getHeight();
    int i2 = arrayOfInt[1];
    int i3 = i1 / 2;
    int n = arrayOfInt[0];
    n = m / 2 + n;
    m = n;
    if (cn.h(paramView) == 0) {
      m = getResourcesgetDisplayMetricswidthPixels - n;
    }
    paramView = Toast.makeText(localContext, a.getTitle(), 0);
    if (i2 + i3 < localRect.height()) {
      paramView.setGravity(8388661, m, arrayOfInt[1] + i1 - top);
    }
    for (;;)
    {
      paramView.show();
      return true;
      paramView.setGravity(81, 0, i1);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool = a();
    if ((bool) && (j >= 0)) {
      super.setPadding(j, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }
    super.onMeasure(paramInt1, paramInt2);
    int m = View.MeasureSpec.getMode(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int n = getMeasuredWidth();
    if (m == Integer.MIN_VALUE) {}
    for (paramInt1 = Math.min(paramInt1, i);; paramInt1 = i)
    {
      if ((m != 1073741824) && (i > 0) && (n < paramInt1)) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
      }
      if ((!bool) && (c != null)) {
        super.setPadding((getMeasuredWidth() - c.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
      }
      return;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((a.hasSubMenu()) && (e != null) && (e.onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setCheckable(boolean paramBoolean) {}
  
  public void setChecked(boolean paramBoolean) {}
  
  public void setExpandedFormat(boolean paramBoolean)
  {
    if (h != paramBoolean)
    {
      h = paramBoolean;
      if (a != null) {
        a.h();
      }
    }
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    c = paramDrawable;
    if (paramDrawable != null)
    {
      int i2 = paramDrawable.getIntrinsicWidth();
      int i1 = paramDrawable.getIntrinsicHeight();
      int n = i1;
      int m = i2;
      float f1;
      if (i2 > k)
      {
        f1 = k / i2;
        m = k;
        n = (int)(i1 * f1);
      }
      i2 = n;
      i1 = m;
      if (n > k)
      {
        f1 = k / n;
        i2 = k;
        i1 = (int)(m * f1);
      }
      paramDrawable.setBounds(0, 0, i1, i2);
    }
    setCompoundDrawables(paramDrawable, null, null, null);
    c();
  }
  
  public void setItemInvoker(k paramk)
  {
    d = paramk;
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    j = paramInt1;
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setPopupCallback(c paramc)
  {
    f = paramc;
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    setContentDescription(b);
    c();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.menu.ActionMenuItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */