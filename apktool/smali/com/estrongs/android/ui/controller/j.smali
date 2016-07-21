.class Lcom/estrongs/android/ui/controller/j;
.super Landroid/widget/LinearLayout;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/i;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/j;->a:Lcom/estrongs/android/ui/controller/i;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/j;->a:Lcom/estrongs/android/ui/controller/i;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/h;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cu;->e(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/j;->a:Lcom/estrongs/android/ui/controller/i;

    iget-object v1, v1, Lcom/estrongs/android/ui/controller/i;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v1}, Lcom/estrongs/android/ui/controller/h;->e(Lcom/estrongs/android/ui/controller/h;)Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getMeasuredHeight()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
