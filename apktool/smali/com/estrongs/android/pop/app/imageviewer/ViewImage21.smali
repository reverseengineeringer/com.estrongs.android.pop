.class public Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;
.super Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/view/View;

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Lcom/estrongs/android/j/c;

.field private final I:Ljava/lang/Runnable;

.field private J:Lcom/estrongs/android/pop/app/imageviewer/a;

.field private K:Lcom/estrongs/android/pop/app/ag;

.field private L:Landroid/view/View;

.field private M:Lcom/estrongs/android/pop/app/x;

.field private N:I

.field private O:Lcom/estrongs/android/pop/app/imageviewer/cf;

.field private final P:Ljava/lang/Runnable;

.field private final Q:Ljava/lang/Runnable;

.field private R:I

.field private S:Lcom/estrongs/android/pop/app/imageviewer/q;

.field private T:J

.field a:Z

.field final b:Lcom/estrongs/android/pop/app/imageviewer/p;

.field protected c:I

.field protected d:Z

.field e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

.field f:Landroid/view/GestureDetector;

.field protected g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

.field protected h:Landroid/view/View;

.field protected i:Lcom/estrongs/android/widget/RealViewSwitcher;

.field protected j:Landroid/view/LayoutInflater;

.field protected k:Landroid/util/DisplayMetrics;

.field protected l:Ljava/lang/Runnable;

.field m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

.field n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

.field o:Landroid/view/animation/Animation;

.field p:Landroid/view/animation/Animation;

.field protected q:J

.field protected r:Landroid/view/ViewGroup$LayoutParams;

.field private t:Lcom/estrongs/android/pop/app/imageviewer/t;

.field private u:Landroid/net/Uri;

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Landroid/content/SharedPreferences;

.field private z:Lcom/estrongs/fs/b;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->v:Z

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/p;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/imageviewer/p;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:I

    iput v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->d:Z

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/z;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/imageviewer/z;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->z:Lcom/estrongs/fs/b;

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->H:Lcom/estrongs/android/j/c;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/as;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/as;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->I:Ljava/lang/Runnable;

    invoke-static {}, Lcom/estrongs/android/pop/app/ag;->g()Lcom/estrongs/android/pop/app/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/ag;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->M:Lcom/estrongs/android/pop/app/x;

    iput v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->N:I

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/cf;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/cf;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->O:Lcom/estrongs/android/pop/app/imageviewer/cf;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/bw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/bw;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/bt;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/bt;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->P:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/bu;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/bu;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->Q:Ljava/lang/Runnable;

    const/16 v0, 0x320

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->R:I

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:J

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Landroid/view/ViewGroup$LayoutParams;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->T:J

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;
    .locals 6

    const/4 v2, 0x1

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->z(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/estrongs/fs/util/a/d;

    invoke-direct {v4, v2}, Lcom/estrongs/fs/util/a/d;-><init>(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Ljava/lang/String;

    :cond_2
    const/4 v5, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v5, Lcom/estrongs/android/pop/m;

    invoke-direct {v5, p0}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    :cond_3
    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->z:Lcom/estrongs/fs/b;

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/pop/m;)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/app/imageviewer/q;)Lcom/estrongs/android/pop/app/imageviewer/q;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->S:Lcom/estrongs/android/pop/app/imageviewer/q;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/net/Uri;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    return-void
.end method

