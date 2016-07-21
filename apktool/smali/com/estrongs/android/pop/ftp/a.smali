.class Lcom/estrongs/android/pop/ftp/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ftp/m;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ftp/k;

.field final synthetic c:Z

.field final synthetic d:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/ftp/ESFtpShortcut;ILcom/estrongs/android/ftp/k;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/a;->d:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    iput p2, p0, Lcom/estrongs/android/pop/ftp/a;->a:I

    iput-object p3, p0, Lcom/estrongs/android/pop/ftp/a;->b:Lcom/estrongs/android/ftp/k;

    iput-boolean p4, p0, Lcom/estrongs/android/pop/ftp/a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->a:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->d:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->U()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/a;->d:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->W()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/a;->d:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->V()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/a;->d:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ad;->T()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/a;->b:Lcom/estrongs/android/ftp/k;

    invoke-virtual {v4, v0, v3, v1, v2}, Lcom/estrongs/android/ftp/k;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/estrongs/android/ftp/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->b:Lcom/estrongs/android/ftp/k;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/k;->d()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    if-ne v1, v5, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->d:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    const v1, 0x7f080324

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ftp/ESFtpShortcut;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/a;->d:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_1
    return-void

    :cond_1
    if-ne v1, v6, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->d:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    const v1, 0x7f080742

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ftp/ESFtpShortcut;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/pop/ftp/a;->c:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/ftp/a;->e()Lcom/estrongs/android/ftp/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ftp/a;->a(Z)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->b:Lcom/estrongs/android/ftp/k;

    iget-object v0, v0, Lcom/estrongs/android/ftp/k;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/a;->d:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    const-class v2, Lcom/estrongs/android/ftp/ESFtpService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/a;->d:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ftp/ESFtpShortcut;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->b:Lcom/estrongs/android/ftp/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/a;->d:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ftp/k;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_5
    :try_start_1
    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->a:I

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->b:Lcom/estrongs/android/ftp/k;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/k;->c()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/a;->d:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    const-class v2, Lcom/estrongs/android/ftp/ESFtpService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/a;->d:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ftp/ESFtpShortcut;->stopService(Landroid/content/Intent;)Z

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->b:Lcom/estrongs/android/ftp/k;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/k;->e()Z

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/estrongs/android/pop/ftp/a;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/a;->b:Lcom/estrongs/android/ftp/k;

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/k;->f()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
