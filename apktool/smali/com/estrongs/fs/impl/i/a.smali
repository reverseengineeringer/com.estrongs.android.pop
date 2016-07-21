.class public abstract Lcom/estrongs/fs/impl/i/a;
.super Lcom/estrongs/fs/impl/media/a;

# interfaces
.implements Lcom/estrongs/fs/u;


# instance fields
.field private a:I

.field private b:Lcom/estrongs/android/scanner/a;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/impl/media/a;-><init>()V

    iput p1, p0, Lcom/estrongs/fs/impl/i/a;->a:I

    invoke-static {}, Lcom/estrongs/android/scanner/a;->a()Lcom/estrongs/android/scanner/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/impl/i/a;->b:Lcom/estrongs/android/scanner/a;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/estrongs/fs/impl/local/f;)Lcom/estrongs/fs/h;
.end method

.method public a(Ljava/lang/String;)Lcom/estrongs/fs/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/io/OutputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Lcom/estrongs/android/scanner/f;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/scanner/f;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/estrongs/fs/impl/i/a;->a:I

    invoke-virtual {p1, v0}, Lcom/estrongs/android/scanner/f;->a(I)V

    iget-object v0, p0, Lcom/estrongs/fs/impl/i/a;->b:Lcom/estrongs/android/scanner/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/scanner/a;->a(Lcom/estrongs/android/scanner/f;)Ljava/util/List;

    move-result-object v0

    return-object v0
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

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/fs/impl/media/a;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 10
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/estrongs/android/pop/app/f/r;

    invoke-direct {v3, v2}, Lcom/estrongs/android/pop/app/f/r;-><init>(Z)V

    new-instance v4, Lcom/estrongs/android/scanner/f;

    invoke-direct {v4}, Lcom/estrongs/android/scanner/f;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->bo()Z

    move-result v0

    if-eqz p1, :cond_0

    instance-of v5, p1, Lcom/estrongs/android/ui/topclassify/c;

    if-eqz v5, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/estrongs/android/scanner/f;->b(Z)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->q()Z

    move-result v0

    if-eqz p1, :cond_1

    instance-of v5, p1, Lcom/estrongs/android/pop/app/finder/data/d;

    if-eqz v5, :cond_1

    check-cast p1, Lcom/estrongs/android/pop/app/finder/data/d;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/finder/data/d;->a()Z

    move-result v0

    :cond_1
    if-nez v0, :cond_7

    :goto_1
    invoke-virtual {v4, v1}, Lcom/estrongs/android/scanner/f;->a(Z)V

    invoke-static {}, Lcom/estrongs/android/pop/utils/ad;->f()[Lcom/estrongs/android/pop/utils/aj;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/utils/ad;->a([Lcom/estrongs/android/pop/utils/aj;)[Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    array-length v6, v1

    if-lez v6, :cond_9

    new-instance v0, Lcom/estrongs/android/pop/app/f/r;

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/app/f/r;-><init>(Z)V

    new-instance v6, Lcom/estrongs/fs/impl/i/b;

    invoke-direct {v6, p0, v1, v5}, Lcom/estrongs/fs/impl/i/b;-><init>(Lcom/estrongs/fs/impl/i/a;[Lcom/estrongs/android/pop/utils/aj;[Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/app/f/r;->a(Lcom/estrongs/fs/i;)V

    move-object v1, v0

    :goto_2
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    if-eqz p2, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    instance-of v2, p2, Lcom/estrongs/fs/k;

    if-eqz v2, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/estrongs/fs/k;

    invoke-virtual {v0, v4}, Lcom/estrongs/fs/k;->a(Lcom/estrongs/android/scanner/f;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3, p2}, Lcom/estrongs/android/pop/app/f/r;->a(Lcom/estrongs/fs/i;)V

    :cond_3
    invoke-virtual {p0, v4}, Lcom/estrongs/fs/impl/i/a;->a(Lcom/estrongs/android/scanner/f;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/d;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/d;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lcom/estrongs/fs/impl/local/f;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/d;->m()J

    move-result-wide v8

    invoke-direct {v6, v4, v8, v9}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;J)V

    invoke-virtual {v3, v6}, Lcom/estrongs/android/pop/app/f/r;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_5

    invoke-virtual {v1, v6}, Lcom/estrongs/android/pop/app/f/r;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_5
    invoke-virtual {p0, v6}, Lcom/estrongs/fs/impl/i/a;->a(Lcom/estrongs/fs/impl/local/f;)Lcom/estrongs/fs/h;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto/16 :goto_1

    :cond_8
    return-object v5

    :cond_9
    move-object v1, v0

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
