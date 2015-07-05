package com.estrongs.android.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.util.am;
import com.estrongs.fs.h;
import java.text.DateFormat;

public class i
  extends cg
{
  public static int a = 1;
  public static int b = 2;
  public static int c = 3;
  public static int d = 4;
  private View e;
  private int f = a;
  private p g = null;
  private CheckBox h;
  
  public i(Context paramContext, h paramh1, h paramh2, p paramp, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    super(paramContext);
    g = paramp;
    e = g.a(paramContext).inflate(2130903124, null);
    setContentView(e);
    a(e.findViewById(2131362230), paramContext.getString(2131428277) + paramContext.getString(2131428707));
    a(e.findViewById(2131362236), paramContext.getString(2131428278) + paramContext.getString(2131428707));
    h = ((CheckBox)e.findViewById(2131362229));
    if (!paramBoolean1) {
      h.setVisibility(8);
    }
    if (paramBoolean2)
    {
      setRightButton(paramContext.getText(2131427401), new j(this));
      if (paramBoolean3)
      {
        setMiddleButton(paramContext.getText(2131428010), new k(this));
        setLeftButton(paramContext.getText(2131428268), new m(this));
      }
    }
    for (;;)
    {
      a(paramh1, paramh2);
      setCancelable(false);
      return;
      setMiddleButton(paramContext.getText(2131427355), new l(this));
      break;
      setConfirmButton(paramContext.getText(2131427401), new n(this));
      setCancelButton(paramContext.getText(2131428268), new o(this));
    }
  }
  
  public static void a(View paramView, String paramString)
  {
    if (paramView == null) {}
    while (!(paramView instanceof TextView)) {
      return;
    }
    ((TextView)paramView).setText(paramString);
  }
  
  public void a(h paramh1, h paramh2)
  {
    f = a;
    long l = paramh1.lastModified() - paramh2.lastModified();
    DateFormat localDateFormat = ad.a(mContext).E();
    String str1 = paramh1.getPath();
    String str2 = paramh2.getPath();
    if (am.az(str1))
    {
      str1 = am.bL(str1);
      if (!am.az(str2)) {
        break label291;
      }
    }
    label291:
    for (str2 = am.bL(str2);; str2 = am.E(str2))
    {
      String str3 = mContext.getString(2131428092, new Object[] { paramh1.getName() });
      a(e.findViewById(2131361822), str3);
      a(e.findViewById(2131362231), str1);
      a(e.findViewById(2131362233), com.estrongs.fs.util.j.c(paramh1.length()));
      a(e.findViewById(2131362237), str2);
      a(e.findViewById(2131362239), com.estrongs.fs.util.j.c(paramh2.length()));
      if (l <= 0L) {
        break label301;
      }
      a(e.findViewById(2131362235), localDateFormat.format(Long.valueOf(paramh1.lastModified())) + "(" + mContext.getString(2131428279) + ")");
      a(e.findViewById(2131362241), localDateFormat.format(Long.valueOf(paramh2.lastModified())));
      return;
      str1 = am.E(str1);
      break;
    }
    label301:
    if (l < 0L)
    {
      a(e.findViewById(2131362235), localDateFormat.format(Long.valueOf(paramh1.lastModified())));
      a(e.findViewById(2131362241), localDateFormat.format(Long.valueOf(paramh1.lastModified())) + "(" + mContext.getString(2131428279) + ")");
      return;
    }
    a(e.findViewById(2131362235), localDateFormat.format(Long.valueOf(paramh1.lastModified())));
    a(e.findViewById(2131362241), localDateFormat.format(Long.valueOf(paramh1.lastModified())));
  }
  
  public void dismiss()
  {
    g.a(f, h.isChecked());
    super.dismiss();
  }
  
  public void setMessage(CharSequence paramCharSequence)
  {
    a(e.findViewById(2131361822), paramCharSequence.toString());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */