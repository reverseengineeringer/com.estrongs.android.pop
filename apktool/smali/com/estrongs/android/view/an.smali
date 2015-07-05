.class Lcom/estrongs/android/view/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a/m;

.field final synthetic b:Lcom/estrongs/android/view/am;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/am;Lcom/estrongs/a/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/an;->b:Lcom/estrongs/android/view/am;

    iput-object p2, p0, Lcom/estrongs/android/view/an;->a:Lcom/estrongs/a/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v2, 0x8

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/an;->b:Lcom/estrongs/android/view/am;

    iget-object v0, v0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->l(Lcom/estrongs/android/view/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/an;->b:Lcom/estrongs/android/view/am;

    iget-object v0, v0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->o(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/an;->b:Lcom/estrongs/android/view/am;

    iget-object v0, v0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->b(Lcom/estrongs/android/view/ak;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/an;->b:Lcom/estrongs/android/view/am;

    iget-object v0, v0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/ak;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/an;->a:Lcom/estrongs/a/a/m;

    iget-boolean v0, v0, Lcom/estrongs/a/a/m;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/an;->a:Lcom/estrongs/a/a/m;

    iget-boolean v0, v0, Lcom/estrongs/a/a/m;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/an;->a:Lcom/estrongs/a/a/m;

    iget-boolean v0, v0, Lcom/estrongs/a/a/m;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/an;->b:Lcom/estrongs/android/view/am;

    iget-object v0, v0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->w(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/an;->b:Lcom/estrongs/android/view/am;

    iget-object v1, v1, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/ak;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/an;->b:Lcom/estrongs/android/view/am;

    iget-object v0, v0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->x(Lcom/estrongs/android/view/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/an;->b:Lcom/estrongs/android/view/am;

    iget-object v0, v0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->x(Lcom/estrongs/android/view/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
