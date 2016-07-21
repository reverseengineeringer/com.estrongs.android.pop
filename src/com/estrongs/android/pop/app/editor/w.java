package com.estrongs.android.pop.app.editor;

import android.widget.SeekBar;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.d;
import com.estrongs.android.util.e;

class w
  implements d
{
  w(PopNoteEditor paramPopNoteEditor) {}
  
  public void a(String paramString1, String paramString2, int paramInt)
  {
    if (PopNoteEditor.m(a) == null) {
      PopNoteEditor.a(a, e.a());
    }
    if (e.a[0].equalsIgnoreCase(paramString1))
    {
      new ac(a, 0, true).start();
      PopNoteEditor.n(a).setProgress(0);
    }
    for (;;)
    {
      return;
      if (!PopNoteEditor.m(a).equals(paramString1)) {}
      while ((paramString1 != null) && (!PopNoteEditor.m(a).equals(paramString1)))
      {
        PopNoteEditor.a(a, paramString1);
        ad.a(a).v(PopNoteEditor.m(a));
        new ac(a, 0, false).start();
        PopNoteEditor.n(a).setProgress(0);
        return;
        paramString1 = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */