.class public Lcom/estrongs/android/ui/feedback/a;
.super Lcom/estrongs/android/ui/dialog/ci;


# instance fields
.field private a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/feedback/a;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v2, 0x7f0e0264

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/a;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e0266

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-direct {v0, p1}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/feedback/a;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/a;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    new-instance v1, Lcom/estrongs/android/ui/feedback/b;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/feedback/b;-><init>(Lcom/estrongs/android/ui/feedback/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/feedback/FeedbackRatingView;->setOnClickedListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/feedback/a;->a:Lcom/estrongs/android/ui/feedback/FeedbackRatingView;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/feedback/a;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method
