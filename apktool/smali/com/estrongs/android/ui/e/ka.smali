.class public abstract Lcom/estrongs/android/ui/e/ka;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/WindowManager;

.field protected b:Landroid/content/Context;

.field protected c:Landroid/widget/LinearLayout;

.field protected d:Landroid/view/WindowManager$LayoutParams;

.field protected e:Lcom/estrongs/android/ui/e/kh;

.field protected f:I

.field private g:Z

.field private h:Z

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/estrongs/android/ui/e/ka;->f:I

    new-instance v0, Lcom/estrongs/android/ui/e/kb;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/kb;-><init>(Lcom/estrongs/android/ui/e/ka;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/ka;->j:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ka;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/e/ka;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/ka;->h:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/ka;->a:Landroid/view/WindowManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/ka;->i:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/ka;->b()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/ka;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/e/ka;->h:Z

    return p1
.end method

.method private e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ka;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ka;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->e:Lcom/estrongs/android/ui/e/kh;

    instance-of v0, v0, Lcom/estrongs/android/ui/e/kr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->e:Lcom/estrongs/android/ui/e/kh;

    check-cast v0, Lcom/estrongs/android/ui/e/kr;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/kr;->c()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->i:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/e/kg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/kg;-><init>(Lcom/estrongs/android/ui/e/ka;)V

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

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->e:Lcom/estrongs/android/ui/e/kh;

    invoke-interface {v0, p1}, Lcom/estrongs/android/ui/e/kh;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/ka;->e()V

    return-void
.end method

.method protected a(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ka;->i:Landroid/os/Handler;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ka;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/estrongs/android/ui/e/ka;->h:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ka;->i:Landroid/os/Handler;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ka;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 6

    const v5, 0x7f070079

    const/4 v3, -0x2

    new-instance v0, Lcom/estrongs/android/ui/e/kc;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ka;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/e/kc;-><init>(Lcom/estrongs/android/ui/e/ka;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/ka;->c:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v1, Landroid/graphics/Rect;->top:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/ka;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ka;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/pop/utils/cu;->f(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->d:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->d:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->c:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->c:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->c:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/e/kd;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/kd;-><init>(Lcom/estrongs/android/ui/e/ka;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/ka;->g:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/e/ke;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/ka;->b:Landroid/content/Context;

    iget v4, p0, Lcom/estrongs/android/ui/e/ka;->f:I

    invoke-direct {v0, p0, v3, v4}, Lcom/estrongs/android/ui/e/ke;-><init>(Lcom/estrongs/android/ui/e/ka;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/ka;->e:Lcom/estrongs/android/ui/e/kh;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->c:Landroid/widget/LinearLayout;

    const/16 v3, 0x55

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/ui/e/jz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/ui/e/jz;

    invoke-interface {v0}, Lcom/estrongs/android/ui/e/jz;->y()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/ui/e/ka;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ka;->e:Lcom/estrongs/android/ui/e/kh;

    invoke-interface {v1}, Lcom/estrongs/android/ui/e/kh;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->d:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    new-instance v0, Lcom/estrongs/android/ui/e/kf;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ka;->b:Landroid/content/Context;

    iget v3, p0, Lcom/estrongs/android/ui/e/ka;->f:I

    invoke-direct {v0, p0, v1, v3}, Lcom/estrongs/android/ui/e/kf;-><init>(Lcom/estrongs/android/ui/e/ka;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/ka;->e:Lcom/estrongs/android/ui/e/kh;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ka;->e:Lcom/estrongs/android/ui/e/kh;

    invoke-interface {v1}, Lcom/estrongs/android/ui/e/kh;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/ka;->h:Z

    return v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ka;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ka;->c:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/ka;->h:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/ka;->a()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
