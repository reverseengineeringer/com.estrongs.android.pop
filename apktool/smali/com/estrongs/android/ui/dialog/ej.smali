.class Lcom/estrongs/android/ui/dialog/ej;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/eb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/eb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ej;->a:Lcom/estrongs/android/ui/dialog/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ej;->a:Lcom/estrongs/android/ui/dialog/eb;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/eb;->a(Lcom/estrongs/android/ui/dialog/eb;)Lcom/estrongs/fs/b/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/b/am;->b()Lcom/estrongs/fs/b/an;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ej;->a:Lcom/estrongs/android/ui/dialog/eb;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/eb;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/estrongs/fs/b/an;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ej;->a:Lcom/estrongs/android/ui/dialog/eb;

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/eb;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/estrongs/fs/b/an;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ej;->a:Lcom/estrongs/android/ui/dialog/eb;

    iget-object v3, v3, Lcom/estrongs/android/ui/dialog/eb;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ej;->a:Lcom/estrongs/android/ui/dialog/eb;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ej;->a:Lcom/estrongs/android/ui/dialog/eb;

    iget-object v2, v2, Lcom/estrongs/android/ui/dialog/eb;->b:Landroid/widget/TextView;

    iget-wide v4, v0, Lcom/estrongs/fs/b/an;->c:J

    invoke-static {v1, v2, v4, v5}, Lcom/estrongs/android/ui/dialog/eb;->a(Lcom/estrongs/android/ui/dialog/eb;Landroid/widget/TextView;J)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ej;->a:Lcom/estrongs/android/ui/dialog/eb;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/eb;->c(Lcom/estrongs/android/ui/dialog/eb;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ej;->a:Lcom/estrongs/android/ui/dialog/eb;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ej;->a:Lcom/estrongs/android/ui/dialog/eb;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/eb;->g(Lcom/estrongs/android/ui/dialog/eb;)Landroid/widget/TextView;

    move-result-object v2

    iget-wide v4, v0, Lcom/estrongs/fs/b/an;->d:J

    invoke-static {v1, v2, v4, v5}, Lcom/estrongs/android/ui/dialog/eb;->a(Lcom/estrongs/android/ui/dialog/eb;Landroid/widget/TextView;J)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ej;->a:Lcom/estrongs/android/ui/dialog/eb;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/eb;->a(Lcom/estrongs/android/ui/dialog/eb;)Lcom/estrongs/fs/b/am;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ej;->a:Lcom/estrongs/android/ui/dialog/eb;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/eb;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ej;->a:Lcom/estrongs/android/ui/dialog/eb;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/eb;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ej;->a:Lcom/estrongs/android/ui/dialog/eb;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/eb;->a(Lcom/estrongs/android/ui/dialog/eb;)Lcom/estrongs/fs/b/am;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/b/am;->b()Lcom/estrongs/fs/b/an;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/a;->b(Lcom/estrongs/fs/b/an;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
