package com.estrongs.android.ui.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.EditText;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.theme.at;

public class CustomEditTextPreference
  extends EditTextPreference
{
  private ci a;
  private EditText b;
  private at c;
  
  public CustomEditTextPreference(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CustomEditTextPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842898);
  }
  
  public CustomEditTextPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    c = at.a(paramContext);
    b = new EditText(paramContext, paramAttributeSet);
    b.setId(16908291);
    b.setEnabled(true);
    b.setBackgroundResource(2130838299);
    b.setTextColor(c.c(2131558661));
    b.setSelectAllOnFocus(true);
    paramInt = (int)paramContext.getResources().getDimension(2131165559);
    b.setPadding(paramInt, 0, paramInt, 0);
  }
  
  protected boolean a()
  {
    return true;
  }
  
  public Dialog getDialog()
  {
    return a;
  }
  
  public EditText getEditText()
  {
    return b;
  }
  
  protected void onAddEditTextToDialogView(View paramView, EditText paramEditText)
  {
    paramView = (ViewGroup)paramView.findViewById(2131624609);
    if (paramView != null) {
      paramView.addView(paramEditText, -1, -2);
    }
  }
  
  protected void onBindDialogView(View paramView)
  {
    EditText localEditText = b;
    localEditText.setText(getText());
    ViewParent localViewParent = localEditText.getParent();
    if (localViewParent != paramView)
    {
      if (localViewParent != null) {
        ((ViewGroup)localViewParent).removeView(localEditText);
      }
      onAddEditTextToDialogView(paramView, localEditText);
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    super.onClick(paramDialogInterface, paramInt);
    paramDialogInterface.dismiss();
  }
  
  protected View onCreateDialogView()
  {
    return k.a(getContext()).inflate(2130903161, null);
  }
  
  protected void onDialogClosed(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      String str = b.getText().toString();
      if (callChangeListener(str)) {
        setText(str);
      }
    }
  }
  
  protected void showDialog(Bundle paramBundle)
  {
    Object localObject = new cv(getContext()).a(getDialogTitle()).b(getPositiveButtonText(), this).c(getNegativeButtonText(), this);
    View localView = onCreateDialogView();
    if (localView != null)
    {
      onBindDialogView(localView);
      ((cv)localObject).a(localView);
    }
    for (;;)
    {
      localObject = ((cv)localObject).b();
      a = ((ci)localObject);
      if (paramBundle != null) {
        ((ci)localObject).onRestoreInstanceState(paramBundle);
      }
      if (a()) {
        ((ci)localObject).requestInputMethod();
      }
      ((ci)localObject).setOnDismissListener(this);
      b.requestFocus();
      ((ci)localObject).show();
      return;
      ((cv)localObject).b(getDialogMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.CustomEditTextPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */