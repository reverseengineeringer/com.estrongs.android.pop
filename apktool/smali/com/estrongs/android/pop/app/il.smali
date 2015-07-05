.class Lcom/estrongs/android/pop/app/il;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/il;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/il;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/il;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->e(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    :goto_0
    if-nez v3, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    move-object v3, v0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v1, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    if-nez v0, :cond_2

    :cond_1
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/fs/m;->a()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/bc;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/il;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/il;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/il;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/il;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/il;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->g(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/il;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;I)I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/il;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->h(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/io;->a()V

    goto :goto_1
.end method
