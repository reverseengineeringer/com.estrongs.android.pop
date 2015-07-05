.class Lcom/estrongs/android/view/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/am;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/am;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ap;->a:Lcom/estrongs/android/view/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/ap;->a:Lcom/estrongs/android/view/am;

    iget-object v0, v0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->z(Lcom/estrongs/android/view/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ap;->a:Lcom/estrongs/android/view/am;

    iget-object v0, v0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->l(Lcom/estrongs/android/view/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ap;->a:Lcom/estrongs/android/view/am;

    iget-object v0, v0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->b(Lcom/estrongs/android/view/ak;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ap;->a:Lcom/estrongs/android/view/am;

    iget-object v0, v0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->b(Lcom/estrongs/android/view/ak;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/ap;->a:Lcom/estrongs/android/view/am;

    iget-object v0, v0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->o(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ap;->a:Lcom/estrongs/android/view/am;

    iget-object v0, v0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->A(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b031b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
