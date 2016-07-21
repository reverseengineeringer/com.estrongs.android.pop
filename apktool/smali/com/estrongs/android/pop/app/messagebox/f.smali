.class public Lcom/estrongs/android/pop/app/messagebox/f;
.super Landroid/widget/HorizontalScrollView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Landroid/view/GestureDetector;

.field private g:Lcom/estrongs/android/pop/app/messagebox/l;

.field private h:Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;Landroid/view/View;Landroid/view/View;Lcom/estrongs/android/pop/app/messagebox/l;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/messagebox/f;->a:I

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/f;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/messagebox/f;->h:Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;

    iput-object p5, p0, Lcom/estrongs/android/pop/app/messagebox/f;->g:Lcom/estrongs/android/pop/app/messagebox/l;

    invoke-direct {p0, p3, p4}, Lcom/estrongs/android/pop/app/messagebox/f;->a(Landroid/view/View;Landroid/view/View;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/f;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/messagebox/f;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/messagebox/f;->d:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/messagebox/f;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/messagebox/f;->a:I

    return p1
.end method

.method private a()V
    .locals 4

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/f;->b:Landroid/content/Context;

    new-instance v2, Lcom/estrongs/android/pop/app/messagebox/m;

    new-instance v3, Lcom/estrongs/android/pop/app/messagebox/g;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/messagebox/g;-><init>(Lcom/estrongs/android/pop/app/messagebox/f;)V

    invoke-direct {v2, p0, v3}, Lcom/estrongs/android/pop/app/messagebox/m;-><init>(Lcom/estrongs/android/pop/app/messagebox/f;Lcom/estrongs/android/pop/app/messagebox/k;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/f;->f:Landroid/view/GestureDetector;

    new-instance v0, Lcom/estrongs/android/pop/app/messagebox/h;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/messagebox/h;-><init>(Lcom/estrongs/android/pop/app/messagebox/f;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/f;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    const/4 v5, -0x2

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/messagebox/f;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/messagebox/f;->setHorizontalScrollBarEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/f;->setFillViewport(Z)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/messagebox/f;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/f;->b:Landroid/content/Context;

    const v1, 0x7f030120

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e04df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0e04e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f0e04e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/f;->b:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/estrongs/android/pop/app/messagebox/f;->c:I

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/android/pop/app/messagebox/f;->c:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lcom/estrongs/android/pop/app/messagebox/f;->c:I

    div-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/estrongs/android/pop/app/messagebox/f;->d:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/estrongs/android/pop/app/messagebox/f;->c:I

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/messagebox/f;)Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/f;->h:Lcom/estrongs/android/pop/app/messagebox/DisableScrollListView;

    return-object v0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/messagebox/f;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/f;->g:Lcom/estrongs/android/pop/app/messagebox/l;

    invoke-interface {v0, p0}, Lcom/estrongs/android/pop/app/messagebox/l;->c(Lcom/estrongs/android/pop/app/messagebox/f;)V

    new-instance v0, Lcom/estrongs/android/pop/app/messagebox/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/messagebox/j;-><init>(Lcom/estrongs/android/pop/app/messagebox/f;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/f;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/messagebox/f;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/messagebox/f;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/messagebox/f;)Lcom/estrongs/android/pop/app/messagebox/l;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/f;->g:Lcom/estrongs/android/pop/app/messagebox/l;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/messagebox/f;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/f;->f:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/messagebox/f;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/messagebox/f;->a:I

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/messagebox/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/f;->b()V

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/messagebox/f;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/messagebox/f;->c:I

    return v0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/messagebox/f;->e:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/estrongs/android/pop/app/messagebox/f;->scrollTo(II)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/messagebox/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/messagebox/i;-><init>(Lcom/estrongs/android/pop/app/messagebox/f;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/messagebox/f;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
