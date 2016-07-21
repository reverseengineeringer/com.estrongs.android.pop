.class Lcom/estrongs/a/b/m;
.super Lcom/estrongs/android/widget/f;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field a:Lcom/estrongs/fs/b/bn;

.field i:Z

.field final synthetic j:Lcom/estrongs/a/b/d;


# direct methods
.method public constructor <init>(Lcom/estrongs/a/b/d;Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/fs/b/bn;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/a/b/m;->j:Lcom/estrongs/a/b/d;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/widget/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/a/b/m;->i:Z

    iput-object p5, p0, Lcom/estrongs/a/b/m;->a:Lcom/estrongs/fs/b/bn;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/estrongs/a/b/m;->a(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/estrongs/a/b/m;->j:Lcom/estrongs/a/b/d;

    invoke-virtual {p0}, Lcom/estrongs/a/b/m;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/a/b/d;->a(Lcom/estrongs/a/b/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/a/b/m;->j:Lcom/estrongs/a/b/d;

    invoke-static {v2}, Lcom/estrongs/a/b/d;->e(Lcom/estrongs/a/b/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->aH(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/a/b/m;->j:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->e(Lcom/estrongs/a/b/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/usb/e;->k(Ljava/lang/String;)J

    move-result-wide v4

    :goto_0
    iget-object v0, p0, Lcom/estrongs/a/b/m;->a:Lcom/estrongs/fs/b/bn;

    iget-wide v0, v0, Lcom/estrongs/fs/b/bn;->e:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->H()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/jf;

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->H()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/a/b/m;->a:Lcom/estrongs/fs/b/bn;

    iget-wide v2, v2, Lcom/estrongs/fs/b/bn;->e:J

    const-string v6, "Error!"

    iget-object v7, p0, Lcom/estrongs/a/b/m;->j:Lcom/estrongs/a/b/d;

    invoke-static {}, Lcom/estrongs/a/b/d;->c()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f080465

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/ui/dialog/jf;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jf;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/a/b/m;->k()V

    :goto_1
    return-void

    :cond_1
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/estrongs/a/b/m;->j:Lcom/estrongs/a/b/d;

    invoke-static {v2}, Lcom/estrongs/a/b/d;->e(Lcom/estrongs/a/b/d;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    :try_start_1
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    int-to-long v0, v0

    :goto_2
    mul-long v4, v2, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/a/b/m;->j:Lcom/estrongs/a/b/d;

    invoke-static {v0}, Lcom/estrongs/a/b/d;->e(Lcom/estrongs/a/b/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/a/b/m;->a:Lcom/estrongs/fs/b/bn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/a/b/m;->j:Lcom/estrongs/a/b/d;

    invoke-static {v2}, Lcom/estrongs/a/b/d;->e(Lcom/estrongs/a/b/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/fs/b/bn;->i:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->H()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/ESActivity;->H()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/a/b/m;->a:Lcom/estrongs/fs/b/bn;

    invoke-static {v0, v1, v6}, Lcom/estrongs/fs/b/bc;->a(Landroid/app/Activity;Ljava/lang/Object;Z)Lcom/estrongs/fs/b/bc;

    iput-boolean v6, p0, Lcom/estrongs/a/b/m;->i:Z

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/a/b/m;->k()V

    goto :goto_1

    :catch_0
    move-exception v2

    move-wide v2, v0

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/a/b/m;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/a/b/m;->j:Lcom/estrongs/a/b/d;

    iget-object v1, p0, Lcom/estrongs/a/b/m;->a:Lcom/estrongs/fs/b/bn;

    iget-object v1, v1, Lcom/estrongs/fs/b/bn;->j:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0x194

    const-string v3, "Not found"

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/a/b/d;->a(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/a/b/m;->a:Lcom/estrongs/fs/b/bn;

    iget-object v0, v0, Lcom/estrongs/fs/b/bn;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    invoke-super {p0}, Lcom/estrongs/android/widget/f;->k()V

    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/a/b/m;->j:Lcom/estrongs/a/b/d;

    iget-object v1, p0, Lcom/estrongs/a/b/m;->a:Lcom/estrongs/fs/b/bn;

    iget-object v1, v1, Lcom/estrongs/fs/b/bn;->j:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/a/b/d;->a(Ljava/io/OutputStream;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/a/b/m;->a:Lcom/estrongs/fs/b/bn;

    iget-object v0, v0, Lcom/estrongs/fs/b/bn;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
