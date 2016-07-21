.class public abstract Lcom/estrongs/android/ui/e/ki;
.super Lcom/estrongs/android/ui/e/ka;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/ka;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 4

    const/4 v3, -0x2

    new-instance v0, Lcom/estrongs/android/ui/e/kj;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ki;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/e/kj;-><init>(Lcom/estrongs/android/ui/e/ki;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/ki;->c:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ki;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->top:I

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/e/ki;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ki;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ki;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ki;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/pop/utils/cu;->f(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ki;->d:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ki;->d:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ki;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ki;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ki;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/ui/e/kk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/kk;-><init>(Lcom/estrongs/android/ui/e/ki;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/estrongs/android/ui/e/kl;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ki;->b:Landroid/content/Context;

    iget v3, p0, Lcom/estrongs/android/ui/e/ki;->f:I

    invoke-direct {v0, p0, v2, v3}, Lcom/estrongs/android/ui/e/kl;-><init>(Lcom/estrongs/android/ui/e/ki;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/ki;->e:Lcom/estrongs/android/ui/e/kh;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ki;->c:Landroid/widget/LinearLayout;

    const/16 v2, 0x35

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ki;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/ui/e/jz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ki;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/ui/e/jz;

    invoke-interface {v0}, Lcom/estrongs/android/ui/e/jz;->y()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ki;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ki;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ki;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070078

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ki;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ki;->e:Lcom/estrongs/android/ui/e/kh;

    invoke-interface {v2}, Lcom/estrongs/android/ui/e/kh;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
