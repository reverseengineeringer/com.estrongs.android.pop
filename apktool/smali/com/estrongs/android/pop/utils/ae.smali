.class Lcom/estrongs/android/pop/utils/ae;
.super Lcom/estrongs/a/a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/utils/ad;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/ad;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ae;->b:Lcom/estrongs/android/pop/utils/ad;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/ae;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public task()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/ae;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/e;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ae;->b:Lcom/estrongs/android/pop/utils/ad;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/ae;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/pop/utils/ad;->a(Lcom/estrongs/android/pop/utils/ad;Ljava/io/File;Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    goto :goto_0
.end method
