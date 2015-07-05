.class public Lcom/estrongs/fs/impl/q/b;
.super Lcom/estrongs/fs/impl/media/b;


# static fields
.field private static g:Lcom/estrongs/fs/impl/q/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/impl/media/b;-><init>()V

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/estrongs/fs/impl/q/b;->c:Landroid/net/Uri;

    const-string v0, "_data"

    iput-object v0, p0, Lcom/estrongs/fs/impl/q/b;->d:Ljava/lang/String;

    const-string v0, "title"

    iput-object v0, p0, Lcom/estrongs/fs/impl/q/b;->e:Ljava/lang/String;

    return-void
.end method

.method public static c()Lcom/estrongs/fs/impl/q/b;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/q/b;->g:Lcom/estrongs/fs/impl/q/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/q/b;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/q/b;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/q/b;->g:Lcom/estrongs/fs/impl/q/b;

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/q/b;->g:Lcom/estrongs/fs/impl/q/b;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "video://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/am;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    const-string v0, "video://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "video://"

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

    iget-object v1, p0, Lcom/estrongs/fs/impl/q/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/fs/impl/q/b;->d:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/estrongs/fs/impl/q/b;->c:Landroid/net/Uri;

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

    new-instance v0, Lcom/estrongs/fs/impl/q/a;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/impl/q/a;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
