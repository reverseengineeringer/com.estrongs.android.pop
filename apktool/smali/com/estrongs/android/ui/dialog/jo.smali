.class Lcom/estrongs/android/ui/dialog/jo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/ui/dialog/jk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/jk;Lcom/estrongs/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/jo;->a:Lcom/estrongs/a/a;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/jo;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-wide/16 v8, 0x0

    const v7, 0x7f080076

    const/16 v6, 0x8

    const v5, 0x7f0803eb

    const v4, 0x7f080690

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->l(Lcom/estrongs/android/ui/dialog/jh;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->m(Lcom/estrongs/android/ui/dialog/jh;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jh;->d()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->f(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/view/bo;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/view/bo;->e:Lcom/estrongs/a/a/l;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v2

    iget-object v2, v2, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/a/a/l;->a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->k(Lcom/estrongs/android/ui/dialog/jh;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/jp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/jp;-><init>(Lcom/estrongs/android/ui/dialog/jo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/k;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v3, 0x7f080137

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v0, v0, Lcom/estrongs/a/a/m;->d:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    iget-wide v0, v0, Lcom/estrongs/a/a/m;->f:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->f(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/view/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/bo;->c()V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v2, 0x7f08068f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/dialog/jq;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/jq;-><init>(Lcom/estrongs/android/ui/dialog/jo;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/jh;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v2, 0x7f080221

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/dialog/js;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/js;-><init>(Lcom/estrongs/android/ui/dialog/jo;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/jh;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->f(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/view/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/bo;->d()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->f(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/view/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/bo;->b()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/aq;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v3, 0x7f080091

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v3, 0x7f080091

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ab;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v3, 0x7f08007d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/bo;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v3, 0x7f08047a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/p;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v3, 0x7f08015a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ad;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v2, 0x7f0805f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ag;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v3, 0x7f080082

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->a:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v3, 0x7f08007b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/dialog/jr;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/jr;-><init>(Lcom/estrongs/android/ui/dialog/jo;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/jh;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->f(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/view/bo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/view/bo;->e(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->f(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/view/bo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/view/bo;->f(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->f(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/view/bo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/view/bo;->d(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v2, 0x7f080226

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/dialog/jt;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/jt;-><init>(Lcom/estrongs/android/ui/dialog/jo;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/jh;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_3
.end method
