.class final Lcom/estrongs/android/pop/app/bc;
.super Lcom/estrongs/android/ui/dialog/jh;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p4, p0, Lcom/estrongs/android/pop/app/bc;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/android/pop/app/bc;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/bc;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802a5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/bc;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/estrongs/a/p;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bc;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/bc;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080292

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/bc;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/estrongs/a/a;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    check-cast p1, Lcom/estrongs/fs/b/ad;

    invoke-virtual {p1}, Lcom/estrongs/fs/b/ad;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
