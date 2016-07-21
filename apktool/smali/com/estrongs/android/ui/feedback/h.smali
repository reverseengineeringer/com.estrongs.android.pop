.class Lcom/estrongs/android/ui/feedback/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/feedback/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/feedback/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/feedback/h;->a:Lcom/estrongs/android/ui/feedback/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/h;->a:Lcom/estrongs/android/ui/feedback/g;

    iget-object v0, v0, Lcom/estrongs/android/ui/feedback/g;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->f(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/RatingBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    return-void
.end method
