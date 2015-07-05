.class Lcom/estrongs/android/ui/dialog/js;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ix;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ix;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/notification/e;->b(J)Lcom/estrongs/a/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0536

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->d(Lcom/estrongs/android/ui/dialog/ix;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->e(Lcom/estrongs/android/ui/dialog/ix;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->f(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/android/view/ak;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ak;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/a/a;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/r;->f(Z)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/a/a;->execute()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/ao;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/js;->a:Lcom/estrongs/android/ui/dialog/ix;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ix;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0084

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
