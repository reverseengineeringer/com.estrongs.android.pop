package android.support.a.a;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

class n
  extends q
{
  public n() {}
  
  public n(n paramn)
  {
    super(paramn);
  }
  
  private void a(TypedArray paramTypedArray)
  {
    String str = paramTypedArray.getString(0);
    if (str != null) {
      n = str;
    }
    paramTypedArray = paramTypedArray.getString(1);
    if (paramTypedArray != null) {
      m = f.a(paramTypedArray);
    }
  }
  
  public void a(Resources paramResources, AttributeSet paramAttributeSet, Resources.Theme paramTheme, XmlPullParser paramXmlPullParser)
  {
    if (!j.a(paramXmlPullParser, "pathData")) {
      return;
    }
    paramResources = k.b(paramResources, paramTheme, paramAttributeSet, a.d);
    a(paramResources);
    paramResources.recycle();
  }
  
  public boolean a()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.a.a.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */