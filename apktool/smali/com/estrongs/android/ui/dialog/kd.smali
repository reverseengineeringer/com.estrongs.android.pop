.class Lcom/estrongs/android/ui/dialog/kd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/jh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/jh;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/notification/f;->b(J)Lcom/estrongs/a/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v2, 0x7f0805c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->d(Lcom/estrongs/android/ui/dialog/jh;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->e(Lcom/estrongs/android/ui/dialog/jh;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->f(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/view/bo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bo;->d(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/r;->f(Z)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->execute()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/aq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v2, 0x7f0805b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kd;->a:Lcom/estrongs/android/ui/dialog/jh;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/jh;->mContext:Landroid/content/Context;

    const v2, 0x7f0805ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/jh;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
