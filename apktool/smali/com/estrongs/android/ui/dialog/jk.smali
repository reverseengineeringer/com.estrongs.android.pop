.class Lcom/estrongs/android/ui/dialog/jk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/jh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/jh;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0, v7}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;Z)Z

    instance-of v0, p1, Lcom/estrongs/fs/b/ad;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->h(Lcom/estrongs/android/ui/dialog/jh;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/jh;->b(Lcom/estrongs/a/a;)V

    instance-of v0, p1, Lcom/estrongs/fs/b/ad;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->i(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/ui/notification/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->i(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/ui/notification/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/f;->a()V

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/estrongs/fs/b/ad;

    iget-boolean v0, v0, Lcom/estrongs/fs/b/ad;->f:Z

    if-eqz v0, :cond_2

    check-cast p1, Lcom/estrongs/fs/b/ad;

    invoke-virtual {p1}, Lcom/estrongs/fs/b/ad;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const-class v3, Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v4, 0x7f0802a5

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v4, 0x7f08068e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "title"

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v4, 0x7f08007f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "message"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "openfileOrFolder"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "pathIsDir"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->i(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/ui/notification/f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/r;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/ab;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/bo;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/bc;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/i;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/p;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/ag;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/y;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/a;

    if-eqz v0, :cond_2

    :cond_5
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->i(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/ui/notification/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/f;->a()V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x5

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->k(Lcom/estrongs/android/ui/dialog/jh;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/jl;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/jl;-><init>(Lcom/estrongs/android/ui/dialog/jk;Lcom/estrongs/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    instance-of v0, p1, Lcom/estrongs/fs/b/r;

    if-nez v0, :cond_7

    instance-of v0, p1, Lcom/estrongs/fs/b/ab;

    if-nez v0, :cond_7

    instance-of v0, p1, Lcom/estrongs/fs/b/bo;

    if-nez v0, :cond_7

    instance-of v0, p1, Lcom/estrongs/fs/b/p;

    if-nez v0, :cond_7

    instance-of v0, p1, Lcom/estrongs/fs/b/ad;

    if-nez v0, :cond_7

    instance-of v0, p1, Lcom/estrongs/fs/b/ag;

    if-nez v0, :cond_7

    instance-of v0, p1, Lcom/estrongs/fs/b/y;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0, v7}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;Z)Z

    :cond_7
    invoke-virtual {p1}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/a/p;)Ljava/lang/String;

    move-result-object v0

    iget v2, v1, Lcom/estrongs/a/p;->a:I

    if-eq v2, v8, :cond_8

    iget v2, v1, Lcom/estrongs/a/p;->a:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/jh;->k(Lcom/estrongs/android/ui/dialog/jh;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/dialog/jm;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/jm;-><init>(Lcom/estrongs/android/ui/dialog/jk;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_1
    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/jh;->l(Lcom/estrongs/android/ui/dialog/jh;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/fs/b/r;

    if-eqz v1, :cond_b

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/jh;->k(Lcom/estrongs/android/ui/dialog/jh;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/dialog/jo;

    invoke-direct {v2, p0, p1, v0}, Lcom/estrongs/android/ui/dialog/jo;-><init>(Lcom/estrongs/android/ui/dialog/jk;Lcom/estrongs/a/a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-virtual {v2, p1}, Lcom/estrongs/android/ui/dialog/jh;->c(Lcom/estrongs/a/a;)V

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    const v2, 0x7f080690

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/jh;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->h(Lcom/estrongs/android/ui/dialog/jh;)V

    goto/16 :goto_0
.end method
