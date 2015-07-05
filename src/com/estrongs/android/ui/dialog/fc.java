package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.util.ay;
import java.io.File;
import java.text.MessageFormat;

public class fc
{
  private Context a;
  private cg b;
  private View c;
  private EditText d;
  private boolean e;
  private String f;
  private String g;
  
  public fc(Context paramContext, boolean paramBoolean)
  {
    a = paramContext;
    e = paramBoolean;
    b();
  }
  
  public fc(Context paramContext, boolean paramBoolean, String paramString1, String paramString2)
  {
    a = paramContext;
    e = paramBoolean;
    f = paramString2;
    g = paramString1;
    b();
  }
  
  public static void a(Context paramContext, String paramString1, boolean paramBoolean, String paramString2)
  {
    try
    {
      ay.a(paramString2, am.E(paramString1));
      if (paramBoolean)
      {
        ag.a(paramContext, MessageFormat.format(paramContext.getString(2131427780), new Object[] { paramString2 }), 1);
        return;
      }
      ag.a(paramContext, MessageFormat.format(paramContext.getString(2131427924), new Object[] { paramString2 }), 1);
      return;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      if (paramBoolean)
      {
        ag.a(paramContext, paramContext.getString(2131427766), 1);
        return;
      }
      ag.a(paramContext, MessageFormat.format(paramContext.getString(2131427925), new Object[] { paramString2 }) + " " + paramString1.getMessage(), 1);
    }
  }
  
  private void b()
  {
    c = g.a(a).inflate(2130903040, null);
    int i;
    if (e)
    {
      i = 2131427339;
      if (!e) {
        break label158;
      }
    }
    label158:
    for (int j = 2131427373;; j = 2131428024)
    {
      if (f != null) {
        ((EditText)c.findViewById(2131361807)).setText(f);
      }
      if (g != null)
      {
        d = ((EditText)c.findViewById(2131361809));
        d.setText(g);
      }
      b = new ct(a).a(j).a(c).b(i, new fe(this)).c(2131427340, new fd(this)).b();
      return;
      i = 2131428438;
      break;
    }
  }
  
  private static void b(Context paramContext, File paramFile1, File paramFile2, String paramString)
  {
    try
    {
      ShortcutFormat localShortcutFormat = ay.a(paramFile1);
      targetLocation = paramString;
      paramString = paramFile2.getAbsolutePath();
      if (paramFile2.exists()) {
        paramFile2.delete();
      }
      paramFile1.delete();
      shortcutName = paramFile2.getName();
      ay.a(localShortcutFormat, new File(paramString));
      ag.a(paramContext, MessageFormat.format(paramContext.getString(2131427780), new Object[] { paramFile2.getName() }), 1);
      return;
    }
    catch (Exception paramFile1)
    {
      ag.a(paramContext, paramContext.getString(2131427766), 1);
    }
  }
  
  public void a()
  {
    if (b != null)
    {
      if (d != null)
      {
        d.setSelectAllOnFocus(true);
        d.requestFocus();
      }
      Window localWindow = b.getWindow();
      if (localWindow != null) {
        localWindow.setSoftInputMode(5);
      }
      b.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.fc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */