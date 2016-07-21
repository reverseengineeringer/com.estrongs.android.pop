package android.support.v4.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;

public class aa
  extends Fragment
  implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener
{
  private static final String SAVED_BACK_STACK_ID = "android:backStackId";
  private static final String SAVED_CANCELABLE = "android:cancelable";
  private static final String SAVED_DIALOG_STATE_TAG = "android:savedDialogState";
  private static final String SAVED_SHOWS_DIALOG = "android:showsDialog";
  private static final String SAVED_STYLE = "android:style";
  private static final String SAVED_THEME = "android:theme";
  public static final int STYLE_NORMAL = 0;
  public static final int STYLE_NO_FRAME = 2;
  public static final int STYLE_NO_INPUT = 3;
  public static final int STYLE_NO_TITLE = 1;
  int mBackStackId = -1;
  boolean mCancelable = true;
  Dialog mDialog;
  boolean mDismissed;
  boolean mShownByMe;
  boolean mShowsDialog = true;
  int mStyle = 0;
  int mTheme = 0;
  boolean mViewDestroyed;
  
  public void dismiss()
  {
    dismissInternal(false);
  }
  
  public void dismissAllowingStateLoss()
  {
    dismissInternal(true);
  }
  
  void dismissInternal(boolean paramBoolean)
  {
    if (mDismissed) {
      return;
    }
    mDismissed = true;
    mShownByMe = false;
    if (mDialog != null)
    {
      mDialog.dismiss();
      mDialog = null;
    }
    mViewDestroyed = true;
    if (mBackStackId >= 0)
    {
      getFragmentManager().a(mBackStackId, 1);
      mBackStackId = -1;
      return;
    }
    az localaz = getFragmentManager().a();
    localaz.a(this);
    if (paramBoolean)
    {
      localaz.c();
      return;
    }
    localaz.b();
  }
  
  public Dialog getDialog()
  {
    return mDialog;
  }
  
  public LayoutInflater getLayoutInflater(Bundle paramBundle)
  {
    if (!mShowsDialog) {
      return super.getLayoutInflater(paramBundle);
    }
    mDialog = onCreateDialog(paramBundle);
    if (mDialog != null)
    {
      setupDialog(mDialog, mStyle);
      return (LayoutInflater)mDialog.getContext().getSystemService("layout_inflater");
    }
    return (LayoutInflater)mHost.i().getSystemService("layout_inflater");
  }
  
  public boolean getShowsDialog()
  {
    return mShowsDialog;
  }
  
  public int getTheme()
  {
    return mTheme;
  }
  
  public boolean isCancelable()
  {
    return mCancelable;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (!mShowsDialog) {}
    do
    {
      do
      {
        return;
        View localView = getView();
        if (localView != null)
        {
          if (localView.getParent() != null) {
            throw new IllegalStateException("DialogFragment can not be attached to a container view");
          }
          mDialog.setContentView(localView);
        }
        mDialog.setOwnerActivity(getActivity());
        mDialog.setCancelable(mCancelable);
        mDialog.setOnCancelListener(this);
        mDialog.setOnDismissListener(this);
      } while (paramBundle == null);
      paramBundle = paramBundle.getBundle("android:savedDialogState");
    } while (paramBundle == null);
    mDialog.onRestoreInstanceState(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!mShownByMe) {
      mDismissed = false;
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface) {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (mContainerId == 0) {}
    for (boolean bool = true;; bool = false)
    {
      mShowsDialog = bool;
      if (paramBundle != null)
      {
        mStyle = paramBundle.getInt("android:style", 0);
        mTheme = paramBundle.getInt("android:theme", 0);
        mCancelable = paramBundle.getBoolean("android:cancelable", true);
        mShowsDialog = paramBundle.getBoolean("android:showsDialog", mShowsDialog);
        mBackStackId = paramBundle.getInt("android:backStackId", -1);
      }
      return;
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    return new Dialog(getActivity(), getTheme());
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    if (mDialog != null)
    {
      mViewDestroyed = true;
      mDialog.dismiss();
      mDialog = null;
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    if ((!mShownByMe) && (!mDismissed)) {
      mDismissed = true;
    }
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (!mViewDestroyed) {
      dismissInternal(true);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (mDialog != null)
    {
      Bundle localBundle = mDialog.onSaveInstanceState();
      if (localBundle != null) {
        paramBundle.putBundle("android:savedDialogState", localBundle);
      }
    }
    if (mStyle != 0) {
      paramBundle.putInt("android:style", mStyle);
    }
    if (mTheme != 0) {
      paramBundle.putInt("android:theme", mTheme);
    }
    if (!mCancelable) {
      paramBundle.putBoolean("android:cancelable", mCancelable);
    }
    if (!mShowsDialog) {
      paramBundle.putBoolean("android:showsDialog", mShowsDialog);
    }
    if (mBackStackId != -1) {
      paramBundle.putInt("android:backStackId", mBackStackId);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (mDialog != null)
    {
      mViewDestroyed = false;
      mDialog.show();
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (mDialog != null) {
      mDialog.hide();
    }
  }
  
  public void setCancelable(boolean paramBoolean)
  {
    mCancelable = paramBoolean;
    if (mDialog != null) {
      mDialog.setCancelable(paramBoolean);
    }
  }
  
  public void setShowsDialog(boolean paramBoolean)
  {
    mShowsDialog = paramBoolean;
  }
  
  public void setStyle(int paramInt1, int paramInt2)
  {
    mStyle = paramInt1;
    if ((mStyle == 2) || (mStyle == 3)) {
      mTheme = 16973913;
    }
    if (paramInt2 != 0) {
      mTheme = paramInt2;
    }
  }
  
  public void setupDialog(Dialog paramDialog, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 3: 
      paramDialog.getWindow().addFlags(24);
    }
    paramDialog.requestWindowFeature(1);
  }
  
  public int show(az paramaz, String paramString)
  {
    mDismissed = false;
    mShownByMe = true;
    paramaz.a(this, paramString);
    mViewDestroyed = false;
    mBackStackId = paramaz.b();
    return mBackStackId;
  }
  
  public void show(aj paramaj, String paramString)
  {
    mDismissed = false;
    mShownByMe = true;
    paramaj = paramaj.a();
    paramaj.a(this, paramString);
    paramaj.b();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */