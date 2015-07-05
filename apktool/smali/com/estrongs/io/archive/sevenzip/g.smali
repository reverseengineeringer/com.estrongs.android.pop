.class final Lcom/estrongs/io/archive/sevenzip/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/o;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:[Z

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;[ZLandroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/sevenzip/g;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/estrongs/io/archive/sevenzip/g;->b:[Z

    iput-object p3, p0, Lcom/estrongs/io/archive/sevenzip/g;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/estrongs/io/archive/sevenzip/g;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "777"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/fs/impl/local/l;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/g;->b:[Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/g;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/g;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/io/archive/sevenzip/f;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/g;->b:[Z

    aput-boolean v3, v0, v3

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/g;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/g;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/io/archive/sevenzip/f;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/g;->b:[Z

    aput-boolean v3, v0, v3

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/g;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/g;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/io/archive/sevenzip/f;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
