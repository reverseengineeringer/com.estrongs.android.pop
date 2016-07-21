.class public Lcom/estrongs/android/ui/feedback/FeedbackRatingView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/RatingBar;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/animation/TranslateAnimation;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->h:Z

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->g:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->d:Landroid/widget/RatingBar;

    invoke-static {v2}, Landroid/support/v4/view/cn;->u(Landroid/view/View;)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->d:Landroid/widget/RatingBar;

    invoke-virtual {v3}, Landroid/widget/RatingBar;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->d:Landroid/widget/RatingBar;

    invoke-static {v3}, Landroid/support/v4/view/cn;->v(Landroid/view/View;)F

    move-result v3

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v0, v2, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v4, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->g:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->g:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->g:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->g:Landroid/view/animation/TranslateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->g:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/estrongs/android/ui/feedback/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/feedback/g;-><init>(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->g:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/estrongs/android/ui/feedback/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/feedback/i;-><init>(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;Lcom/estrongs/android/ui/feedback/d;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->g:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v5, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->h:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->g:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->startNow()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->a:Landroid/content/Context;

    const v1, 0x7f0300ae

    invoke-static {v0, v1, p0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0e0105

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->b:Landroid/widget/TextView;

    const v0, 0x7f0e035b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->c:Landroid/view/View;

    const v0, 0x7f0e035a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->d:Landroid/widget/RatingBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->a:Landroid/content/Context;

    const v2, 0x7f0801e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e035c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/ui/feedback/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/feedback/d;-><init>(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->d:Landroid/widget/RatingBar;

    new-instance v1, Lcom/estrongs/android/ui/feedback/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/feedback/e;-><init>(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->c:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/feedback/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/feedback/f;-><init>(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->a()V

    return-void
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->h:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->g:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->g:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->b()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/RatingBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->d:Landroid/widget/RatingBar;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->e:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->h:Z

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->f:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public setOnClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->e:Landroid/view/View$OnClickListener;

    return-void
.end method
