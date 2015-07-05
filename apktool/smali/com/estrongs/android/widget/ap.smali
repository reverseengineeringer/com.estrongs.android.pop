.class Lcom/estrongs/android/widget/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/ca;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ao;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/ap;->a:Lcom/estrongs/android/widget/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/android/widget/ap;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->a:Lcom/estrongs/android/widget/ao;

    iget-object v0, v0, Lcom/estrongs/android/widget/ao;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->a:Lcom/estrongs/android/widget/ao;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ao;->b()Lcom/estrongs/android/view/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/cd;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->a:Lcom/estrongs/android/widget/ao;

    iget-object v0, v0, Lcom/estrongs/android/widget/ao;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->a:Lcom/estrongs/android/widget/ao;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ao;->b()Lcom/estrongs/android/view/cd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/cd;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->a:Lcom/estrongs/android/widget/ao;

    iget-object v0, v0, Lcom/estrongs/android/widget/ao;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ap;->a:Lcom/estrongs/android/widget/ao;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ao;->b()Lcom/estrongs/android/view/cd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cd;->a(Z)V

    goto :goto_0
.end method
