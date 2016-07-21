.class public Lcom/estrongs/android/ui/view/ba;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/estrongs/android/ui/view/bc;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/support/v4/view/ViewPager;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/view/View;

.field private h:Lcom/estrongs/android/ui/view/ay;

.field private i:Landroid/content/Context;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/ui/view/ba;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/ui/view/ba;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ba;->b:Lcom/estrongs/android/ui/view/bc;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ba;->c:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ba;->d:Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ba;->e:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ba;->f:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ba;->g:Landroid/view/View;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ba;->h:Lcom/estrongs/android/ui/view/ay;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ba;->i:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/view/ba;->j:I

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ba;->i:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ba;->c:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/estrongs/android/ui/view/bc;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/view/bc;-><init>(Lcom/estrongs/android/ui/view/ba;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ba;->b:Lcom/estrongs/android/ui/view/bc;

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ba;->d()V

    new-instance v0, Lcom/estrongs/android/ui/view/ay;

    invoke-direct {v0}, Lcom/estrongs/android/ui/view/ay;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ba;->h:Lcom/estrongs/android/ui/view/ay;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->d:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ba;->h:Lcom/estrongs/android/ui/view/ay;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bw;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/ba;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/ba;->j:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/ay;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->h:Lcom/estrongs/android/ui/view/ay;

    return-object v0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/ba;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/view/ba;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/ba;)Lcom/estrongs/android/ui/view/bc;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->b:Lcom/estrongs/android/ui/view/bc;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/ba;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/ba;->j:I

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/ba;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0301a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v0, 0x7f0e068a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ba;->d:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f0e068c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ba;->e:Landroid/widget/TextView;

    const v0, 0x7f0e068b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ba;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->d:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/estrongs/android/ui/view/bb;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/view/bb;-><init>(Lcom/estrongs/android/ui/view/ba;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/el;)V

    :cond_0
    iput-object v1, p0, Lcom/estrongs/android/ui/view/ba;->g:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/view/ba;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->d:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->g:Landroid/view/View;

    return-object v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->b:Lcom/estrongs/android/ui/view/bc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/bc;->removeMessages(I)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->h:Lcom/estrongs/android/ui/view/ay;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ay;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->d:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ba;->h:Lcom/estrongs/android/ui/view/ay;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bw;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ba;->d:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
