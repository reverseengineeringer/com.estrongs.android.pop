.class Lcom/estrongs/android/view/fu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ftp/m;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ftp/k;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/estrongs/android/view/fp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/fp;Lcom/estrongs/android/ftp/k;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    iput-object p2, p0, Lcom/estrongs/android/view/fu;->a:Lcom/estrongs/android/ftp/k;

    iput-object p3, p0, Lcom/estrongs/android/view/fu;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/view/fu;->c:Ljava/lang/String;

    iput p5, p0, Lcom/estrongs/android/view/fu;->d:I

    iput-object p6, p0, Lcom/estrongs/android/view/fu;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/fu;->a:Lcom/estrongs/android/ftp/k;

    iget-object v1, p0, Lcom/estrongs/android/view/fu;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/view/fu;->c:Ljava/lang/String;

    iget v3, p0, Lcom/estrongs/android/view/fu;->d:I

    iget-object v4, p0, Lcom/estrongs/android/view/fu;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/estrongs/android/ftp/k;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/estrongs/android/ftp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/fu;->a:Lcom/estrongs/android/ftp/k;

    invoke-virtual {v1}, Lcom/estrongs/android/ftp/k;->d()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    invoke-static {v1}, Lcom/estrongs/android/view/fp;->b(Lcom/estrongs/android/view/fp;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    iget-object v2, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    const v3, 0x7f0805a9

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/fp;->j(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ftp:/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->g()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/estrongs/android/view/fu;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/view/fp;->a(Lcom/estrongs/android/view/fp;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    iget-object v1, v1, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    const-class v2, Lcom/estrongs/android/ftp/ESFtpService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    iget-object v1, v1, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/view/fu;->a:Lcom/estrongs/android/ftp/k;

    iget-object v1, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    iget-object v1, v1, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ftp/k;->b(Landroid/content/Context;)V

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    invoke-static {v1}, Lcom/estrongs/android/view/fp;->c(Lcom/estrongs/android/view/fp;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    iget-object v2, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    const v3, 0x7f08039d

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/fp;->j(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ftp:/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->g()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/estrongs/android/view/fu;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/view/fp;->a(Lcom/estrongs/android/view/fp;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    iget-object v2, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    invoke-static {v2}, Lcom/estrongs/android/view/fp;->d(Lcom/estrongs/android/view/fp;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ftp:/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/a;->g()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/estrongs/android/view/fu;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/view/fp;->a(Lcom/estrongs/android/view/fp;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    const v1, 0x7f080324

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fp;->j(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    iget-object v1, v1, Lcom/estrongs/android/view/fp;->ag:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    invoke-static {v0}, Lcom/estrongs/android/view/fp;->b(Lcom/estrongs/android/view/fp;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    iget-object v1, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    const v2, 0x7f0805a9

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/fp;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/fp;->a(Lcom/estrongs/android/view/fp;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    const v1, 0x7f080742

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fp;->j(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    invoke-static {v0}, Lcom/estrongs/android/view/fp;->c(Lcom/estrongs/android/view/fp;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    iget-object v1, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    const v2, 0x7f08039d

    invoke-virtual {v1, v2}, Lcom/estrongs/android/view/fp;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/fp;->a(Lcom/estrongs/android/view/fp;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    iget-object v1, p0, Lcom/estrongs/android/view/fu;->f:Lcom/estrongs/android/view/fp;

    invoke-static {v1}, Lcom/estrongs/android/view/fp;->d(Lcom/estrongs/android/view/fp;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/fp;->a(Lcom/estrongs/android/view/fp;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
