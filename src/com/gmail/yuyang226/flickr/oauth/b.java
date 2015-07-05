package com.gmail.yuyang226.flickr.oauth;

import java.util.Comparator;

class b
  implements Comparator<com.gmail.yuyang226.flickr.a>
{
  public int a(com.gmail.yuyang226.flickr.a parama1, com.gmail.yuyang226.flickr.a parama2)
  {
    int i;
    if (((parama1 instanceof com.gmail.yuyang226.flickr.c.a)) && (!(parama2 instanceof com.gmail.yuyang226.flickr.c.a))) {
      i = 1;
    }
    int j;
    do
    {
      return i;
      if (((parama2 instanceof com.gmail.yuyang226.flickr.c.a)) && (!(parama1 instanceof com.gmail.yuyang226.flickr.c.a))) {
        return -1;
      }
      j = parama1.a().compareTo(parama2.a());
      i = j;
    } while (j != 0);
    return parama1.b().toString().compareTo(parama2.b().toString());
  }
}

/* Location:
 * Qualified Name:     com.gmail.yuyang226.flickr.oauth.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */