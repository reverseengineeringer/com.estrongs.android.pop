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
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.theme.al;

public class CustomEditTextPreference
  extends EditTextPreference
{
  private cg a;
  private EditText b;
  private al c;
  
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
    c = al.a(paramContext);
    b = new EditText(paramContext, paramAttributeSet);
    b.setId(16908291);
    b.setEnabled(true);
    b.setBackgroundResource(2130837972);
    b.setTextColor(c.d(2131230738));
    b.setSelectAllOnFocus(true);
    paramInt = (int)paramContext.getResources().getDimension(2131296256);
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
    paramView = (ViewGroup)paramView.findViewById(2131362064);
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
    return g.a(getContext()).inflate(2130903086, null);
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
    Object localObject = new ct(getContext()).a(getDialogTitle()).b(getPositiveButtonText(), this).c(getNegativeButtonText(), this);
    View localView = onCreateDialogView();
    if (localView != null)
    {
      onBindDialogView(localView);
      ((ct)localObject).a(localView);
    }
    for (;;)
    {
      localObject = ((ct)localObject).b();
      a = ((cg)localObject);
      if (paramBundle != null) {
        ((cg)localObject).onRestoreInstanceState(paramBundle);
      }
      if (a()) {
        ((cg)localObject).requestInputMethod();
      }
      ((cg)localObject).setOnDismissListener(this);
      b.requestFocus();
      ((cg)localObject).show();
      return;
      ((ct)localObject).b(getDialogMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.CustomEditTextPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */