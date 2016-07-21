.class Lcom/estrongs/android/ui/e/ko;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/estrongs/android/view/a/a;

.field final synthetic c:Lcom/estrongs/android/ui/e/km;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/km;Landroid/widget/Button;Lcom/estrongs/android/view/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ko;->c:Lcom/estrongs/android/ui/e/km;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/ko;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/estrongs/android/ui/e/ko;->b:Lcom/estrongs/android/view/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ko;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ko;->b:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/view/a/a;->c()Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ko;->b:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/view/a/a;->c()Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ko;->b:Lcom/estrongs/android/view/a/a;

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
