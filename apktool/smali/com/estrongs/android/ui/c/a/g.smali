.class Lcom/estrongs/android/ui/c/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/esclasses/d;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/a/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/g;->a:Lcom/estrongs/android/ui/c/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/g;->a:Lcom/estrongs/android/ui/c/a/f;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/a/f;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/g;->a:Lcom/estrongs/android/ui/c/a/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/a/f;->a(Lcom/estrongs/android/ui/c/a/f;)I

    move-result v0

    if-eq v3, v0, :cond_0

    sget v0, Lcom/estrongs/android/ui/c/b/f;->i:I

    div-int v0, v3, v0

    sget v1, Lcom/estrongs/android/ui/c/a/d;->c:I

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/g;->a:Lcom/estrongs/android/ui/c/a/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/a/f;->b(Lcom/estrongs/android/ui/c/a/f;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v2, v1, v0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/g;->a:Lcom/estrongs/android/ui/c/a/f;

    iget-object v4, v0, Lcom/estrongs/android/ui/c/a/f;->b:Landroid/view/View;

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/estrongs/android/ui/c/a/g;->a:Lcom/estrongs/android/ui/c/a/f;

    iget-object v5, v5, Lcom/estrongs/android/ui/c/a/f;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/e;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/ui/c/a/g;->a:Lcom/estrongs/android/ui/c/a/f;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/a/f;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v4, v0, v5, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/g;->a:Lcom/estrongs/android/ui/c/a/f;

    invoke-static {v0, v3}, Lcom/estrongs/android/ui/c/a/f;->a(Lcom/estrongs/android/ui/c/a/f;I)I

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method
