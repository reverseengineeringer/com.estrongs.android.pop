.class Lcom/estrongs/android/view/dn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ftp/m;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ftp/k;

.field final synthetic b:Lcom/estrongs/android/view/dj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/dj;Lcom/estrongs/android/ftp/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dn;->b:Lcom/estrongs/android/view/dj;

    iput-object p2, p0, Lcom/estrongs/android/view/dn;->a:Lcom/estrongs/android/ftp/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/view/dn;->a:Lcom/estrongs/android/ftp/k;

    invoke-virtual {v1}, Lcom/estrongs/android/ftp/k;->b()Lcom/estrongs/android/ftp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/ftp/a;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/dn;->b:Lcom/estrongs/android/view/dj;

    iget-object v0, v0, Lcom/estrongs/android/view/dj;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->V()I

    move-result v2

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/estrongs/android/view/dn;->b:Lcom/estrongs/android/view/dj;

    invoke-static {v3}, Lcom/estrongs/android/view/dj;->b(Lcom/estrongs/android/view/dj;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/view/dn;->b:Lcom/estrongs/android/view/dj;

    iget-object v4, p0, Lcom/estrongs/android/view/dn;->b:Lcom/estrongs/android/view/dj;

    const v5, 0x7f0b03c3

    invoke-virtual {v4, v5}, Lcom/estrongs/android/view/dj;->l(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ftp:/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/estrongs/android/ftp/a;->g()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/estrongs/android/view/dj;->a(Lcom/estrongs/android/view/dj;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/view/dn;->a:Lcom/estrongs/android/ftp/k;

    iget-object v2, p0, Lcom/estrongs/android/view/dn;->b:Lcom/estrongs/android/view/dj;

    iget-object v2, v2, Lcom/estrongs/android/view/dj;->ad:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ftp/k;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/dn;->b:Lcom/estrongs/android/view/dj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/view/dj;->a(Lcom/estrongs/android/view/dj;Z)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/dn;->b:Lcom/estrongs/android/view/dj;

    invoke-static {v0}, Lcom/estrongs/android/view/dj;->e(Lcom/estrongs/android/view/dj;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v3, p0, Lcom/estrongs/android/view/dn;->b:Lcom/estrongs/android/view/dj;

    iget-object v4, p0, Lcom/estrongs/android/view/dn;->b:Lcom/estrongs/android/view/dj;

    invoke-static {v4}, Lcom/estrongs/android/view/dj;->c(Lcom/estrongs/android/view/dj;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ftp:/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/estrongs/android/ftp/a;->g()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/estrongs/android/view/dj;->a(Lcom/estrongs/android/view/dj;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
