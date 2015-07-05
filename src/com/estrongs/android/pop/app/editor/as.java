package com.estrongs.android.pop.app.editor;

import android.content.Context;
import android.content.res.Resources;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;

public class as
{
  private Context a;
  private aw b;
  private cg c = null;
  private int d = 0;
  private int e = d;
  
  public as(Context paramContext, int paramInt, aw paramaw)
  {
    a = paramContext;
    b = paramaw;
    d = paramInt;
    e = paramInt;
  }
  
  public static int a(char[] paramArrayOfChar)
  {
    int j = 0;
    if (paramArrayOfChar == null) {
      return 1;
    }
    int i = 0;
    if (i < paramArrayOfChar.length) {
      if ((paramArrayOfChar[i] == '\r') && (paramArrayOfChar[(i + 1)] == '\n')) {
        i = j;
      }
    }
    for (;;)
    {
      return i;
      if ((paramArrayOfChar[i] == '\r') && (paramArrayOfChar[(i + 1)] != '\n'))
      {
        i = 2;
      }
      else if (paramArrayOfChar[i] == '\n')
      {
        i = 1;
      }
      else
      {
        i += 1;
        break;
        i = 1;
      }
    }
  }
  
  public static String a(int paramInt)
  {
    if (paramInt == 0) {
      return "\r\n";
    }
    if (paramInt == 2) {
      return "\r";
    }
    return "\n";
  }
  
  public void a()
  {
    if (c == null)
    {
      String[] arrayOfString = a.getResources().getStringArray(2131165197);
      c = new ct(a).a(2131428102).a(arrayOfString, e, new av(this)).b(2131427339, new au(this)).c(2131427340, new at(this)).c();
      return;
    }
    c.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */