.class public Lcom/estrongs/android/pop/app/finder/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/estrongs/android/pop/app/finder/a/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/PopupWindow;

.field private c:Landroid/view/View;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private f:Lcom/estrongs/android/pop/app/finder/a/a;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/support/design/widget/FloatingActionButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/finder/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/finder/f;->c()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/finder/f;->e()V

    return-void
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->a:Landroid/content/Context;

    const v1, 0x7f0300c2

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->c:Landroid/view/View;

    const v1, 0x7f0e03cd

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->c:Landroid/view/View;

    const v1, 0x7f0e03d0

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->c:Landroid/view/View;

    const v1, 0x7f0e03d1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->c:Landroid/view/View;

    const v1, 0x7f0e03d2

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->c:Landroid/view/View;

    const v1, 0x7f0e03cf

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bl;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->j:Landroid/support/design/widget/FloatingActionButton;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->j:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/f;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/f;->a:Landroid/content/Context;

    const v2, 0x7f080221

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/f;->a:Landroid/content/Context;

    const v2, 0x7f080227

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/f;->a:Landroid/content/Context;

    const v2, 0x7f080226

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/pop/app/finder/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/finder/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->f:Lcom/estrongs/android/pop/app/finder/a/a;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/f;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/finder/f;->f:Lcom/estrongs/android/pop/app/finder/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->f:Lcom/estrongs/android/pop/app/finder/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/a/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->f:Lcom/estrongs/android/pop/app/finder/a/a;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/finder/a/a;->a(Lcom/estrongs/android/pop/app/finder/a/b;)V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "finder://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/finder/f;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->f:Lcom/estrongs/android/pop/app/finder/a/a;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/app/finder/a/a;->notifyItemChanged(I)V

    iget-object v0, p1, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;->d:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    sget-object v1, Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;->Additional:Lcom/estrongs/android/pop/app/finder/data/FinderGroupData$GroupType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/finder/a;->a()Lcom/estrongs/android/pop/app/finder/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/a;->g()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->f:Lcom/estrongs/android/pop/app/finder/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/a/a;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/finder/data/FinderGroupData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->f:Lcom/estrongs/android/pop/app/finder/a/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/finder/a/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->f:Lcom/estrongs/android/pop/app/finder/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/a/a;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    const v1, 0x7f09017a

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/app/finder/a;->a()Lcom/estrongs/android/pop/app/finder/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/a;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->h:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/app/finder/a;->a()Lcom/estrongs/android/pop/app/finder/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/a;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->i:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/app/finder/a;->a()Lcom/estrongs/android/pop/app/finder/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/a;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/finder/f;->f()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->j:Landroid/support/design/widget/FloatingActionButton;

    if-ne p1, v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/app/finder/a;->a()Lcom/estrongs/android/pop/app/finder/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/a;->c()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->c:Landroid/view/View;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/finder/a;->a()Lcom/estrongs/android/pop/app/finder/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/a;->c()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/finder/a;->a()Lcom/estrongs/android/pop/app/finder/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/a;->c()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/finder/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
