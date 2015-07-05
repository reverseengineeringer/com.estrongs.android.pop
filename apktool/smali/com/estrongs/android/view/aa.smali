.class Lcom/estrongs/android/view/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/u;

    invoke-static {v0}, Lcom/estrongs/android/view/u;->b(Lcom/estrongs/android/view/u;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/estrongs/android/view/u;->g()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    if-lez v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/view/u;->g()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    iget-object v2, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/u;

    invoke-static {v2}, Lcom/estrongs/android/view/u;->a(Lcom/estrongs/android/view/u;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/esclasses/ESImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0202d5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/u;

    invoke-static {v2}, Lcom/estrongs/android/view/u;->b(Lcom/estrongs/android/view/u;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/view/u;->g()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ac;->aq()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/aa;->a:Lcom/estrongs/android/view/u;

    invoke-static {v0}, Lcom/estrongs/android/view/u;->b(Lcom/estrongs/android/view/u;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method
