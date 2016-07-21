.class Lcom/estrongs/android/pop/app/diskusage/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/co;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V
    .locals 4

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->I(Lcom/estrongs/android/pop/app/diskusage/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/pop/app/diskusage/h;->c(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->f(Lcom/estrongs/android/pop/app/diskusage/h;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->n(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/ui/adapter/k;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/adapter/k;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;Ljava/io/File;)Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->J(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/view/dv;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->K(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/view/dv;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "du://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/diskusage/h;->q(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/estrongs/android/view/dv;->a(Ljava/lang/String;Z)V

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->k(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/io/File;)Lcom/estrongs/fs/util/g;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;J)J

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->c(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/widget/bh;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/diskusage/h;->L(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/widget/bh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;Lcom/estrongs/android/widget/bh;)Lcom/estrongs/android/widget/bh;

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->c(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/widget/bh;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->c(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/widget/bh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/widget/bh;->a()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->c(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/widget/bh;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/fs/util/g;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/widget/bh;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->c(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/widget/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    const v2, 0x7f080403

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/android/pop/app/diskusage/h;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/bh;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->c(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/widget/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->b(Lcom/estrongs/android/pop/app/diskusage/h;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/widget/bh;->b(J)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/h;->g()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/q;->a:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/diskusage/h;->M(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
