package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.app.ActionBar.Tab;
import android.support.v7.appcompat.R.attr;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

class ScrollingTabContainerView$TabView
  extends LinearLayoutCompat
  implements View.OnLongClickListener
{
  private final int[] BG_ATTRS = { 16842964 };
  private View mCustomView;
  private ImageView mIconView;
  private ActionBar.Tab mTab;
  private TextView mTextView;
  
  public ScrollingTabContainerView$TabView(ScrollingTabContainerView paramScrollingTabContainerView, Context paramContext, ActionBar.Tab paramTab, boolean paramBoolean)
  {
    super(paramContext, null, R.attr.actionBarTabStyle);
    mTab = paramTab;
    paramScrollingTabContainerView = TintTypedArray.obtainStyledAttributes(paramContext, null, BG_ATTRS, R.attr.actionBarTabStyle, 0);
    if (paramScrollingTabContainerView.hasValue(0)) {
      setBackgroundDrawable(paramScrollingTabContainerView.getDrawable(0));
    }
    paramScrollingTabContainerView.recycle();
    if (paramBoolean) {
      setGravity(8388627);
    }
    update();
  }
  
  public void bindTab(ActionBar.Tab paramTab)
  {
    mTab = paramTab;
    update();
  }
  
  public ActionBar.Tab getTab()
  {
    return mTab;
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ActionBar.Tab.class.getName());
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    if (Build.VERSION.SDK_INT >= 14) {
      paramAccessibilityNodeInfo.setClassName(ActionBar.Tab.class.getName());
    }
  }
  
  public boolean onLongClick(View paramView)
  {
    paramView = new int[2];
    getLocationOnScreen(paramView);
    Object localObject = getContext();
    int i = getWidth();
    int j = getHeight();
    int k = getResourcesgetDisplayMetricswidthPixels;
    localObject = Toast.makeText((Context)localObject, mTab.getContentDescription(), 0);
    ((Toast)localObject).setGravity(49, paramView[0] + i / 2 - k / 2, j);
    ((Toast)localObject).show();
    return true;
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this$0.mMaxTabWidth > 0) && (getMeasuredWidth() > this$0.mMaxTabWidth)) {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(this$0.mMaxTabWidth, 1073741824), paramInt2);
    }
  }
  
  public void setSelected(boolean paramBoolean)
  {
    if (isSelected() != paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      super.setSelected(paramBoolean);
      if ((i != 0) && (paramBoolean)) {
        sendAccessibilityEvent(4);
      }
      return;
    }
  }
  
  public void update()
  {
    Object localObject1 = mTab;
    Object localObject2 = ((ActionBar.Tab)localObject1).getCustomView();
    if (localObject2 != null)
    {
      localObject1 = ((View)localObject2).getParent();
      if (localObject1 != this)
      {
        if (localObject1 != null) {
          ((ViewGroup)localObject1).removeView((View)localObject2);
        }
        addView((View)localObject2);
      }
      mCustomView = ((View)localObject2);
      if (mTextView != null) {
        mTextView.setVisibility(8);
      }
      if (mIconView != null)
      {
        mIconView.setVisibility(8);
        mIconView.setImageDrawable(null);
      }
      return;
    }
    if (mCustomView != null)
    {
      removeView(mCustomView);
      mCustomView = null;
    }
    Object localObject3 = ((ActionBar.Tab)localObject1).getIcon();
    localObject2 = ((ActionBar.Tab)localObject1).getText();
    int i;
    if (localObject3 != null)
    {
      Object localObject4;
      if (mIconView == null)
      {
        localObject4 = new ImageView(getContext());
        LinearLayoutCompat.LayoutParams localLayoutParams = new LinearLayoutCompat.LayoutParams(-2, -2);
        gravity = 16;
        ((ImageView)localObject4).setLayoutParams(localLayoutParams);
        addView((View)localObject4, 0);
        mIconView = ((ImageView)localObject4);
      }
      mIconView.setImageDrawable((Drawable)localObject3);
      mIconView.setVisibility(0);
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        break label365;
      }
      i = 1;
      label209:
      if (i == 0) {
        break label370;
      }
      if (mTextView == null)
      {
        localObject3 = new AppCompatTextView(getContext(), null, R.attr.actionBarTabTextStyle);
        ((TextView)localObject3).setEllipsize(TextUtils.TruncateAt.END);
        localObject4 = new LinearLayoutCompat.LayoutParams(-2, -2);
        gravity = 16;
        ((TextView)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject4);
        addView((View)localObject3);
        mTextView = ((TextView)localObject3);
      }
      mTextView.setText((CharSequence)localObject2);
      mTextView.setVisibility(0);
    }
    for (;;)
    {
      if (mIconView != null) {
        mIconView.setContentDescription(((ActionBar.Tab)localObject1).getContentDescription());
      }
      if ((i != 0) || (TextUtils.isEmpty(((ActionBar.Tab)localObject1).getContentDescription()))) {
        break label397;
      }
      setOnLongClickListener(this);
      return;
      if (mIconView == null) {
        break;
      }
      mIconView.setVisibility(8);
      mIconView.setImageDrawable(null);
      break;
      label365:
      i = 0;
      break label209;
      label370:
      if (mTextView != null)
      {
        mTextView.setVisibility(8);
        mTextView.setText(null);
      }
    }
    label397:
    setOnLongClickListener(null);
    setLongClickable(false);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ScrollingTabContainerView.TabView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */