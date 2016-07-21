.class Landroid/support/v4/widget/bv;
.super Landroid/support/v4/view/a;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/SlidingPaneLayout;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/widget/bv;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/bv;->b:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/support/v4/view/a/g;Landroid/support/v4/view/a/g;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/bv;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/g;->a(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->b(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/g;->c(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->d(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/support/v4/view/a/g;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->c(Z)V

    invoke-virtual {p2}, Landroid/support/v4/view/a/g;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/support/v4/view/a/g;->q()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/support/v4/view/a/g;->s()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/support/v4/view/a/g;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->h(Z)V

    invoke-virtual {p2}, Landroid/support/v4/view/a/g;->k()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->f(Z)V

    invoke-virtual {p2}, Landroid/support/v4/view/a/g;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->a(Z)V

    invoke-virtual {p2}, Landroid/support/v4/view/a/g;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->b(Z)V

    invoke-virtual {p2}, Landroid/support/v4/view/a/g;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->d(Z)V

    invoke-virtual {p2}, Landroid/support/v4/view/a/g;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->e(Z)V

    invoke-virtual {p2}, Landroid/support/v4/view/a/g;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->g(Z)V

    invoke-virtual {p2}, Landroid/support/v4/view/a/g;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->a(I)V

    invoke-virtual {p2}, Landroid/support/v4/view/a/g;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/g;->b(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/bv;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->e(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/g;)V
    .locals 4

    invoke-static {p2}, Landroid/support/v4/view/a/g;->a(Landroid/support/v4/view/a/g;)Landroid/support/v4/view/a/g;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/support/v4/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/g;)V

    invoke-direct {p0, p2, v0}, Landroid/support/v4/widget/bv;->a(Landroid/support/v4/view/a/g;Landroid/support/v4/view/a/g;)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/g;->t()V

    const-class v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/g;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/g;->a(Landroid/view/View;)V

    invoke-static {p1}, Landroid/support/v4/view/cn;->i(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/g;->c(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/bv;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/bv;->a:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/bv;->a(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/cn;->c(Landroid/view/View;I)V

    invoke-virtual {p2, v2}, Landroid/support/v4/view/a/g;->b(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/bv;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
