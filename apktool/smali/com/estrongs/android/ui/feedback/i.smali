.class Lcom/estrongs/android/ui/feedback/i;
.super Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/feedback/i;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;Lcom/estrongs/android/ui/feedback/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/feedback/i;-><init>(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    invoke-super {p0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
