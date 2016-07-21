.class Lcom/estrongs/android/view/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/m;

.field final synthetic b:Lcom/estrongs/android/view/br;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/br;Lcom/estrongs/a/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iput-object p2, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/a/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->z(Lcom/estrongs/android/view/bo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->l(Lcom/estrongs/android/view/bo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->b(Lcom/estrongs/android/view/bo;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->b(Lcom/estrongs/android/view/bo;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->A(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080696

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/a/a/m;

    iget-boolean v0, v0, Lcom/estrongs/a/a/m;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/a/a/m;

    iget-boolean v0, v0, Lcom/estrongs/a/a/m;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/a/a/m;

    iget-boolean v0, v0, Lcom/estrongs/a/a/m;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->w(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v1, v1, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    iget-object v2, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v2, v2, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v2}, Lcom/estrongs/android/view/bo;->m(Lcom/estrongs/android/view/bo;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/a/a/m;

    iget-wide v4, v4, Lcom/estrongs/a/a/m;->f:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/a/a/m;

    iget v4, v4, Lcom/estrongs/a/a/m;->b:I

    invoke-static {v1, v2, v3, v4}, Lcom/estrongs/android/view/bo;->a(Lcom/estrongs/android/view/bo;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->x(Lcom/estrongs/android/view/bo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->B(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/a/a/m;

    iget v2, v2, Lcom/estrongs/a/a/m;->b:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->o(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/a/a/m;

    iget-boolean v0, v0, Lcom/estrongs/a/a/m;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->o(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->b(Lcom/estrongs/android/view/bo;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->t(Lcom/estrongs/android/view/bo;)I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->o(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->a:Lcom/estrongs/a/a/m;

    iget-boolean v0, v0, Lcom/estrongs/a/a/m;->n:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->x(Lcom/estrongs/android/view/bo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/bv;->b:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->x(Lcom/estrongs/android/view/bo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
