.class public abstract Lcom/estrongs/android/ui/e/jc;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field protected b:Landroid/view/WindowManager$LayoutParams;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/view/WindowManager;

.field private e:Z

.field private f:Z

.field private g:Lcom/estrongs/android/ui/e/jj;

.field private h:I

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/estrongs/android/ui/e/jc;->h:I

    new-instance v0, Lcom/estrongs/android/ui/e/jd;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/jd;-><init>(Lcom/estrongs/android/ui/e/jc;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/jc;->j:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/estrongs/android/ui/e/jc;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/e/jc;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/jc;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/jc;->d:Landroid/view/WindowManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/jc;->i:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/jc;->b()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/jc;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/jc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/e/jc;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/jc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/e/jc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/jc;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/e/jc;)Lcom/estrongs/android/ui/e/jj;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->g:Lcom/estrongs/android/ui/e/jj;

    return-object v0
.end method

.method private e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jc;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/jc;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->g:Lcom/estrongs/android/ui/e/jj;

    instance-of v0, v0, Lcom/estrongs/android/ui/e/jp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->g:Lcom/estrongs/android/ui/e/jj;

    check-cast v0, Lcom/estrongs/android/ui/e/jp;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/jp;->c()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->i:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/e/ji;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/ji;-><init>(Lcom/estrongs/android/ui/e/jc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->g:Lcom/estrongs/android/ui/e/jj;

    invoke-interface {v0, p1}, Lcom/estrongs/android/ui/e/jj;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/jc;->e()V

    return-void
.end method

.method protected b()V
    .locals 4

    const/4 v2, -0x1

    const/4 v3, -0x2

    new-instance v0, Lcom/estrongs/android/ui/e/je;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jc;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/e/je;-><init>(Lcom/estrongs/android/ui/e/jc;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/jc;->c:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/jc;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->b:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->b:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->b:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/ui/e/jf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/jf;-><init>(Lcom/estrongs/android/ui/e/jc;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/jc;->e:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/e/jg;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jc;->a:Landroid/content/Context;

    iget v2, p0, Lcom/estrongs/android/ui/e/jc;->h:I

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/ui/e/jg;-><init>(Lcom/estrongs/android/ui/e/jc;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/jc;->g:Lcom/estrongs/android/ui/e/jj;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/ui/e/jb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/ui/e/jb;

    invoke-interface {v0}, Lcom/estrongs/android/ui/e/jb;->t()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/jc;->g:Lcom/estrongs/android/ui/e/jj;

    invoke-interface {v2}, Lcom/estrongs/android/ui/e/jj;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/estrongs/android/ui/e/jh;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jc;->a:Landroid/content/Context;

    iget v2, p0, Lcom/estrongs/android/ui/e/jc;->h:I

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/ui/e/jh;-><init>(Lcom/estrongs/android/ui/e/jc;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/jc;->g:Lcom/estrongs/android/ui/e/jj;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jc;->g:Lcom/estrongs/android/ui/e/jj;

    invoke-interface {v1}, Lcom/estrongs/android/ui/e/jj;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/jc;->f:Z

    return v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/jc;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jc;->c:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/jc;->f:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/jc;->a()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
