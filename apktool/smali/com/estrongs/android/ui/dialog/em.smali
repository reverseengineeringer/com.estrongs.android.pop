.class Lcom/estrongs/android/ui/dialog/em;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ee;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ee;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/em;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/em;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ee;->d(Lcom/estrongs/android/ui/dialog/ee;)Lcom/estrongs/fs/b/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->b()Lcom/estrongs/fs/b/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/em;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/ee;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/estrongs/fs/b/ap;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/em;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/ee;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/estrongs/fs/b/ap;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/em;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/ee;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/em;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/em;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/ee;->b:Landroid/widget/TextView;

    iget-wide v4, v0, Lcom/estrongs/fs/b/ap;->c:J

    invoke-static {v1, v2, v4, v5}, Lcom/estrongs/android/ui/dialog/ee;->a(Lcom/estrongs/android/ui/dialog/ee;Landroid/widget/TextView;J)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/em;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ee;->f(Lcom/estrongs/android/ui/dialog/ee;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/em;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/em;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/ee;->j(Lcom/estrongs/android/ui/dialog/ee;)Landroid/widget/TextView;

    move-result-object v2

    iget-wide v4, v0, Lcom/estrongs/fs/b/ap;->d:J

    invoke-static {v1, v2, v4, v5}, Lcom/estrongs/android/ui/dialog/ee;->a(Lcom/estrongs/android/ui/dialog/ee;Landroid/widget/TextView;J)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/em;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ee;->d(Lcom/estrongs/android/ui/dialog/ee;)Lcom/estrongs/fs/b/ao;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/em;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ee;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/em;->a:Lcom/estrongs/android/ui/dialog/ee;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ee;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/em;->a:Lcom/estrongs/android/ui/dialog/ee;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ee;->d(Lcom/estrongs/android/ui/dialog/ee;)Lcom/estrongs/fs/b/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/b/ao;->b()Lcom/estrongs/fs/b/ap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/a;->b(Lcom/estrongs/fs/b/ap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
