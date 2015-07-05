.class Lcom/estrongs/android/pop/utils/DeleteMessageContainer;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->a:I

    iput-boolean v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->d:Landroid/content/Context;

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->d:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->a:I

    iput-boolean v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->d:Landroid/content/Context;

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->d:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->a:I

    iput-boolean v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->d:Landroid/content/Context;

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->d:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->b:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    if-nez v1, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->b:I

    iget v1, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    :goto_1
    iget v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->a:I

    if-ge v0, v1, :cond_1

    iput v1, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->a:I

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->c:Z

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->b:I

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    if-eq v3, v0, :cond_2

    invoke-virtual {p0, v2, v1}, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->a:I

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/pop/utils/DeleteMessageContainer;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method
