.class Lcom/estrongs/android/ui/c/b/h;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/estrongs/android/ui/c/b/k;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/b/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/h;->a:Lcom/estrongs/android/ui/c/b/f;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/estrongs/android/ui/c/b/k;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/h;->a:Lcom/estrongs/android/ui/c/b/f;

    invoke-direct {v0, v2, v8}, Lcom/estrongs/android/ui/c/b/k;-><init>(Lcom/estrongs/android/ui/c/b/f;Lcom/estrongs/android/ui/c/b/g;)V

    const-string v2, "picture"

    iput-object v2, v0, Lcom/estrongs/android/ui/c/b/k;->a:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/fs/impl/k/b;->c()Lcom/estrongs/fs/impl/k/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/k/b;->b()I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/ui/c/b/k;->b:I

    new-array v2, v3, [Lcom/estrongs/android/ui/c/b/k;

    aput-object v0, v2, v1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/c/b/h;->publishProgress([Ljava/lang/Object;)V

    new-instance v0, Lcom/estrongs/android/ui/c/b/k;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/h;->a:Lcom/estrongs/android/ui/c/b/f;

    invoke-direct {v0, v2, v8}, Lcom/estrongs/android/ui/c/b/k;-><init>(Lcom/estrongs/android/ui/c/b/f;Lcom/estrongs/android/ui/c/b/g;)V

    const-string v2, "music"

    iput-object v2, v0, Lcom/estrongs/android/ui/c/b/k;->a:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/fs/impl/i/b;->c()Lcom/estrongs/fs/impl/i/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/i/b;->b()I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/ui/c/b/k;->b:I

    new-array v2, v3, [Lcom/estrongs/android/ui/c/b/k;

    aput-object v0, v2, v1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/c/b/h;->publishProgress([Ljava/lang/Object;)V

    new-instance v0, Lcom/estrongs/android/ui/c/b/k;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/h;->a:Lcom/estrongs/android/ui/c/b/f;

    invoke-direct {v0, v2, v8}, Lcom/estrongs/android/ui/c/b/k;-><init>(Lcom/estrongs/android/ui/c/b/f;Lcom/estrongs/android/ui/c/b/g;)V

    const-string v2, "video"

    iput-object v2, v0, Lcom/estrongs/android/ui/c/b/k;->a:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/fs/impl/q/b;->c()Lcom/estrongs/fs/impl/q/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/impl/q/b;->b()I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/ui/c/b/k;->b:I

    new-array v2, v3, [Lcom/estrongs/android/ui/c/b/k;

    aput-object v0, v2, v1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/c/b/h;->publishProgress([Ljava/lang/Object;)V

    new-instance v2, Lcom/estrongs/android/ui/c/b/k;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/h;->a:Lcom/estrongs/android/ui/c/b/f;

    invoke-direct {v2, v0, v8}, Lcom/estrongs/android/ui/c/b/k;-><init>(Lcom/estrongs/android/ui/c/b/f;Lcom/estrongs/android/ui/c/b/g;)V

    const-string v0, "application"

    iput-object v0, v2, Lcom/estrongs/android/ui/c/b/k;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    const-string v3, "app"

    invoke-virtual {v0, v3}, Lcom/estrongs/fs/d;->o(Ljava/lang/String;)Lcom/estrongs/fs/k;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/b/d;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v3

    const-string v4, "app://user"

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/estrongs/fs/impl/b/d;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/i;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v2, Lcom/estrongs/android/ui/c/b/k;->b:I

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/estrongs/android/ui/c/b/k;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/b/h;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v2, Lcom/estrongs/android/ui/c/b/k;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/h;->a:Lcom/estrongs/android/ui/c/b/f;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/estrongs/android/ui/c/b/k;-><init>(Lcom/estrongs/android/ui/c/b/f;Lcom/estrongs/android/ui/c/b/g;)V

    const-string v0, "download"

    iput-object v0, v2, Lcom/estrongs/android/ui/c/b/k;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/h;->a:Lcom/estrongs/android/ui/c/b/f;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->z()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/h;->a:Lcom/estrongs/android/ui/c/b/f;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->p()Z

    move-result v4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v0, -0x1

    iput v0, v2, Lcom/estrongs/android/ui/c/b/k;->b:I

    :goto_1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/estrongs/android/ui/c/b/k;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/b/h;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    new-instance v0, Lcom/estrongs/android/ui/c/b/k;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/h;->a:Lcom/estrongs/android/ui/c/b/f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/c/b/k;-><init>(Lcom/estrongs/android/ui/c/b/f;Lcom/estrongs/android/ui/c/b/g;)V

    const-string v1, "book"

    iput-object v1, v0, Lcom/estrongs/android/ui/c/b/k;->a:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_5

    invoke-static {}, Lcom/estrongs/fs/impl/d/c;->b()Lcom/estrongs/fs/impl/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/d/c;->c()I

    move-result v1

    iput v1, v0, Lcom/estrongs/android/ui/c/b/k;->b:I

    :goto_3
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/estrongs/android/ui/c/b/k;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/c/b/h;->publishProgress([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    return-object v8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput v1, v2, Lcom/estrongs/android/ui/c/b/k;->b:I

    goto :goto_0

    :cond_0
    :try_start_3
    array-length v5, v3

    move v0, v1

    :goto_5
    if-ge v1, v5, :cond_3

    aget-object v6, v3, v1

    if-nez v4, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3
    iput v0, v2, Lcom/estrongs/android/ui/c/b/k;->b:I

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    iput v0, v2, Lcom/estrongs/android/ui/c/b/k;->b:I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :cond_5
    :try_start_4
    invoke-static {}, Lcom/estrongs/fs/impl/d/b;->a()Lcom/estrongs/fs/impl/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/d/b;->e()I

    move-result v1

    iput v1, v0, Lcom/estrongs/android/ui/c/b/k;->b:I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/h;->a:Lcom/estrongs/android/ui/c/b/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/c/b/f;->a(Lcom/estrongs/android/ui/c/b/f;Z)Z

    return-void
.end method

.method protected varargs a([Lcom/estrongs/android/ui/c/b/k;)V
    .locals 3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, v0, Lcom/estrongs/android/ui/c/b/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/h;->a:Lcom/estrongs/android/ui/c/b/f;

    iget v0, v0, Lcom/estrongs/android/ui/c/b/k;->b:I

    invoke-static {v2, v1, v0}, Lcom/estrongs/android/ui/c/b/f;->a(Lcom/estrongs/android/ui/c/b/f;Ljava/lang/String;I)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/c/b/h;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/c/b/h;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/estrongs/android/ui/c/b/k;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/c/b/h;->a([Lcom/estrongs/android/ui/c/b/k;)V

    return-void
.end method
