package com.estrongs.android.pop.app.editor;

import android.content.Context;
import android.content.res.Resources;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;

public class ak
{
  private Context a;
  private ao b;
  private ci c = null;
  private int d = 0;
  private int e = d;
  
  public ak(Context paramContext, int paramInt, ao paramao)
  {
    a = paramContext;
    b = paramao;
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
      String[] arrayOfString = a.getResources().getStringArray(2131492868);
      c = new cv(a).a(2131231640).a(arrayOfString, e, new an(this)).b(2131231270, new am(this)).c(2131231265, new al(this)).c();
      return;
    }
    c.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */