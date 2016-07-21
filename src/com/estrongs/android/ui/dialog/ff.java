package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bc;
import java.io.File;
import java.text.MessageFormat;

public class ff
{
  private Context a;
  private ci b;
  private View c;
  private EditText d;
  private boolean e;
  private String f;
  private String g;
  
  public ff(Context paramContext, boolean paramBoolean)
  {
    a = paramContext;
    e = paramBoolean;
    b();
  }
  
  public ff(Context paramContext, boolean paramBoolean, String paramString1, String paramString2)
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
      bc.a(paramString2, ap.G(paramString1));
      if (paramBoolean)
      {
        ak.a(paramContext, MessageFormat.format(paramContext.getString(2131232276), new Object[] { paramString2 }), 1);
        return;
      }
      ak.a(paramContext, MessageFormat.format(paramContext.getString(2131231734), new Object[] { paramString2 }), 1);
      return;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      if (paramBoolean)
      {
        ak.a(paramContext, paramContext.getString(2131231901), 1);
        return;
      }
      ak.a(paramContext, MessageFormat.format(paramContext.getString(2131231736), new Object[] { paramString2 }) + " " + paramString1.getMessage(), 1);
    }
  }
  
  private void b()
  {
    c = k.a(a).inflate(2130903074, null);
    int i;
    if (e)
    {
      i = 2131231270;
      if (!e) {
        break label158;
      }
    }
    label158:
    for (int j = 2131230848;; j = 2131231280)
    {
      if (f != null) {
        ((EditText)c.findViewById(2131624134)).setText(f);
      }
      if (g != null)
      {
        d = ((EditText)c.findViewById(2131624136));
        d.setText(g);
      }
      b = new cv(a).a(j).a(c).b(i, new fh(this)).c(2131231265, new fg(this)).b();
      return;
      i = 2131230824;
      break;
    }
  }
  
  private static void b(Context paramContext, File paramFile1, File paramFile2, String paramString)
  {
    try
    {
      ShortcutFormat localShortcutFormat = bc.a(paramFile1);
      targetLocation = paramString;
      paramString = paramFile2.getAbsolutePath();
      if (paramFile2.exists()) {
        paramFile2.delete();
      }
      paramFile1.delete();
      shortcutName = paramFile2.getName();
      bc.a(localShortcutFormat, new File(paramString));
      ak.a(paramContext, MessageFormat.format(paramContext.getString(2131232276), new Object[] { paramFile2.getName() }), 1);
      return;
    }
    catch (Exception paramFile1)
    {
      ak.a(paramContext, paramContext.getString(2131231901), 1);
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
 * Qualified Name:     com.estrongs.android.ui.dialog.ff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */