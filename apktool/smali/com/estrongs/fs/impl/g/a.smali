.class public Lcom/estrongs/fs/impl/g/a;
.super Lcom/estrongs/fs/l;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/impl/g/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/l;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/impl/g/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/estrongs/fs/h;
    .locals 1

    new-instance v0, Lcom/estrongs/fs/n;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/n;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/estrongs/android/pop/utils/cd;->a(Lcom/estrongs/android/util/TypedMap;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/g/a;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/estrongs/fs/impl/g/a;->a(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v2, v4

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/g/a;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    const/4 v1, -0x1

    if-eqz p2, :cond_5

    const-string v2, "from"

    int-to-long v6, v3

    invoke-virtual {p2, v2, v6, v7}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;J)I

    move-result v2

    const-string v5, "to"

    int-to-long v6, v1

    invoke-virtual {p2, v5, v6, v7}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;J)I

    move-result v1

    :goto_1
    aget-object v3, v4, v3

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/estrongs/fs/impl/g/a;->a(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method public a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/estrongs/android/util/TypedMap;

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/fs/impl/g/a;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/fs/impl/g/a;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/estrongs/fs/h;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/g/a;->a(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    iget-object v3, p0, Lcom/estrongs/fs/impl/g/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/g/a;

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p2}, Lcom/estrongs/fs/impl/g/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1, p2}, Lcom/estrongs/fs/impl/g/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/fs/impl/g/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/g/a;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {v2}, Lcom/estrongs/fs/impl/g/a;->a(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-ne v3, v5, :cond_1

    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-virtual {v0, v1, p2}, Lcom/estrongs/fs/impl/g/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    aget-object v1, v2, v5

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/g/a;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected e(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
