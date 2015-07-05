package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;

public class ct
{
  private cg a;
  private Context b;
  
  public ct(Context paramContext)
  {
    b = paramContext;
    a = new cg(b);
  }
  
  public ct a(int paramInt)
  {
    a.setTitle(paramInt);
    return this;
  }
  
  public ct a(int paramInt1, int paramInt2, DialogInterface.OnClickListener paramOnClickListener)
  {
    return a(b.getResources().getStringArray(paramInt1), paramInt2, paramOnClickListener);
  }
  
  public ct a(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str = b.getResources().getString(paramInt);
    a.setSingleButton(str, paramOnClickListener);
    return this;
  }
  
  public ct a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    a.setOnCancelListener(paramOnCancelListener);
    return this;
  }
  
  public ct a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    a.setOnDismissListener(paramOnDismissListener);
    return this;
  }
  
  public ct a(DialogInterface.OnKeyListener paramOnKeyListener)
  {
    a.setOnKeyListener(paramOnKeyListener);
    return this;
  }
  
  public ct a(View paramView)
  {
    a.setContentView(paramView);
    return this;
  }
  
  public ct a(CharSequence paramCharSequence)
  {
    a.setTitle(paramCharSequence);
    return this;
  }
  
  public ct a(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.setSingleButton(paramCharSequence, paramOnClickListener);
    return this;
  }
  
  public ct a(boolean paramBoolean)
  {
    a.setItemsEnable(paramBoolean);
    return this;
  }
  
  public ct a(Drawable[] paramArrayOfDrawable, CharSequence[] paramArrayOfCharSequence, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.setItems(paramArrayOfDrawable, paramArrayOfCharSequence, paramInt, paramOnClickListener);
    return this;
  }
  
  public ct a(CharSequence[] paramArrayOfCharSequence, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.setItems(paramArrayOfCharSequence, paramInt, paramOnClickListener);
    return this;
  }
  
  public void a()
  {
    a.requestInputMethod();
  }
  
  public cg b()
  {
    return a;
  }
  
  public ct b(int paramInt)
  {
    String str = b.getString(paramInt);
    a.setMessage(str);
    return this;
  }
  
  public ct b(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str = b.getResources().getString(paramInt);
    a.setConfirmButton(str, paramOnClickListener);
    return this;
  }
  
  public ct b(CharSequence paramCharSequence)
  {
    a.setMessage(paramCharSequence);
    return this;
  }
  
  public ct b(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.setConfirmButton(paramCharSequence, paramOnClickListener);
    return this;
  }
  
  public ct b(boolean paramBoolean)
  {
    a.setCancelable(paramBoolean);
    return this;
  }
  
  public cg c()
  {
    a.show();
    return a;
  }
  
  public ct c(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str = b.getResources().getString(paramInt);
    a.setCancelButton(str, paramOnClickListener);
    return this;
  }
  
  public ct c(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.setCancelButton(paramCharSequence, paramOnClickListener);
    return this;
  }
  
  public ct c(boolean paramBoolean)
  {
    a.setCanceledOnTouchOutside(paramBoolean);
    return this;
  }
  
  public ct d(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str = b.getResources().getString(paramInt);
    a.setLeftButton(str, paramOnClickListener);
    return this;
  }
  
  public ct d(boolean paramBoolean)
  {
    a.setSelectable(paramBoolean);
    return this;
  }
  
  public ct e(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str = b.getResources().getString(paramInt);
    a.setMiddleButton(str, paramOnClickListener);
    return this;
  }
  
  public ct f(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    String str = b.getResources().getString(paramInt);
    a.setRightButton(str, paramOnClickListener);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */