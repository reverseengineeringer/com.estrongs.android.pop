package com.estrongs.android.view;

import android.app.Activity;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.c.b;
import java.io.File;
import java.util.Stack;

public class a
  extends cr
{
  public a(Activity paramActivity, com.estrongs.fs.util.a.a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  public void a(int paramInt)
  {
    super.a(7);
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    super.a(paramh, paramTypedMap);
  }
  
  public h j()
  {
    if ((D != null) && (ap.bo(D.getAbsolutePath()))) {
      return null;
    }
    Object localObject;
    label33:
    String str;
    if (D == null)
    {
      localObject = null;
      if (localObject == null) {
        break label90;
      }
      if (D != null) {
        break label92;
      }
      str = null;
      label46:
      if (str == null) {
        break label106;
      }
      if (!ap.bt(str)) {
        break label108;
      }
      localObject = (h)T.get(0);
    }
    for (;;)
    {
      c((h)localObject);
      return (h)localObject;
      localObject = ap.bB(D.getAbsolutePath());
      break label33;
      label90:
      break;
      label92:
      str = ap.bB(D.getPath());
      break label46;
      label106:
      break;
      label108:
      localObject = new b(new File((String)localObject));
      ((b)localObject).a(str);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */