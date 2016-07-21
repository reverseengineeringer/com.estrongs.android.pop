.class Lcom/estrongs/android/widget/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/an;->a:Lcom/estrongs/android/widget/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/an;->a:Lcom/estrongs/android/widget/aj;

    invoke-static {v0}, Lcom/estrongs/android/widget/aj;->b(Lcom/estrongs/android/widget/aj;)Lcom/estrongs/android/widget/RealViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getCurrentScreen()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/an;->a:Lcom/estrongs/android/widget/aj;

    invoke-static {v0}, Lcom/estrongs/android/widget/aj;->b(Lcom/estrongs/android/widget/aj;)Lcom/estrongs/android/widget/RealViewSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(I)V

    :cond_0
    return-void
.end method
