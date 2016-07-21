package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;

public class cv
{
  public ci a;
  private Context b;
  
  public cv(Context paramContext)
  {
    b = paramContext;
    a = new ci(b);
  }
  
  public cv a(int paramInt)
  {
    a.setTitle(paramInt);
    return this;
  }
  
  public cv a(int paramInt1, int paramInt2, DialogInterface.OnClickListener paramOnClickListener)
  {
    return a(b.getResources().getStringArray(paramInt1), paramInt2, paramOnClickListener);
  }
  
  public cv a(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str = b.getResources().getString(paramInt);
    a.setSingleButton(str, paramOnClickListener);
    return this;
  }
  
  public cv a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    a.setOnCancelListener(paramOnCancelListener);
    return this;
  }
  
  public cv a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    a.setOnDismissListener(paramOnDismissListener);
    return this;
  }
  
  public cv a(DialogInterface.OnKeyListener paramOnKeyListener)
  {
    a.setOnKeyListener(paramOnKeyListener);
    return this;
  }
  
  public cv a(View paramView)
  {
    a.setContentView(paramView);
    return this;
  }
  
  public cv a(CharSequence paramCharSequence)
  {
    a.setTitle(paramCharSequence);
    return this;
  }
  
  public cv a(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.setSingleButton(paramCharSequence, paramOnClickListener);
    return this;
  }
  
  public cv a(boolean paramBoolean)
  {
    a.setItemsEnable(paramBoolean);
    return this;
  }
  
  public cv a(Drawable[] paramArrayOfDrawable, CharSequence[] paramArrayOfCharSequence, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.setItems(paramArrayOfDrawable, paramArrayOfCharSequence, paramInt, paramOnClickListener);
    return this;
  }
  
  public cv a(CharSequence[] paramArrayOfCharSequence, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.setItems(paramArrayOfCharSequence, paramInt, paramOnClickListener);
    return this;
  }
  
  public void a()
  {
    a.requestInputMethod();
  }
  
  public ci b()
  {
    return a;
  }
  
  public cv b(int paramInt)
  {
    String str = b.getString(paramInt);
    a.setMessage(str);
    return this;
  }
  
  public cv b(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str = b.getResources().getString(paramInt);
    a.setConfirmButton(str, paramOnClickListener);
    return this;
  }
  
  public cv b(CharSequence paramCharSequence)
  {
    a.setMessage(paramCharSequence);
    return this;
  }
  
  public cv b(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.setConfirmButton(paramCharSequence, paramOnClickListener);
    return this;
  }
  
  public cv b(boolean paramBoolean)
  {
    a.setCancelable(paramBoolean);
    if (!paramBoolean) {
      a.setCanceledOnTouchOutside(false);
    }
    return this;
  }
  
  public ci c()
  {
    a.show();
    return a;
  }
  
  public cv c(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str = b.getResources().getString(paramInt);
    a.setCancelButton(str, paramOnClickListener);
    return this;
  }
  
  public cv c(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.setCancelButton(paramCharSequence, paramOnClickListener);
    return this;
  }
  
  public cv c(boolean paramBoolean)
  {
    a.setCanceledOnTouchOutside(paramBoolean);
    return this;
  }
  
  public cv d(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str = b.getResources().getString(paramInt);
    a.setLeftButton(str, paramOnClickListener);
    return this;
  }
  
  public cv d(boolean paramBoolean)
  {
    a.setSelectable(paramBoolean);
    return this;
  }
  
  public cv e(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str = b.getResources().getString(paramInt);
    a.setMiddleButton(str, paramOnClickListener);
    return this;
  }
  
  public cv f(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str = b.getResources().getString(paramInt);
    a.setRightButton(str, paramOnClickListener);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */