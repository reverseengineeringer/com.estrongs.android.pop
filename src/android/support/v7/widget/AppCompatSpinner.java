package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.content.a;
import android.support.v4.view.ch;
import android.support.v7.appcompat.R.attr;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

public class AppCompatSpinner
  extends Spinner
  implements ch
{
  private static final int[] ATTRS_ANDROID_SPINNERMODE;
  private static final boolean IS_AT_LEAST_JB;
  private static final boolean IS_AT_LEAST_M;
  private static final int MAX_ITEMS_MEASURED = 15;
  private static final int MODE_DIALOG = 0;
  private static final int MODE_DROPDOWN = 1;
  private static final int MODE_THEME = -1;
  private static final String TAG = "AppCompatSpinner";
  private AppCompatBackgroundHelper mBackgroundTintHelper;
  private AppCompatDrawableManager mDrawableManager;
  private int mDropDownWidth;
  private ListPopupWindow.ForwardingListener mForwardingListener;
  private AppCompatSpinner.DropdownPopup mPopup;
  private Context mPopupContext;
  private boolean mPopupSet;
  private SpinnerAdapter mTempAdapter;
  private final Rect mTempRect;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      bool = true;
      IS_AT_LEAST_M = bool;
      if (Build.VERSION.SDK_INT < 16) {
        break label45;
      }
    }
    label45:
    for (boolean bool = true;; bool = false)
    {
      IS_AT_LEAST_JB = bool;
      ATTRS_ANDROID_SPINNERMODE = new int[] { 16843505 };
      return;
      bool = false;
      break;
    }
  }
  
  public AppCompatSpinner(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppCompatSpinner(Context paramContext, int paramInt)
  {
    this(paramContext, null, R.attr.spinnerStyle, paramInt);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.spinnerStyle);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, -1);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    this(paramContext, paramAttributeSet, paramInt1, paramInt2, null);
  }
  
  /* Error */
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2, android.content.res.Resources.Theme paramTheme)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: iload_3
    //   4: invokespecial 78	android/widget/Spinner:<init>	(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   7: aload_0
    //   8: new 80	android/graphics/Rect
    //   11: dup
    //   12: invokespecial 82	android/graphics/Rect:<init>	()V
    //   15: putfield 84	android/support/v7/widget/AppCompatSpinner:mTempRect	Landroid/graphics/Rect;
    //   18: aload_1
    //   19: aload_2
    //   20: getstatic 89	android/support/v7/appcompat/R$styleable:Spinner	[I
    //   23: iload_3
    //   24: iconst_0
    //   25: invokestatic 95	android/support/v7/widget/TintTypedArray:obtainStyledAttributes	(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
    //   28: astore 10
    //   30: aload_0
    //   31: invokestatic 101	android/support/v7/widget/AppCompatDrawableManager:get	()Landroid/support/v7/widget/AppCompatDrawableManager;
    //   34: putfield 103	android/support/v7/widget/AppCompatSpinner:mDrawableManager	Landroid/support/v7/widget/AppCompatDrawableManager;
    //   37: aload_0
    //   38: new 105	android/support/v7/widget/AppCompatBackgroundHelper
    //   41: dup
    //   42: aload_0
    //   43: aload_0
    //   44: getfield 103	android/support/v7/widget/AppCompatSpinner:mDrawableManager	Landroid/support/v7/widget/AppCompatDrawableManager;
    //   47: invokespecial 108	android/support/v7/widget/AppCompatBackgroundHelper:<init>	(Landroid/view/View;Landroid/support/v7/widget/AppCompatDrawableManager;)V
    //   50: putfield 110	android/support/v7/widget/AppCompatSpinner:mBackgroundTintHelper	Landroid/support/v7/widget/AppCompatBackgroundHelper;
    //   53: aload 5
    //   55: ifnull +286 -> 341
    //   58: aload_0
    //   59: new 112	android/support/v7/view/ContextThemeWrapper
    //   62: dup
    //   63: aload_1
    //   64: aload 5
    //   66: invokespecial 115	android/support/v7/view/ContextThemeWrapper:<init>	(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    //   69: putfield 117	android/support/v7/widget/AppCompatSpinner:mPopupContext	Landroid/content/Context;
    //   72: aload_0
    //   73: getfield 117	android/support/v7/widget/AppCompatSpinner:mPopupContext	Landroid/content/Context;
    //   76: ifnull +184 -> 260
    //   79: iload 4
    //   81: istore 7
    //   83: iload 4
    //   85: iconst_m1
    //   86: if_icmpne +71 -> 157
    //   89: getstatic 47	android/os/Build$VERSION:SDK_INT	I
    //   92: bipush 11
    //   94: if_icmplt +360 -> 454
    //   97: aload_1
    //   98: aload_2
    //   99: getstatic 54	android/support/v7/widget/AppCompatSpinner:ATTRS_ANDROID_SPINNERMODE	[I
    //   102: iload_3
    //   103: iconst_0
    //   104: invokevirtual 122	android/content/Context:obtainStyledAttributes	(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    //   107: astore 8
    //   109: iload 4
    //   111: istore 6
    //   113: aload 8
    //   115: astore 5
    //   117: aload 8
    //   119: iconst_0
    //   120: invokevirtual 128	android/content/res/TypedArray:hasValue	(I)Z
    //   123: ifeq +16 -> 139
    //   126: aload 8
    //   128: astore 5
    //   130: aload 8
    //   132: iconst_0
    //   133: iconst_0
    //   134: invokevirtual 132	android/content/res/TypedArray:getInt	(II)I
    //   137: istore 6
    //   139: iload 6
    //   141: istore 7
    //   143: aload 8
    //   145: ifnull +12 -> 157
    //   148: aload 8
    //   150: invokevirtual 135	android/content/res/TypedArray:recycle	()V
    //   153: iload 6
    //   155: istore 7
    //   157: iload 7
    //   159: iconst_1
    //   160: if_icmpne +100 -> 260
    //   163: new 137	android/support/v7/widget/AppCompatSpinner$DropdownPopup
    //   166: dup
    //   167: aload_0
    //   168: aload_0
    //   169: getfield 117	android/support/v7/widget/AppCompatSpinner:mPopupContext	Landroid/content/Context;
    //   172: aload_2
    //   173: iload_3
    //   174: invokespecial 140	android/support/v7/widget/AppCompatSpinner$DropdownPopup:<init>	(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   177: astore 5
    //   179: aload_0
    //   180: getfield 117	android/support/v7/widget/AppCompatSpinner:mPopupContext	Landroid/content/Context;
    //   183: aload_2
    //   184: getstatic 89	android/support/v7/appcompat/R$styleable:Spinner	[I
    //   187: iload_3
    //   188: iconst_0
    //   189: invokestatic 95	android/support/v7/widget/TintTypedArray:obtainStyledAttributes	(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
    //   192: astore 8
    //   194: aload_0
    //   195: aload 8
    //   197: getstatic 143	android/support/v7/appcompat/R$styleable:Spinner_android_dropDownWidth	I
    //   200: bipush -2
    //   202: invokevirtual 146	android/support/v7/widget/TintTypedArray:getLayoutDimension	(II)I
    //   205: putfield 148	android/support/v7/widget/AppCompatSpinner:mDropDownWidth	I
    //   208: aload 5
    //   210: aload 8
    //   212: getstatic 151	android/support/v7/appcompat/R$styleable:Spinner_android_popupBackground	I
    //   215: invokevirtual 155	android/support/v7/widget/TintTypedArray:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   218: invokevirtual 159	android/support/v7/widget/AppCompatSpinner$DropdownPopup:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   221: aload 5
    //   223: aload 10
    //   225: getstatic 162	android/support/v7/appcompat/R$styleable:Spinner_android_prompt	I
    //   228: invokevirtual 166	android/support/v7/widget/TintTypedArray:getString	(I)Ljava/lang/String;
    //   231: invokevirtual 170	android/support/v7/widget/AppCompatSpinner$DropdownPopup:setPromptText	(Ljava/lang/CharSequence;)V
    //   234: aload 8
    //   236: invokevirtual 171	android/support/v7/widget/TintTypedArray:recycle	()V
    //   239: aload_0
    //   240: aload 5
    //   242: putfield 173	android/support/v7/widget/AppCompatSpinner:mPopup	Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
    //   245: aload_0
    //   246: new 175	android/support/v7/widget/AppCompatSpinner$1
    //   249: dup
    //   250: aload_0
    //   251: aload_0
    //   252: aload 5
    //   254: invokespecial 178	android/support/v7/widget/AppCompatSpinner$1:<init>	(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
    //   257: putfield 180	android/support/v7/widget/AppCompatSpinner:mForwardingListener	Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
    //   260: aload 10
    //   262: getstatic 183	android/support/v7/appcompat/R$styleable:Spinner_android_entries	I
    //   265: invokevirtual 187	android/support/v7/widget/TintTypedArray:getTextArray	(I)[Ljava/lang/CharSequence;
    //   268: astore 5
    //   270: aload 5
    //   272: ifnull +29 -> 301
    //   275: new 189	android/widget/ArrayAdapter
    //   278: dup
    //   279: aload_1
    //   280: getstatic 194	android/support/v7/appcompat/R$layout:support_simple_spinner_dropdown_item	I
    //   283: aload 5
    //   285: invokespecial 197	android/widget/ArrayAdapter:<init>	(Landroid/content/Context;I[Ljava/lang/Object;)V
    //   288: astore_1
    //   289: aload_1
    //   290: getstatic 194	android/support/v7/appcompat/R$layout:support_simple_spinner_dropdown_item	I
    //   293: invokevirtual 201	android/widget/ArrayAdapter:setDropDownViewResource	(I)V
    //   296: aload_0
    //   297: aload_1
    //   298: invokevirtual 205	android/support/v7/widget/AppCompatSpinner:setAdapter	(Landroid/widget/SpinnerAdapter;)V
    //   301: aload 10
    //   303: invokevirtual 171	android/support/v7/widget/TintTypedArray:recycle	()V
    //   306: aload_0
    //   307: iconst_1
    //   308: putfield 207	android/support/v7/widget/AppCompatSpinner:mPopupSet	Z
    //   311: aload_0
    //   312: getfield 209	android/support/v7/widget/AppCompatSpinner:mTempAdapter	Landroid/widget/SpinnerAdapter;
    //   315: ifnull +16 -> 331
    //   318: aload_0
    //   319: aload_0
    //   320: getfield 209	android/support/v7/widget/AppCompatSpinner:mTempAdapter	Landroid/widget/SpinnerAdapter;
    //   323: invokevirtual 205	android/support/v7/widget/AppCompatSpinner:setAdapter	(Landroid/widget/SpinnerAdapter;)V
    //   326: aload_0
    //   327: aconst_null
    //   328: putfield 209	android/support/v7/widget/AppCompatSpinner:mTempAdapter	Landroid/widget/SpinnerAdapter;
    //   331: aload_0
    //   332: getfield 110	android/support/v7/widget/AppCompatSpinner:mBackgroundTintHelper	Landroid/support/v7/widget/AppCompatBackgroundHelper;
    //   335: aload_2
    //   336: iload_3
    //   337: invokevirtual 213	android/support/v7/widget/AppCompatBackgroundHelper:loadFromAttributes	(Landroid/util/AttributeSet;I)V
    //   340: return
    //   341: aload 10
    //   343: getstatic 216	android/support/v7/appcompat/R$styleable:Spinner_popupTheme	I
    //   346: iconst_0
    //   347: invokevirtual 219	android/support/v7/widget/TintTypedArray:getResourceId	(II)I
    //   350: istore 6
    //   352: iload 6
    //   354: ifeq +20 -> 374
    //   357: aload_0
    //   358: new 112	android/support/v7/view/ContextThemeWrapper
    //   361: dup
    //   362: aload_1
    //   363: iload 6
    //   365: invokespecial 221	android/support/v7/view/ContextThemeWrapper:<init>	(Landroid/content/Context;I)V
    //   368: putfield 117	android/support/v7/widget/AppCompatSpinner:mPopupContext	Landroid/content/Context;
    //   371: goto -299 -> 72
    //   374: getstatic 49	android/support/v7/widget/AppCompatSpinner:IS_AT_LEAST_M	Z
    //   377: ifne +15 -> 392
    //   380: aload_1
    //   381: astore 5
    //   383: aload_0
    //   384: aload 5
    //   386: putfield 117	android/support/v7/widget/AppCompatSpinner:mPopupContext	Landroid/content/Context;
    //   389: goto -317 -> 72
    //   392: aconst_null
    //   393: astore 5
    //   395: goto -12 -> 383
    //   398: astore 9
    //   400: aconst_null
    //   401: astore 8
    //   403: aload 8
    //   405: astore 5
    //   407: ldc 24
    //   409: ldc -33
    //   411: aload 9
    //   413: invokestatic 229	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   416: pop
    //   417: iload 4
    //   419: istore 7
    //   421: aload 8
    //   423: ifnull -266 -> 157
    //   426: aload 8
    //   428: invokevirtual 135	android/content/res/TypedArray:recycle	()V
    //   431: iload 4
    //   433: istore 7
    //   435: goto -278 -> 157
    //   438: astore_1
    //   439: aconst_null
    //   440: astore 5
    //   442: aload 5
    //   444: ifnull +8 -> 452
    //   447: aload 5
    //   449: invokevirtual 135	android/content/res/TypedArray:recycle	()V
    //   452: aload_1
    //   453: athrow
    //   454: iconst_1
    //   455: istore 7
    //   457: goto -300 -> 157
    //   460: astore_1
    //   461: goto -19 -> 442
    //   464: astore 9
    //   466: goto -63 -> 403
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	469	0	this	AppCompatSpinner
    //   0	469	1	paramContext	Context
    //   0	469	2	paramAttributeSet	AttributeSet
    //   0	469	3	paramInt1	int
    //   0	469	4	paramInt2	int
    //   0	469	5	paramTheme	android.content.res.Resources.Theme
    //   111	253	6	i	int
    //   81	375	7	j	int
    //   107	320	8	localObject	Object
    //   398	14	9	localException1	Exception
    //   464	1	9	localException2	Exception
    //   28	314	10	localTintTypedArray	TintTypedArray
    // Exception table:
    //   from	to	target	type
    //   97	109	398	java/lang/Exception
    //   97	109	438	finally
    //   117	126	460	finally
    //   130	139	460	finally
    //   407	417	460	finally
    //   117	126	464	java/lang/Exception
    //   130	139	464	java/lang/Exception
  }
  
  private int compatMeasureContentWidth(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable)
  {
    if (paramSpinnerAdapter == null) {
      return 0;
    }
    int n = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
    int i1 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
    int i = Math.max(0, getSelectedItemPosition());
    int i2 = Math.min(paramSpinnerAdapter.getCount(), i + 15);
    int j = Math.max(0, i - (15 - (i2 - i)));
    View localView = null;
    int k = 0;
    i = 0;
    if (j < i2)
    {
      int m = paramSpinnerAdapter.getItemViewType(j);
      if (m == i) {
        break label204;
      }
      localView = null;
      i = m;
    }
    label204:
    for (;;)
    {
      localView = paramSpinnerAdapter.getView(j, localView, this);
      if (localView.getLayoutParams() == null) {
        localView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      }
      localView.measure(n, i1);
      k = Math.max(k, localView.getMeasuredWidth());
      j += 1;
      break;
      if (paramDrawable != null)
      {
        paramDrawable.getPadding(mTempRect);
        return mTempRect.left + mTempRect.right + k;
      }
      return k;
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (mBackgroundTintHelper != null) {
      mBackgroundTintHelper.applySupportBackgroundTint();
    }
  }
  
  public int getDropDownHorizontalOffset()
  {
    if (mPopup != null) {
      return mPopup.getHorizontalOffset();
    }
    if (IS_AT_LEAST_JB) {
      return super.getDropDownHorizontalOffset();
    }
    return 0;
  }
  
  public int getDropDownVerticalOffset()
  {
    if (mPopup != null) {
      return mPopup.getVerticalOffset();
    }
    if (IS_AT_LEAST_JB) {
      return super.getDropDownVerticalOffset();
    }
    return 0;
  }
  
  public int getDropDownWidth()
  {
    if (mPopup != null) {
      return mDropDownWidth;
    }
    if (IS_AT_LEAST_JB) {
      return super.getDropDownWidth();
    }
    return 0;
  }
  
  public Drawable getPopupBackground()
  {
    if (mPopup != null) {
      return mPopup.getBackground();
    }
    if (IS_AT_LEAST_JB) {
      return super.getPopupBackground();
    }
    return null;
  }
  
  public Context getPopupContext()
  {
    if (mPopup != null) {
      return mPopupContext;
    }
    if (IS_AT_LEAST_M) {
      return super.getPopupContext();
    }
    return null;
  }
  
  public CharSequence getPrompt()
  {
    if (mPopup != null) {
      return mPopup.getHintText();
    }
    return super.getPrompt();
  }
  
  public ColorStateList getSupportBackgroundTintList()
  {
    if (mBackgroundTintHelper != null) {
      return mBackgroundTintHelper.getSupportBackgroundTintList();
    }
    return null;
  }
  
  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (mBackgroundTintHelper != null) {
      return mBackgroundTintHelper.getSupportBackgroundTintMode();
    }
    return null;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((mPopup != null) && (mPopup.isShowing())) {
      mPopup.dismiss();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((mPopup != null) && (View.MeasureSpec.getMode(paramInt1) == Integer.MIN_VALUE)) {
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), compatMeasureContentWidth(getAdapter(), getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((mForwardingListener != null) && (mForwardingListener.onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean performClick()
  {
    if ((mPopup != null) && (!mPopup.isShowing()))
    {
      mPopup.show();
      return true;
    }
    return super.performClick();
  }
  
  public void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    if (!mPopupSet) {
      mTempAdapter = paramSpinnerAdapter;
    }
    do
    {
      return;
      super.setAdapter(paramSpinnerAdapter);
    } while (mPopup == null);
    if (mPopupContext == null) {}
    for (Context localContext = getContext();; localContext = mPopupContext)
    {
      mPopup.setAdapter(new AppCompatSpinner.DropDownAdapter(paramSpinnerAdapter, localContext.getTheme()));
      return;
    }
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (mBackgroundTintHelper != null) {
      mBackgroundTintHelper.onSetBackgroundDrawable(paramDrawable);
    }
  }
  
  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (mBackgroundTintHelper != null) {
      mBackgroundTintHelper.onSetBackgroundResource(paramInt);
    }
  }
  
  public void setDropDownHorizontalOffset(int paramInt)
  {
    if (mPopup != null) {
      mPopup.setHorizontalOffset(paramInt);
    }
    while (!IS_AT_LEAST_JB) {
      return;
    }
    super.setDropDownHorizontalOffset(paramInt);
  }
  
  public void setDropDownVerticalOffset(int paramInt)
  {
    if (mPopup != null) {
      mPopup.setVerticalOffset(paramInt);
    }
    while (!IS_AT_LEAST_JB) {
      return;
    }
    super.setDropDownVerticalOffset(paramInt);
  }
  
  public void setDropDownWidth(int paramInt)
  {
    if (mPopup != null) {
      mDropDownWidth = paramInt;
    }
    while (!IS_AT_LEAST_JB) {
      return;
    }
    super.setDropDownWidth(paramInt);
  }
  
  public void setPopupBackgroundDrawable(Drawable paramDrawable)
  {
    if (mPopup != null) {
      mPopup.setBackgroundDrawable(paramDrawable);
    }
    while (!IS_AT_LEAST_JB) {
      return;
    }
    super.setPopupBackgroundDrawable(paramDrawable);
  }
  
  public void setPopupBackgroundResource(int paramInt)
  {
    setPopupBackgroundDrawable(a.a(getPopupContext(), paramInt));
  }
  
  public void setPrompt(CharSequence paramCharSequence)
  {
    if (mPopup != null)
    {
      mPopup.setPromptText(paramCharSequence);
      return;
    }
    super.setPrompt(paramCharSequence);
  }
  
  public void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (mBackgroundTintHelper != null) {
      mBackgroundTintHelper.setSupportBackgroundTintList(paramColorStateList);
    }
  }
  
  public void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (mBackgroundTintHelper != null) {
      mBackgroundTintHelper.setSupportBackgroundTintMode(paramMode);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AppCompatSpinner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */