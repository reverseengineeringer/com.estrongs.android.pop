.class Lcom/estrongs/android/view/bu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/br;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/br;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bu;->a:Lcom/estrongs/android/view/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->a:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->z(Lcom/estrongs/android/view/bo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->a:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->l(Lcom/estrongs/android/view/bo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->a:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->b(Lcom/estrongs/android/view/bo;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->a:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->b(Lcom/estrongs/android/view/bo;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->a:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->o(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/bu;->a:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->A(Lcom/estrongs/android/view/bo;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080696

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
