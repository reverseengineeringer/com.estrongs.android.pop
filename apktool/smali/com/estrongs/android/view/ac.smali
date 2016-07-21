.class Lcom/estrongs/android/view/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/y;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ac;->a:Lcom/estrongs/android/view/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->a:Lcom/estrongs/android/view/y;

    invoke-static {v0}, Lcom/estrongs/android/view/y;->b(Lcom/estrongs/android/view/y;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->a:Lcom/estrongs/android/view/y;

    invoke-static {v0}, Lcom/estrongs/android/view/y;->c(Lcom/estrongs/android/view/y;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/estrongs/android/view/y;->h()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/view/y;->h()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/af;

    invoke-virtual {v0}, Lcom/estrongs/android/view/af;->aE()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ac;->a:Lcom/estrongs/android/view/y;

    invoke-static {v0}, Lcom/estrongs/android/view/y;->c(Lcom/estrongs/android/view/y;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
