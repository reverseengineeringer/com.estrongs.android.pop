package com.estrongs.android.pop.app.editor;

import android.widget.SeekBar;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.e;
import com.estrongs.android.util.f;

class m
  implements e
{
  m(l paraml) {}
  
  public void a(String paramString1, String paramString2, int paramInt)
  {
    if (PopNoteEditor.t(a.a) == null) {
      PopNoteEditor.a(a.a, f.a());
    }
    if (f.a[0].equalsIgnoreCase(paramString1))
    {
      new ak(a.a, 0, true).start();
      PopNoteEditor.u(a.a).setProgress(0);
    }
    for (;;)
    {
      return;
      if (!PopNoteEditor.t(a.a).equals(paramString1)) {}
      while ((paramString1 != null) && (!PopNoteEditor.t(a.a).equals(paramString1)))
      {
        PopNoteEditor.a(a.a, paramString1);
        ad.a(a.a).v(PopNoteEditor.t(a.a));
        new ak(a.a, 0, false).start();
        PopNoteEditor.u(a.a).setProgress(0);
        return;
        paramString1 = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */