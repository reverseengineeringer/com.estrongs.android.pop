.class public Lcom/estrongs/fs/impl/n/d;
.super Lcom/estrongs/fs/impl/media/c;


# static fields
.field private static g:Lcom/estrongs/fs/impl/n/d;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/impl/media/c;-><init>()V

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/estrongs/fs/impl/n/d;->c:Landroid/net/Uri;

    const-string v0, "_data"

    iput-object v0, p0, Lcom/estrongs/fs/impl/n/d;->d:Ljava/lang/String;

    const-string v0, "title_key"

    iput-object v0, p0, Lcom/estrongs/fs/impl/n/d;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/estrongs/fs/h;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/h;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/estrongs/android/ui/topclassify/aa;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/estrongs/android/ui/topclassify/aa;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/app/c/j;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static b()Lcom/estrongs/fs/impl/n/d;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/n/d;->g:Lcom/estrongs/fs/impl/n/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/n/d;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/n/d;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/n/d;->g:Lcom/estrongs/fs/impl/n/d;

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/n/d;->g:Lcom/estrongs/fs/impl/n/d;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "music://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/ap;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    const-string v0, "music://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "music://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/estrongs/fs/impl/n/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/impl/n/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/fs/impl/n/d;->c:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/io/File;)Lcom/estrongs/fs/h;
    .locals 1

    new-instance v0, Lcom/estrongs/fs/impl/n/a;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/impl/n/a;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/estrongs/fs/h;",
            "Lcom/estrongs/fs/i;",
            "Lcom/estrongs/a/b/o",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/estrongs/android/util/TypedMap;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/estrongs/android/ui/topclassify/c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/estrongs/android/ui/topclassify/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/topclassify/c;->b()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p2}, Lcom/estrongs/fs/impl/n/d;->a(Lcom/estrongs/fs/h;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_3

    instance-of v0, p2, Lcom/estrongs/android/ui/topclassify/aa;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/estrongs/android/ui/topclassify/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/topclassify/aa;->a()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-super/range {p0 .. p5}, Lcom/estrongs/fs/impl/media/c;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/estrongs/fs/impl/n/e;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/fs/impl/n/e;-><init>(Lcom/estrongs/fs/impl/n/d;Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-virtual {v3, v0}, Lcom/estrongs/fs/impl/n/e;->a(Lcom/estrongs/fs/h;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/estrongs/fs/impl/media/c;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
