.class Lcom/estrongs/android/ui/feedback/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/feedback/e;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 4

    const v2, 0x7f0801e0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/e;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->b(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)V

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/e;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->c(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/e;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->d(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/e;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->d(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/feedback/e;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v1}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->e(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/e;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->c(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/e;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->d(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/feedback/e;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v1}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->e(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/e;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->d(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/e;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->c(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/e;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->d(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/feedback/e;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v1}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->e(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/e;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->d(Lcom/estrongs/android/ui/feedback/FeedbackRatingView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0
.end method
