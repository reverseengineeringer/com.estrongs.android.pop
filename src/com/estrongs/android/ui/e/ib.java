package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.Resources;
import android.view.Window;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bc;
import com.estrongs.fs.h;
import com.estrongs.fs.w;
import java.io.File;
import java.text.MessageFormat;

public class ib
{
  private static void a(Context paramContext, h paramh, boolean paramBoolean, String paramString)
  {
    String str1;
    if (paramString != null)
    {
      str1 = paramString;
      if (!"".equals(paramString)) {}
    }
    else
    {
      str1 = paramh.getName();
    }
    try
    {
      String str2 = paramh.getAbsolutePath();
      paramString = str2;
      if (paramh.getFileType().a()) {
        paramString = ap.bW(str2);
      }
      bc.a(str1, ap.G(paramString));
      if (paramBoolean)
      {
        ak.a(paramContext, MessageFormat.format(paramContext.getString(2131232276), new Object[] { str1 }), 1);
        return;
      }
      ak.a(paramContext, MessageFormat.format(paramContext.getString(2131231734), new Object[] { str1 }), 1);
      return;
    }
    catch (Exception paramh)
    {
      paramh.printStackTrace();
      if (paramBoolean)
      {
        ak.a(paramContext, paramContext.getString(2131231901), 1);
        return;
      }
      ak.a(paramContext, MessageFormat.format(paramContext.getString(2131231736), new Object[] { str1 }) + " " + paramh.getMessage(), 1);
    }
  }
  
  private static void a(Context paramContext, File paramFile1, File paramFile2, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    ci localci = new ci(paramContext);
    localci.setTitle(2131231721);
    localci.setMessage(MessageFormat.format(paramContext.getString(2131231735), new Object[] { paramFile2.getName() }));
    localci.setConfirmButton(paramContext.getString(2131231270), new ic(paramContext, paramFile1, paramFile2, localci));
    localci.setCancelButton(paramContext.getString(2131231265), new id(localci));
    localci.setOnDismissListener(paramOnDismissListener);
    localci.show();
  }
  
  public static void a(Context paramContext, String paramString, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    int i = g.a(paramContext, 10.0F);
    localLinearLayout.setPadding(i, i, i, i);
    EditText localEditText = new EditText(paramContext);
    localEditText.setBackgroundDrawable(at.a(paramContext).b(2130838299));
    localEditText.setTextColor(paramContext.getResources().getColor(2131558467));
    localEditText.setTextSize(1, 18.0F);
    localEditText.setText(paramString);
    localEditText.setSingleLine(true);
    localEditText.setSelectAllOnFocus(true);
    i = (int)paramContext.getResources().getDimension(2131165559);
    localEditText.setPadding(i, 0, i, 0);
    localLinearLayout.addView(localEditText, new LinearLayout.LayoutParams(-1, -2));
    paramContext = new cv(paramContext).a(2131230881).a(localLinearLayout).b(2131231270, new ih(paramContext, paramString, localEditText, paramOnDismissListener)).c(2131231265, new ig());
    if (paramOnDismissListener != null) {
      paramContext.a(paramOnDismissListener);
    }
    paramContext = paramContext.b();
    paramString = paramContext.getWindow();
    if (paramString != null) {
      paramString.setSoftInputMode(5);
    }
    paramContext.show();
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, h paramh)
  {
    paramString1 = new LinearLayout(paramContext);
    int i = g.a(paramContext, 10.0F);
    paramString1.setPadding(i, i, i, i);
    EditText localEditText = new EditText(paramContext);
    localEditText.setBackgroundDrawable(at.a(paramContext).b(2130838299));
    localEditText.setTextColor(paramContext.getResources().getColor(2131558501));
    localEditText.setTextSize(1, 18.0F);
    localEditText.setText(paramString2);
    localEditText.setSingleLine(true);
    localEditText.setSelectAllOnFocus(true);
    i = (int)paramContext.getResources().getDimension(2131165559);
    localEditText.setPadding(0, 0, i, i);
    paramString1.addView(localEditText, new LinearLayout.LayoutParams(-1, -2));
    if ((paramh != null) && (!ap.bo(paramh.getAbsolutePath())))
    {
      paramContext = new cv(paramContext).a(2131231280).a(paramString1).b(2131231270, new ij(paramContext, paramh, localEditText)).c(2131231265, new ii()).b();
      paramString1 = paramContext.getWindow();
      if (paramString1 != null) {
        paramString1.setSoftInputMode(5);
      }
      paramContext.show();
      return;
    }
    ak.a(paramContext, "Can't create bookmake at this position !", 1);
  }
  
