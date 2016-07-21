.class public Lcom/estrongs/android/pop/app/analysis/view/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Lcom/estrongs/android/pop/app/analysis/view/i;

.field private d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

.field private e:Landroid/widget/PopupWindow;

.field private f:Lcom/estrongs/android/ui/dialog/ci;

.field private g:Landroid/os/Handler;

.field private h:Z

.field private i:Z

.field private j:Lcom/estrongs/android/pop/app/analysis/view/h;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->g:Landroid/os/Handler;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->b:Landroid/view/View;

    iput-boolean p3, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->h:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/b;->f()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/b;->g()V

    return-void
.end method

.method private a(I)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/view/b;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->e:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/analysis/view/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/analysis/view/b;)Lcom/estrongs/android/pop/app/analysis/view/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->c:Lcom/estrongs/android/pop/app/analysis/view/i;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/analysis/view/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/b;->i()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/analysis/view/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->i:Z

    return v0
.end method

.method private f()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/i;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->h:Z

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/view/i;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->c:Lcom/estrongs/android/pop/app/analysis/view/i;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->c:Lcom/estrongs/android/pop/app/analysis/view/i;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/view/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/view/e;-><init>(Lcom/estrongs/android/pop/app/analysis/view/b;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->a(Lcom/estrongs/android/pop/app/analysis/view/r;)V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/analysis/view/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/b;->k()V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/analysis/view/b;)Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    return-object v0
.end method

.method private g()V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, 0x0

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/view/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/view/f;-><init>(Lcom/estrongs/android/pop/app/analysis/view/b;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(II)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->e:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->e:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->e:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030030

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/analysis/view/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->f:Lcom/estrongs/android/ui/dialog/ci;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    const v2, 0x7f0803e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080229

    new-instance v2, Lcom/estrongs/android/pop/app/analysis/view/g;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/analysis/view/g;-><init>(Lcom/estrongs/android/pop/app/analysis/view/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080225

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->f:Lcom/estrongs/android/ui/dialog/ci;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->f:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method

.method private i()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->j:Lcom/estrongs/android/pop/app/analysis/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->j:Lcom/estrongs/android/pop/app/analysis/view/h;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/analysis/view/h;->a()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->i:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->c:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/b;->a()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/view/b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/b;->j()V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->f:Lcom/estrongs/android/ui/dialog/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->f:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->f:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->c:Lcom/estrongs/android/pop/app/analysis/view/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->i:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/b;->j()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/analysis/AnalysisResultActivity;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/b;->k()V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/analysis/view/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->j:Lcom/estrongs/android/pop/app/analysis/view/h;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->c:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->b()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/b;->j()V

    :cond_2
    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->c:Lcom/estrongs/android/pop/app/analysis/view/i;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/view/i;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->i:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/b;->k()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->h:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->h:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->b:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/view/d;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/analysis/view/d;-><init>(Lcom/estrongs/android/pop/app/analysis/view/b;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    const v2, 0x7f07007a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/analysis/view/b;->a(I)I

    move-result v0

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/analysis/view/b;->a(I)I

    move-result v2

    const/16 v3, 0x13

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->b:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->a()V

    goto :goto_0
.end method

.method public c()V
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getLocationOnScreen([I)V

    aget v1, v0, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->e:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->g:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/view/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/view/c;-><init>(Lcom/estrongs/android/pop/app/analysis/view/b;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->d:Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/AnalysisLoadingFloatView;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->c:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->a()V

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->c:Lcom/estrongs/android/pop/app/analysis/view/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/view/i;->c()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/view/b;->h()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/b;->a:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->at()Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "A_loading_back"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "analysis"

    const-string v2, "A_loading_back"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