.method private b(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:Landroid/view/animation/Animation;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bn;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->setVisibility(I)V

    invoke-virtual {p1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h:Landroid/view/View;

    const v1, 0x7f0e0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020425

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private b(Landroid/net/Uri;)Z
    .locals 1

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:Landroid/view/animation/Animation;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bo;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bo;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->v:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:I

    return v0
.end method

.method private e(I)Lcom/estrongs/android/pop/app/imageviewer/an;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->J:Lcom/estrongs/android/pop/app/imageviewer/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/a;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Lcom/estrongs/android/pop/app/imageviewer/an;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->g()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->J:Lcom/estrongs/android/pop/app/imageviewer/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/a;->b(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->J:Lcom/estrongs/android/pop/app/imageviewer/a;

    return-object v0
.end method

.method private f()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->v:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private f(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->B:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->B:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->F:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/q;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->S:Lcom/estrongs/android/pop/app/imageviewer/q;

    return-object v0
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->v:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private g(I)V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g()V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->I:Ljava/lang/Runnable;

    return-object v0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/app/ag;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->L:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->L:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    return-object v0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->M:Lcom/estrongs/android/pop/app/x;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/x;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/x;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->M:Lcom/estrongs/android/pop/app/x;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->M:Lcom/estrongs/android/pop/app/x;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bc;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/x;->a(Lcom/estrongs/android/pop/app/ai;)V

    goto :goto_0
.end method

.method private j()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->N:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/j/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->H:Lcom/estrongs/android/j/c;

    return-object v0
.end method

.method private k()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->N:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->L:Landroid/view/View;

    const v1, 0x7f0e0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020402

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/ag;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/ag;

    return-object v0
.end method

.method private l()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->N:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->L:Landroid/view/View;

    const v1, 0x7f0e0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020403

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private m()V
    .locals 6

    const v0, 0x7f0e0368

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->setShowIcon(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->f()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ae;->a(Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->J()Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d013a

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v3, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02040b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f08007d

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v4, Lcom/estrongs/android/pop/app/imageviewer/bd;

    invoke-direct {v4, p0}, Lcom/estrongs/android/pop/app/imageviewer/bd;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v3, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02045e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0806e5

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v4, Lcom/estrongs/android/pop/app/imageviewer/be;

    invoke-direct {v4, p0}, Lcom/estrongs/android/pop/app/imageviewer/be;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v3, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02044a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0803de

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v4, Lcom/estrongs/android/pop/app/imageviewer/bg;

    invoke-direct {v4, p0}, Lcom/estrongs/android/pop/app/imageviewer/bg;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v3, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020450

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f080396

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v4, Lcom/estrongs/android/pop/app/imageviewer/bh;

    invoke-direct {v4, p0}, Lcom/estrongs/android/pop/app/imageviewer/bh;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v2, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02044c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0800ac

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/bi;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/imageviewer/bi;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/app/ag;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v2, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020402

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0801b2

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/bj;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/imageviewer/bj;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v2, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02043a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f08022e

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bk;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    return-void

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q()Z

    move-result v0

    return v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->l()V

    return-void
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/x;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->M:Lcom/estrongs/android/pop/app/x;

    return-object v0
.end method

.method private o()V
    .locals 5

    const v0, 0x7f0e044b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    const v1, 0x7f0e044c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->setPanelViewId(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->J()Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    const v1, 0x7f0d013a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v2, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020432

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0801af

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/bl;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/imageviewer/bl;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v2, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020402

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v3, 0x7f0801ac

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/bm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/bm;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    return-void
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i()V

    return-void
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s()Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    return-object v0
.end method

.method private q()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic r(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    return-object v0
.end method

.method private r()V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080396

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v3, 0x7f0c0002

    new-instance v4, Lcom/estrongs/android/pop/app/imageviewer/bs;

    invoke-direct {v4, p0, v2}, Lcom/estrongs/android/pop/app/imageviewer/bs;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v1, v4}, Lcom/estrongs/android/ui/dialog/cv;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f0800b0

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/bp;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/imageviewer/bp;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private s()Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    :cond_1
    :goto_1
    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/a;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/a;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;I)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->J:Lcom/estrongs/android/pop/app/imageviewer/a;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic s(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k()V

    return-void
.end method

.method static synthetic t(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r()V

    return-void
.end method

.method static synthetic u(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic v(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->P:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic w(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->R:I

    return v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected a()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/p;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->I:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/p;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    rem-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/cg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a()Lcom/estrongs/android/f/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a()Lcom/estrongs/android/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/f/a;->stop()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Lcom/estrongs/android/f/a;)V

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load-sucess::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load-error::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(ILcom/estrongs/android/pop/app/imageviewer/cg;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Landroid/view/ViewGroup;)Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(ILcom/estrongs/android/pop/app/imageviewer/cg;)V

    goto :goto_0
.end method

.method protected a(ILcom/estrongs/android/pop/app/imageviewer/cg;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(ILcom/estrongs/android/pop/app/imageviewer/cg;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(ILcom/estrongs/android/pop/app/imageviewer/cg;Ljava/lang/Runnable;)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e(I)Lcom/estrongs/android/pop/app/imageviewer/an;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/an;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:Lcom/estrongs/android/pop/app/imageviewer/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:Lcom/estrongs/android/pop/app/imageviewer/t;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/cb;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/imageviewer/cb;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;ILcom/estrongs/android/pop/app/imageviewer/cg;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2, p1}, Lcom/estrongs/android/pop/app/imageviewer/t;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/v;I)V

    goto :goto_0
.end method

.method a(IZ)V
    .locals 11

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, -0x1

    if-le p1, v0, :cond_16

    add-int/lit8 v0, v1, -0x2

    :goto_1
    if-gez v0, :cond_15

    move v6, v3

    :goto_2
    iput v6, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->S:Lcom/estrongs/android/pop/app/imageviewer/q;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/app/imageviewer/q;->a(I)V

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    if-le v6, v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->S:Lcom/estrongs/android/pop/app/imageviewer/q;

    add-int/lit8 v2, v6, -0x6

    add-int/lit8 v7, v6, 0xa

    invoke-virtual {v0, v2, v7}, Lcom/estrongs/android/pop/app/imageviewer/q;->a(II)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getDefaultScale()F

    move-result v0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getScale()F

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getDefaultScale()F

    move-result v2

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v8

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getDefaultScale()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(F)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/p;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v6}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f(I)V

    if-ne v1, v4, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(Z)V

    :goto_4
    rem-int/lit8 v8, v6, 0x3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v8}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/cg;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/estrongs/android/pop/app/imageviewer/cg;->a:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1, v6}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load-sucess::"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load-error::"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v4

    :goto_5
    iget-object v7, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iget-object v7, v7, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iget-object v7, v7, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v7}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iget-object v7, v7, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v7}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    or-int/2addr v2, v7

    :goto_6
    invoke-static {v1}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v7

    const v9, 0x10013

    if-ne v7, v9, :cond_13

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v2, v6}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v2

    instance-of v2, v2, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v2, v6}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->e()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    move v2, v4

    :goto_7
    move-object v10, v7

    move v7, v2

    move-object v2, v10

    :goto_8
    if-eqz v7, :cond_11

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/bz;

    invoke-direct {v2, p0, v6}, Lcom/estrongs/android/pop/app/imageviewer/bz;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;I)V

    invoke-virtual {p0, v6, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(ILcom/estrongs/android/pop/app/imageviewer/cg;Ljava/lang/Runnable;)V

    :cond_4
    :goto_9
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/app/ag;->g()Lcom/estrongs/android/pop/app/ag;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/g/a;->a()I

    move-result v2

    invoke-static {v1, v2, v4, v4}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/bg;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/app/ag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/app/c/k;)V

    :cond_5
    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g()V

    :cond_6
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getCurrentScreen()I

    move-result v0

    if-eq v0, v8, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v8}, Lcom/estrongs/android/widget/RealViewSwitcher;->setCurrentScreen(I)V

    :cond_7
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(I)V

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->S:Lcom/estrongs/android/pop/app/imageviewer/q;

    add-int/lit8 v2, v6, -0xa

    add-int/lit8 v7, v6, 0x6

    invoke-virtual {v0, v2, v7}, Lcom/estrongs/android/pop/app/imageviewer/q;->a(II)V

    goto/16 :goto_3

    :cond_9
    if-nez v6, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(Z)V

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v0, v1, -0x1

    if-ne v6, v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(Z)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(Z)V

    goto/16 :goto_4

    :cond_c
    move v2, v3

    goto/16 :goto_5

    :cond_d
    move v2, v4

    goto/16 :goto_6

    :cond_e
    move v2, v3

    goto/16 :goto_7

    :cond_f
    move-object v2, v1

    move v7, v3

    goto/16 :goto_8

    :cond_10
    move-object v2, v1

    move v7, v3

    goto/16 :goto_8

    :cond_11
    iget-object v7, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iget-object v7, v7, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v7, v3}, Lcom/estrongs/android/pop/app/imageviewer/an;->a(I)V

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/ca;

    invoke-direct {v3, p0, v2, v0, v6}, Lcom/estrongs/android/pop/app/imageviewer/ca;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Ljava/lang/String;Lcom/estrongs/android/pop/app/imageviewer/cg;I)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a()Lcom/estrongs/android/f/a;

    move-result-object v2

    if-eqz v2, :cond_12

    :try_start_0
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a()Lcom/estrongs/android/f/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/f/a;->stop()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Lcom/estrongs/android/f/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_12
    :goto_a
    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Lcom/estrongs/android/f/a;)V

    invoke-virtual {v3}, Lcom/estrongs/android/f/a;->start()V

    goto/16 :goto_9

    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {p0, v6, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(ILcom/estrongs/android/pop/app/imageviewer/cg;)V

    goto/16 :goto_9

    :cond_14
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v6, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(ILcom/estrongs/android/pop/app/imageviewer/cg;)V

    goto/16 :goto_9

    :catch_0
    move-exception v2

    goto :goto_a

    :cond_15
    move v6, v0

    goto/16 :goto_2

    :cond_16
    move v0, p1

    goto/16 :goto_1
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/ch;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/ch;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f:Landroid/view/GestureDetector;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/bf;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bq;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/bq;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected a(Z)V
    .locals 6

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/p;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->Q:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:J

    iget v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->R:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/p;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/p;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/p;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/p;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method b(I)V
    .locals 4

    const/16 v3, 0x400

    const/16 v2, 0x80

    iput p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->x:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method b()Z
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->R:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->R:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/widget/RealViewSwitcher;->setAnimateFirstView(Z)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(I)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Z)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected e()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->setAnimateFirstView(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(I)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1ea
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e0448
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Landroid/util/DisplayMetrics;

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-wide/16 v8, 0xbb8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->x:Z

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Landroid/content/SharedPreferences;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Landroid/content/SharedPreferences;

    const-string v1, "slide_setting_interval"

    const-wide/16 v6, 0xbb8

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->H:Lcom/estrongs/android/j/c;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f0300ec

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->setContentView(I)V

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {v5, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v0, 0x96

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FILE_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ABSOLUTE_FILE_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    if-nez v1, :cond_2

    const-string v1, "pic://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    :cond_2
    const-string v1, "file"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    new-instance v2, Lcom/estrongs/fs/b;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/estrongs/fs/b;-><init>(Lcom/estrongs/fs/i;)V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->z:Lcom/estrongs/fs/b;

    const v2, 0x7fffffff

    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    :goto_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "show_hidelist_file"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Lcom/estrongs/android/view/bn;

    invoke-direct {v6, v1, v2}, Lcom/estrongs/android/view/bn;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->z:Lcom/estrongs/fs/b;

    invoke-virtual {v1, v6}, Lcom/estrongs/fs/b;->a(Lcom/estrongs/fs/i;)V

    :cond_6
    invoke-static {v0}, Lcom/estrongs/android/util/bg;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    :try_start_2
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    :goto_4
    const v0, 0x7f0e044a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->F:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Z

    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/cd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/cd;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setOnScrollListener(Lcom/estrongs/android/pop/app/imageviewer/o;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setCallbackDuringFling(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setUnselectedAlpha(F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/ce;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/ce;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/at;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/at;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0e0440

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/RealViewSwitcher;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/RealViewSwitcher;->setSwitchControlable(Z)V

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/au;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/au;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->setOnScreenSwitchListener(Lcom/estrongs/android/widget/bd;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Landroid/view/View;)V

    const v0, 0x7f0e0445

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->B:Landroid/widget/TextView;

    const v0, 0x7f0e0443

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->D:Landroid/view/View;

    const v0, 0x7f0e0444

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Landroid/widget/TextView;

    const v0, 0x7f0e0447

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/av;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/av;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0446

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/aw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/aw;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->j:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setVisibility(I)V

    :cond_8
    move v0, v3

    :goto_6
    const/4 v1, 0x3

    if-ge v0, v1, :cond_11

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/cg;

    invoke-direct {v1, p0, p0}, Lcom/estrongs/android/pop/app/imageviewer/cg;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/cg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    iput-wide v8, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:J

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ABSOLUTE_FILE_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    goto/16 :goto_2

    :cond_b
    :try_start_3
    new-instance v2, Lcom/estrongs/android/pop/utils/co;

    invoke-direct {v2}, Lcom/estrongs/android/pop/utils/co;-><init>()V

    invoke-virtual {v2}, Lcom/estrongs/android/pop/utils/co;->a()V

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->h(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v6

    invoke-virtual {v6}, Lcom/estrongs/fs/w;->a()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/bg;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    move v0, v4

    :goto_7
    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f080421

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V

    :goto_8
    return-void

    :cond_d
    invoke-virtual {v2}, Lcom/estrongs/android/pop/utils/co;->b()V
    :try_end_3
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto/16 :goto_4

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f0800a6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->F:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Z

    goto/16 :goto_5

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->G:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->F:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Z

    goto/16 :goto_5

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Landroid/net/Uri;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->F:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Z

    goto/16 :goto_5

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:Lcom/estrongs/android/pop/app/imageviewer/t;

    if-nez v0, :cond_12

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ax;

    const-string v1, "Image Loader - Full Size "

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ax;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:Lcom/estrongs/android/pop/app/imageviewer/t;

    :cond_12
    const v0, 0x7f0e01e2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->L:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->L:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/ay;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/ay;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/ag;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->O:Lcom/estrongs/android/pop/app/imageviewer/cf;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ag;->a(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/ag;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->O:Lcom/estrongs/android/pop/app/imageviewer/cf;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ag;->a(Lcom/estrongs/chromecast/CastDeviceListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/ag;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->O:Lcom/estrongs/android/pop/app/imageviewer/cf;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ag;->a(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f()V

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/az;

    const-string v1, "ImageListBuilder"

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/az;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/az;->start()V

    goto/16 :goto_8

    :catch_2
    move-exception v6

    goto/16 :goto_3

    :cond_13
    move v0, v3

    goto/16 :goto_7
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/p;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/p;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/cg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a()Lcom/estrongs/android/f/a;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a()Lcom/estrongs/android/f/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/f/a;->stop()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a(Lcom/estrongs/android/f/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->S:Lcom/estrongs/android/pop/app/imageviewer/q;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->S:Lcom/estrongs/android/pop/app/imageviewer/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/q;->a()V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:Lcom/estrongs/android/pop/app/imageviewer/t;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:Lcom/estrongs/android/pop/app/imageviewer/t;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/t;->a()[I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:Lcom/estrongs/android/pop/app/imageviewer/t;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/t;->b()V

    iput-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:Lcom/estrongs/android/pop/app/imageviewer/t;

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a()V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->J:Lcom/estrongs/android/pop/app/imageviewer/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->J:Lcom/estrongs/android/pop/app/imageviewer/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/a;->a()V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/ag;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->O:Lcom/estrongs/android/pop/app/imageviewer/cf;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ag;->b(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/ag;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->O:Lcom/estrongs/android/pop/app/imageviewer/cf;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ag;->b(Lcom/estrongs/chromecast/CastDeviceListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->K:Lcom/estrongs/android/pop/app/ag;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->O:Lcom/estrongs/android/pop/app/imageviewer/cf;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ag;->b(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->M:Lcom/estrongs/android/pop/app/x;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->M:Lcom/estrongs/android/pop/app/x;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/x;->a()V

    :cond_7
    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    goto :goto_1

    :sswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->T:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->T:J

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->v:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g()V

    :cond_3
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p()Z

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->v:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v1

    if-ltz v0, :cond_0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->S:Lcom/estrongs/android/pop/app/imageviewer/q;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    goto :goto_0

    :sswitch_3
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->v:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v1

    if-ltz v0, :cond_0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->S:Lcom/estrongs/android/pop/app/imageviewer/q;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onPause()V

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    rem-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/cg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a()Lcom/estrongs/android/f/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a()Lcom/estrongs/android/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/f/a;->stop()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onResume()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "slide_mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bv;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Z)V

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    rem-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/cg;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a()Lcom/estrongs/android/f/a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/cg;->a()Lcom/estrongs/android/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/f/a;->start()V

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    :try_start_0
    const-string v0, "uri"

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->f()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "slideshow"

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