  public static boolean a(String paramString)
  {
    char[] arrayOfChar = new char[8];
    char[] tmp6_5 = arrayOfChar;
    tmp6_5[0] = 42;
    char[] tmp12_6 = tmp6_5;
    tmp12_6[1] = 34;
    char[] tmp18_12 = tmp12_6;
    tmp18_12[2] = 63;
    char[] tmp24_18 = tmp18_12;
    tmp24_18[3] = 60;
    char[] tmp30_24 = tmp24_18;
    tmp30_24[4] = 62;
    char[] tmp36_30 = tmp30_24;
    tmp36_30[5] = 124;
    char[] tmp42_36 = tmp36_30;
    tmp42_36[6] = 92;
    char[] tmp49_42 = tmp42_36;
    tmp49_42[7] = 47;
    tmp49_42;
    int j = arrayOfChar.length;
    int i = 0;
    while (i < j)
    {
      if (paramString.indexOf(arrayOfChar[i]) >= 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private static void b(Context paramContext, h paramh, String paramString)
  {
    a(paramContext, paramh, false, paramString);
  }
  
  private static void b(Context paramContext, h paramh, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    String str;
    if (paramString != null)
    {
      str = paramString;
      if (!"".equals(paramString)) {}
    }
    else
    {
      str = paramh.getName();
    }
    if (!a(str))
    {
      ak.a(paramContext, paramContext.getString(2131231764), 1);
      return;
    }
    paramString = new File(bc.c(), str);
    if (paramString.exists())
    {
      int i;
      try
      {
        ShortcutFormat localShortcutFormat = bc.a(paramString);
        paramString = paramh.getAbsolutePath();
        if (paramh.getFileType().a()) {
          paramString = ap.bW(paramh.getAbsolutePath());
        }
        boolean bool = ap.G(paramString).equals(targetLocation);
        if (!bool) {
          break label216;
        }
        i = 1;
      }
      catch (Exception paramString)
      {
        for (;;)
        {
          paramString.printStackTrace();
          i = 0;
        }
      }
      if (i != 0)
      {
        paramString = new ci(paramContext);
        paramString.setTitle(2131231721);
        paramString.setMessage(MessageFormat.format(paramContext.getString(2131231735), new Object[] { str }));
        paramString.setConfirmButton(paramContext.getString(2131231270), new ie(paramString, paramContext, paramh, str));
        paramString.setCancelButton(paramContext.getString(2131231265), new if(paramString));
        paramString.show();
        return;
      }
      label216:
      if (paramBoolean2) {}
      try
      {
        i = Integer.parseInt(String.valueOf(str.charAt(str.length() - 2)));
        for (paramString = str.substring(0, str.length() - 3) + "(" + (i + 1) + ")";; paramString = str + "(2)")
        {
          b(paramContext, paramh, paramString, paramBoolean1, true);
          return;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          paramString = str + "(2)";
          localException.printStackTrace();
        }
      }
    }
    a(paramContext, paramh, paramBoolean1, str);
  }
  
  private static void b(Context paramContext, File paramFile1, File paramFile2)
  {
    try
    {
      ShortcutFormat localShortcutFormat = bc.a(paramFile1);
      String str = paramFile2.getAbsolutePath();
      if (paramFile2.exists()) {
        paramFile2.delete();
      }
      paramFile1.delete();
      shortcutName = paramFile2.getName();
      bc.a(localShortcutFormat, new File(str));
      ak.a(paramContext, MessageFormat.format(paramContext.getString(2131232276), new Object[] { paramFile2.getName() }), 1);
      return;
    }
    catch (Exception paramFile1)
    {
      ak.a(paramContext, paramContext.getString(2131231901), 1);
    }
  }
  
  private static void b(Context paramContext, String paramString1, String paramString2, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    paramString1 = new File(a.n, paramString1);
    if (!a(paramString2))
    {
      ak.a(paramContext, paramContext.getString(2131231764), 1);
      return;
    }
    if (paramString1.exists())
    {
      paramString2 = new File(a.n, paramString2);
      if (paramString2.exists())
      {
        if (paramString2.getAbsolutePath().equals(paramString1.getAbsolutePath()))
        {
          ak.a(paramContext, paramContext.getString(2131231901), 1);
          return;
        }
        a(paramContext, paramString1, paramString2, paramOnDismissListener);
        return;
      }
      b(paramContext, paramString1, paramString2);
      return;
    }
    ak.a(paramContext, paramContext.getString(2131231901), 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */