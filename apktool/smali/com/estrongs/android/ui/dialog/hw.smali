.class Lcom/estrongs/android/ui/dialog/hw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/hn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hn;->b(Lcom/estrongs/android/ui/dialog/hn;)Lcom/estrongs/fs/b/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/b/am;->b()Lcom/estrongs/fs/b/an;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/hn;->c:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hn;->h(Lcom/estrongs/android/ui/dialog/hn;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b0104

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hn;->i(Lcom/estrongs/android/ui/dialog/hn;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, v0, Lcom/estrongs/fs/b/an;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/hn;->j(Lcom/estrongs/android/ui/dialog/hn;)Landroid/widget/TextView;

    move-result-object v2

    iget-wide v4, v0, Lcom/estrongs/fs/b/an;->c:J

    invoke-static {v1, v2, v4, v5}, Lcom/estrongs/android/ui/dialog/hn;->a(Lcom/estrongs/android/ui/dialog/hn;Landroid/widget/TextView;J)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hn;->a(Lcom/estrongs/android/ui/dialog/hn;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/hn;->k(Lcom/estrongs/android/ui/dialog/hn;)Landroid/widget/TextView;

    move-result-object v2

    iget-wide v4, v0, Lcom/estrongs/fs/b/an;->d:J

    invoke-static {v1, v2, v4, v5}, Lcom/estrongs/android/ui/dialog/hn;->a(Lcom/estrongs/android/ui/dialog/hn;Landroid/widget/TextView;J)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hn;->b(Lcom/estrongs/android/ui/dialog/hn;)Lcom/estrongs/fs/b/am;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hn;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/hn;->b(Lcom/estrongs/android/ui/dialog/hn;)Lcom/estrongs/fs/b/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/b/am;->b()Lcom/estrongs/fs/b/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/a;->b(Lcom/estrongs/fs/b/an;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/estrongs/fs/b/an;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hn;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/estrongs/fs/b/an;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/hn;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hw;->a:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/hn;->i(Lcom/estrongs/android/ui/dialog/hn;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
