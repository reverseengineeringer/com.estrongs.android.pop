package com.estrongs.android.ui.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.MaxWidthLinearLayout;

public class ci
  extends Dialog
{
  Button button_cancel;
  Button button_ok;
  View button_single;
  private boolean dismissed = false;
  public boolean itemsEnable = true;
  protected cw listAdapter;
  protected ListView listView;
  protected MaxWidthLinearLayout mBodyView;
  private DialogInterface.OnClickListener mButtonListener0;
  private DialogInterface.OnClickListener mButtonListener1;
  private DialogInterface.OnClickListener mButtonListener2;
  protected FrameLayout mContentContainer;
  protected View mContentView;
  protected Context mContext;
  private final Handler mHandler = new Handler();
  private Drawable mIcon;
  private DialogInterface.OnClickListener mItemSelectedListener;
  private ProgressBar mProgressBar;
  private boolean mSelectable;
  private TextView messageView;
  protected at themeManager;
  
  public ci(Context paramContext)
  {
    this(paramContext, 2131296623);
  }
  
  protected ci(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
    mContext = paramContext;
    init();
  }
  
  public ci(Context paramContext, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    super(paramContext, paramBoolean, paramOnCancelListener);
    mContext = paramContext;
    init();
  }
  
  private void dismissNoException()
  {
    try
    {
      dismissed = true;
      super.dismiss();
      return;
    }
    catch (Exception localException) {}
  }
  
  private void init()
  {
    themeManager = at.a(mContext);
    mSelectable = true;
    mBodyView = ((MaxWidthLinearLayout)k.a(mContext).inflate(2130903149, null));
    messageView = ((TextView)mBodyView.findViewById(16908299));
    Object localObject = (LinearLayout)mBodyView.findViewById(2131624548);
    getWindow().setSoftInputMode(32);
    int i;
    int j;
    int m;
    int k;
    if (mContext.getResources().getConfiguration().orientation == 1)
    {
      i = 1;
      localObject = new ViewGroup.LayoutParams(-2, -2);
      j = mContext.getResources().getDimensionPixelOffset(2131165281);
      mBodyView.setPadding(j, j, j, j);
      super.setContentView(mBodyView, (ViewGroup.LayoutParams)localObject);
      if (ac.a() >= 14)
      {
        if (i != 0) {
          break label328;
        }
        m = mContext.getResources().getDisplayMetrics().heightPixels;
        k = mContext.getResources().getDisplayMetrics().widthPixels;
        j = k;
        i = m;
        if (com.estrongs.android.pop.utils.cu.a(mContext))
        {
          i = m * 4 / 5;
          j = k * 3 / 5;
        }
        mBodyView.setMaxWidth(i);
        mBodyView.setMinimumHeight(j);
      }
    }
    for (;;)
    {
      mContentContainer = ((FrameLayout)mBodyView.findViewById(2131624553));
      mProgressBar = new ProgressBar(mContext);
      mProgressBar.setIndeterminateDrawable(mContext.getResources().getDrawable(2130838317));
      localObject = new FrameLayout.LayoutParams(-2, -2);
      gravity = 17;
      mContentContainer.addView(mProgressBar, (ViewGroup.LayoutParams)localObject);
      mProgressBar.setVisibility(4);
      setCanceledOnTouchOutside(true);
      return;
      i = 0;
      break;
      label328:
      m = mContext.getResources().getDisplayMetrics().widthPixels;
      k = mContext.getResources().getDisplayMetrics().heightPixels;
      j = k;
      i = m;
      if (com.estrongs.android.pop.utils.cu.a(mContext))
      {
        i = m * 4 / 5;
        j = k * 3 / 5;
      }
      mBodyView.setMaxWidth(i);
      mBodyView.setMinimumHeight(j);
    }
  }
  
  public void dismiss()
  {
    if (Looper.myLooper() == mHandler.getLooper())
    {
      dismissNoException();
      return;
    }
    mHandler.post(new cm(this));
  }
  
  public Button getCancelButton()
  {
    return button_cancel;
  }
  
  public Button getConfirmButton()
  {
    return button_ok;
  }
  
  public TextView getMessageView()
  {
    return messageView;
  }
  
  public View getSingleButton()
  {
    return button_single;
  }
  
  protected String getString(int paramInt)
  {
    return mContext.getString(paramInt);
  }
  
  public CharSequence getTitle()
  {
    return ((TextView)mBodyView.findViewById(2131624551)).getText();
  }
  
  public void hideAllButtons()
  {
    ((LinearLayout)mBodyView.findViewById(2131624554)).setVisibility(8);
    ((LinearLayout)mBodyView.findViewById(2131624557)).setVisibility(8);
    ((LinearLayout)mBodyView.findViewById(2131624560)).setVisibility(8);
  }
  
  public void hideProgressBar()
  {
    if (mContentView != null) {
      mContentView.setVisibility(0);
    }
    mProgressBar.setVisibility(4);
    setAllButtonsEnabled(true);
  }
  
  public boolean isDismissed()
  {
    return dismissed;
  }
  
  public void requestInputMethod()
  {
    getWindow().setSoftInputMode(5);
  }
  
  public void setAllButtonsEnabled(boolean paramBoolean)
  {
    mBodyView.findViewById(2131624554).setEnabled(paramBoolean);
    mBodyView.findViewById(2131624558).setEnabled(paramBoolean);
    mBodyView.findViewById(2131624559).setEnabled(paramBoolean);
    mBodyView.findViewById(2131624561).setEnabled(paramBoolean);
    mBodyView.findViewById(2131624562).setEnabled(paramBoolean);
    mBodyView.findViewById(2131624563).setEnabled(paramBoolean);
  }
  
  public void setButton(int paramInt, CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    if (paramInt == -1) {
      setConfirmButton(paramCharSequence, paramOnClickListener);
    }
    while (paramInt != -2) {
      return;
    }
    setCancelButton(paramCharSequence, paramOnClickListener);
  }
  
  public Button setCancelButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    ((LinearLayout)mBodyView.findViewById(2131624554)).setVisibility(8);
    ((LinearLayout)mBodyView.findViewById(2131624560)).setVisibility(8);
    LinearLayout localLinearLayout = (LinearLayout)mBodyView.findViewById(2131624557);
    localLinearLayout.setVisibility(0);
    if (button_cancel == null)
    {
      if (ac.a() > 10)
      {
        button_cancel = ((Button)localLinearLayout.findViewById(2131624558));
        button_cancel.setBackgroundResource(2130838268);
      }
    }
    else
    {
      button_cancel.setText(paramCharSequence);
      if (paramOnClickListener != null) {
        break label153;
      }
      button_cancel.setOnClickListener(new cr(this));
    }
    for (;;)
    {
      return button_cancel;
      button_cancel = ((Button)localLinearLayout.findViewById(2131624559));
      button_cancel.setBackgroundResource(2130838270);
      break;
      label153:
      mButtonListener1 = paramOnClickListener;
      button_cancel.setOnClickListener(new cs(this));
    }
  }
  
  public Button setConfirmButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    ((LinearLayout)mBodyView.findViewById(2131624554)).setVisibility(8);
    ((LinearLayout)mBodyView.findViewById(2131624560)).setVisibility(8);
    LinearLayout localLinearLayout = (LinearLayout)mBodyView.findViewById(2131624557);
    localLinearLayout.setVisibility(0);
    if (button_ok == null)
    {
      if (ac.a() <= 10) {
        break label127;
      }
      button_ok = ((Button)localLinearLayout.findViewById(2131624559));
      button_ok.setBackgroundResource(2130838282);
    }
    for (;;)
    {
      button_ok.setText(paramCharSequence);
      mButtonListener0 = paramOnClickListener;
      button_ok.setOnClickListener(new cq(this));
      return button_ok;
      label127:
      button_ok = ((Button)localLinearLayout.findViewById(2131624558));
      button_ok.setBackgroundResource(2130838280);
    }
  }
  
  public void setContentView(int paramInt)
  {
    setContentView(k.a(mContext).inflate(paramInt, null));
  }
  
  public void setContentView(View paramView)
  {
    mContentView = paramView;
    mContentContainer.setPadding(0, g.a(mContext, 1.0F), 0, 0);
    mContentContainer.setVisibility(0);
    mContentContainer.addView(mContentView, 0);
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    mContentView = paramView;
    mContentContainer.addView(mContentView, 0, paramLayoutParams);
  }
  
  public void setIcon(int paramInt)
  {
    setIcon(mContext.getResources().getDrawable(paramInt));
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    ImageView localImageView = (ImageView)mBodyView.findViewById(2131624549);
    LinearLayout localLinearLayout = (LinearLayout)mBodyView.findViewById(2131624550);
    mIcon = paramDrawable;
    if (mIcon == null)
    {
      localImageView.setVisibility(8);
      localLinearLayout.setGravity(17);
      return;
    }
    localImageView.setVisibility(0);
    localImageView.setImageDrawable(mIcon);
    localLinearLayout.setGravity(19);
  }
  
  public void setItems(Drawable[] paramArrayOfDrawable, CharSequence[] paramArrayOfCharSequence, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    if (paramArrayOfCharSequence == null) {
      return;
    }
    mItemSelectedListener = paramOnClickListener;
    listView = new ListView(mContext);
    listView.setPadding(g.a(mContext, 15.0F), g.a(mContext, 15.0F), g.a(mContext, 15.0F), 0);
    listView.setSelector(2130838302);
    listAdapter = new cw(this, mContext, paramArrayOfDrawable, paramArrayOfCharSequence, paramInt);
    listView.setDivider(mContext.getResources().getDrawable(2130837692));
    listView.setDividerHeight(g.a(mContext, 0.0F));
    listView.setFocusable(true);
    listView.setScrollBarStyle(50331648);
    listView.setCacheColorHint(0);
    paramArrayOfDrawable = new cl(this);
    listView.setOnItemClickListener(paramArrayOfDrawable);
    listView.setAdapter(listAdapter);
    setContentView(listView);
  }
  
  public void setItems(CharSequence[] paramArrayOfCharSequence, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    setItems(null, paramArrayOfCharSequence, paramInt, paramOnClickListener);
  }
  
  public void setItemsEnable(boolean paramBoolean)
  {
    if (itemsEnable != paramBoolean)
    {
      itemsEnable = paramBoolean;
      if (listAdapter != null) {
        listAdapter.notifyDataSetChanged();
      }
      if (listView != null) {
        listView.setEnabled(paramBoolean);
      }
    }
  }
  
  public Button setLeftButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    ((LinearLayout)mBodyView.findViewById(2131624554)).setVisibility(8);
    ((LinearLayout)mBodyView.findViewById(2131624557)).setVisibility(8);
    Object localObject = (LinearLayout)mBodyView.findViewById(2131624560);
    ((LinearLayout)localObject).setVisibility(0);
    if (ac.a() > 10)
    {
      localObject = (Button)((LinearLayout)localObject).findViewById(2131624561);
      ((Button)localObject).setBackgroundResource(2130838268);
    }
    for (;;)
    {
      ((Button)localObject).setText(paramCharSequence);
      mButtonListener0 = paramOnClickListener;
      ((Button)localObject).setOnClickListener(new ct(this));
      return (Button)localObject;
      localObject = (Button)((LinearLayout)localObject).findViewById(2131624563);
      ((Button)localObject).setBackgroundResource(2130838270);
    }
  }
  
  public void setMessage(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
    {
      messageView.setText(paramCharSequence);
      messageView.setVisibility(0);
      return;
    }
    messageView.setVisibility(8);
  }
  
  public Button setMiddleButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    ((LinearLayout)mBodyView.findViewById(2131624554)).setVisibility(8);
    ((LinearLayout)mBodyView.findViewById(2131624557)).setVisibility(8);
    Object localObject = (LinearLayout)mBodyView.findViewById(2131624560);
    ((LinearLayout)localObject).setVisibility(0);
    localObject = (Button)((LinearLayout)localObject).findViewById(2131624562);
    ((Button)localObject).setBackgroundResource(2130838269);
    ((Button)localObject).setText(paramCharSequence);
    mButtonListener1 = paramOnClickListener;
    ((Button)localObject).setOnClickListener(new cu(this));
    return (Button)localObject;
  }
  
  public Button setRightButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    ((LinearLayout)mBodyView.findViewById(2131624554)).setVisibility(8);
    ((LinearLayout)mBodyView.findViewById(2131624557)).setVisibility(8);
    Object localObject = (LinearLayout)mBodyView.findViewById(2131624560);
    ((LinearLayout)localObject).setVisibility(0);
    if (ac.a() > 10)
    {
      localObject = (Button)((LinearLayout)localObject).findViewById(2131624563);
      ((Button)localObject).setBackgroundResource(2130838282);
    }
    for (;;)
    {
      ((Button)localObject).setText(paramCharSequence);
      mButtonListener2 = paramOnClickListener;
      ((Button)localObject).setOnClickListener(new ck(this));
      return (Button)localObject;
      localObject = (Button)((LinearLayout)localObject).findViewById(2131624561);
      ((Button)localObject).setBackgroundResource(2130838280);
    }
  }
  
  public void setSelectable(boolean paramBoolean)
  {
    mSelectable = paramBoolean;
  }
  
  public void setSingleButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    setSingleButton(paramCharSequence, null, paramOnClickListener);
  }
  
  public void setSingleButton(CharSequence paramCharSequence, Drawable paramDrawable, DialogInterface.OnClickListener paramOnClickListener)
  {
    ((LinearLayout)mBodyView.findViewById(2131624557)).setVisibility(8);
    ((LinearLayout)mBodyView.findViewById(2131624560)).setVisibility(8);
    button_single = ((LinearLayout)mBodyView.findViewById(2131624554));
    button_single.setVisibility(0);
    button_single.setFocusable(true);
    button_single.setBackgroundResource(2130838271);
    ((ImageView)button_single.findViewById(2131624555)).setImageDrawable(paramDrawable);
    ((TextView)button_single.findViewById(2131624556)).setText(paramCharSequence);
    if (paramOnClickListener == null) {
      button_single.setOnClickListener(new cj(this));
    }
    while (paramOnClickListener == null)
    {
      button_single.setOnClickListener(new co(this));
      return;
      mButtonListener0 = paramOnClickListener;
      button_single.setOnClickListener(new cn(this));
    }
    mButtonListener0 = paramOnClickListener;
    button_single.setOnClickListener(new cp(this));
  }
  
  public void setTitle(int paramInt)
  {
    setTitle(mContext.getResources().getString(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    TextView localTextView = (TextView)mBodyView.findViewById(2131624551);
    localTextView.setText(paramCharSequence);
    localTextView.invalidate();
  }
  
  public void show()
  {
    try
    {
      super.show();
      dismissed = false;
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void showProgressBar()
  {
    if (mContentView != null) {
      mContentView.setVisibility(4);
    }
    mProgressBar.setVisibility(0);
    setAllButtonsEnabled(false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */