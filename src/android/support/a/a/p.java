package android.support.a.a;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.util.AttributeSet;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

class p
{
  final ArrayList<Object> a = new ArrayList();
  private final Matrix b = new Matrix();
  private float c = 0.0F;
  private float d = 0.0F;
  private float e = 0.0F;
  private float f = 1.0F;
  private float g = 1.0F;
  private float h = 0.0F;
  private float i = 0.0F;
  private final Matrix j = new Matrix();
  private int k;
  private int[] l;
  private String m = null;
  
  public p() {}
  
  public p(p paramp, android.support.v4.e.a<String, Object> parama)
  {
    c = c;
    d = d;
    e = e;
    f = f;
    g = g;
    h = h;
    i = i;
    l = l;
    m = m;
    k = k;
    if (m != null) {
      parama.put(m, this);
    }
    j.set(j);
    ArrayList localArrayList = a;
    int n = 0;
    while (n < localArrayList.size())
    {
      paramp = localArrayList.get(n);
      if ((paramp instanceof p))
      {
        paramp = (p)paramp;
        a.add(new p(paramp, parama));
        n += 1;
      }
      else
      {
        if ((paramp instanceof o)) {}
        for (paramp = new o((o)paramp);; paramp = new n((n)paramp))
        {
          a.add(paramp);
          if (n == null) {
            break;
          }
          parama.put(n, paramp);
          break;
          if (!(paramp instanceof n)) {
            break label315;
          }
        }
        label315:
        throw new IllegalStateException("Unknown object in the tree!");
      }
    }
  }
  
  private void a(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser)
  {
    l = null;
    c = j.a(paramTypedArray, paramXmlPullParser, "rotation", 5, c);
    d = paramTypedArray.getFloat(1, d);
    e = paramTypedArray.getFloat(2, e);
    f = j.a(paramTypedArray, paramXmlPullParser, "scaleX", 3, f);
    g = j.a(paramTypedArray, paramXmlPullParser, "scaleY", 4, g);
    h = j.a(paramTypedArray, paramXmlPullParser, "translateX", 6, h);
    i = j.a(paramTypedArray, paramXmlPullParser, "translateY", 7, i);
    paramTypedArray = paramTypedArray.getString(0);
    if (paramTypedArray != null) {
      m = paramTypedArray;
    }
    b();
  }
  
  private void b()
  {
    j.reset();
    j.postTranslate(-d, -e);
    j.postScale(f, g);
    j.postRotate(c, 0.0F, 0.0F);
    j.postTranslate(h + d, i + e);
  }
  
  public String a()
  {
    return m;
  }
  
  public void a(Resources paramResources, AttributeSet paramAttributeSet, Resources.Theme paramTheme, XmlPullParser paramXmlPullParser)
  {
    paramResources = k.b(paramResources, paramTheme, paramAttributeSet, a.b);
    a(paramResources, paramXmlPullParser);
    paramResources.recycle();
  }
}

/* Location:
 * Qualified Name:     android.support.a.a.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */