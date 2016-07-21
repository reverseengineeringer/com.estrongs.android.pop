.class Lcom/estrongs/android/ui/dialog/hz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/hq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hq;->e(Lcom/estrongs/android/ui/dialog/hq;)Lcom/estrongs/fs/b/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->b()Lcom/estrongs/fs/b/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hq;->k(Lcom/estrongs/android/ui/dialog/hq;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0805d5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hq;->l(Lcom/estrongs/android/ui/dialog/hq;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, v0, Lcom/estrongs/fs/b/ap;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/hq;->m(Lcom/estrongs/android/ui/dialog/hq;)Landroid/widget/TextView;

    move-result-object v2

    iget-wide v4, v0, Lcom/estrongs/fs/b/ap;->c:J

    invoke-static {v1, v2, v4, v5}, Lcom/estrongs/android/ui/dialog/hq;->a(Lcom/estrongs/android/ui/dialog/hq;Landroid/widget/TextView;J)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hq;->a(Lcom/estrongs/android/ui/dialog/hq;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/hq;->n(Lcom/estrongs/android/ui/dialog/hq;)Landroid/widget/TextView;

    move-result-object v2

    iget-wide v4, v0, Lcom/estrongs/fs/b/ap;->d:J

    invoke-static {v1, v2, v4, v5}, Lcom/estrongs/android/ui/dialog/hq;->a(Lcom/estrongs/android/ui/dialog/hq;Landroid/widget/TextView;J)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hq;->e(Lcom/estrongs/android/ui/dialog/hq;)Lcom/estrongs/fs/b/ao;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hq;->e(Lcom/estrongs/android/ui/dialog/hq;)Lcom/estrongs/fs/b/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/b/ao;->b()Lcom/estrongs/fs/b/ap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/a;->b(Lcom/estrongs/fs/b/ap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/estrongs/fs/b/ap;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hq;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/estrongs/fs/b/ap;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hq;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hz;->a:Lcom/estrongs/android/ui/dialog/hq;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/hq;->l(Lcom/estrongs/android/ui/dialog/hq;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
