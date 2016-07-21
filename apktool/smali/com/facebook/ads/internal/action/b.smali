.class public Lcom/facebook/ads/internal/action/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/ads/internal/action/a;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_url"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "store"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/facebook/ads/internal/action/c;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/action/c;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    const-string v2, "open_link"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/action/d;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/action/d;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method
