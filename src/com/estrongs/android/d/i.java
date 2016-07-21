package com.estrongs.android.d;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.text.DateFormat;

public class i
  extends ci
{
  public static int a = 0;
  public static int b = 1;
  public static int c = 2;
  public static int d = 3;
  public static int e = 4;
  private View f;
  private int g = b;
  private p h = null;
  private CheckBox i;
  private boolean j = false;
  
  public i(Context paramContext, h paramh1, h paramh2, p paramp, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    super(paramContext);
    h = paramp;
    f = com.estrongs.android.pop.esclasses.k.a(paramContext).inflate(2130903223, null);
    setContentView(f);
    a(f.findViewById(2131624823), paramContext.getString(2131232361) + paramContext.getString(2131231222));
    a(f.findViewById(2131624829), paramContext.getString(2131231324) + paramContext.getString(2131231222));
    i = ((CheckBox)f.findViewById(2131624822));
    if (!paramBoolean1) {
      i.setVisibility(8);
    }
    if (paramBoolean2)
    {
      setRightButton(paramContext.getText(2131231721), new j(this));
      if (paramBoolean3)
      {
        setMiddleButton(paramContext.getText(2131231909), new k(this));
        setLeftButton(paramContext.getText(2131231272), new m(this));
      }
    }
    for (;;)
    {
      a(paramh1, paramh2);
      setCancelable(false);
      return;
      setMiddleButton(paramContext.getText(2131230881), new l(this));
      break;
      setConfirmButton(paramContext.getText(2131231721), new n(this));
      setCancelButton(paramContext.getText(2131231272), new o(this));
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
    g = b;
    long l = paramh1.lastModified() - paramh2.lastModified();
    DateFormat localDateFormat = ad.a(mContext).F();
    String str1 = paramh1.getPath();
    String str2 = paramh2.getPath();
    if (ap.aJ(str1))
    {
      str1 = ap.cc(str1);
      if (!ap.aJ(str2)) {
        break label291;
      }
    }
    label291:
    for (str2 = ap.cc(str2);; str2 = ap.G(str2))
    {
      String str3 = mContext.getString(2131231476, new Object[] { paramh1.getName() });
      a(f.findViewById(2131624200), str3);
      a(f.findViewById(2131624824), str1);
      a(f.findViewById(2131624826), com.estrongs.fs.util.j.c(paramh1.length()));
      a(f.findViewById(2131624830), str2);
      a(f.findViewById(2131624832), com.estrongs.fs.util.j.c(paramh2.length()));
      if (l <= 0L) {
        break label301;
      }
      a(f.findViewById(2131624828), localDateFormat.format(Long.valueOf(paramh1.lastModified())) + "(" + mContext.getString(2131231486) + ")");
      a(f.findViewById(2131624834), localDateFormat.format(Long.valueOf(paramh2.lastModified())));
      return;
      str1 = ap.G(str1);
      break;
    }
    label301:
    if (l < 0L)
    {
      a(f.findViewById(2131624828), localDateFormat.format(Long.valueOf(paramh1.lastModified())));
      a(f.findViewById(2131624834), localDateFormat.format(Long.valueOf(paramh1.lastModified())) + "(" + mContext.getString(2131231486) + ")");
      return;
    }
    a(f.findViewById(2131624828), localDateFormat.format(Long.valueOf(paramh1.lastModified())));
    a(f.findViewById(2131624834), localDateFormat.format(Long.valueOf(paramh1.lastModified())));
  }
  
  public void dismiss()
  {
    if (!j) {
      g = a;
    }
    h.a(g, i.isChecked());
    super.dismiss();
  }
  
  public void setMessage(CharSequence paramCharSequence)
  {
    a(f.findViewById(2131624200), paramCharSequence.toString());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.d.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */