.class Lcom/estrongs/android/ui/feedback/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/feedback/f;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/f;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->f(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/f;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->e(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/p;->a(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/f;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->g(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/f;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->g(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/f;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->e(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/feedback/f;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v1}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->e(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "pname"

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
