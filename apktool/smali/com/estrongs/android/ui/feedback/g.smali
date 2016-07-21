.class Lcom/estrongs/android/ui/feedback/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/feedback/g;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/g;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->h(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/g;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->i(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/g;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->h(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/g;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->f(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/RatingBar;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/g;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->f(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/RatingBar;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/feedback/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/feedback/h;-><init>(Lcom/estrongs/android/ui/feedback/g;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RatingBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/g;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->h(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/g;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->f(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/RatingBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/g;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->i(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
