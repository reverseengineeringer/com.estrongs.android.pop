.class Lcom/estrongs/android/ui/theme/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/theme/af;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/af;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/ah;->b:Lcom/estrongs/android/ui/theme/af;

    iput p2, p0, Lcom/estrongs/android/ui/theme/ah;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ah;->b:Lcom/estrongs/android/ui/theme/af;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/af;->a(Lcom/estrongs/android/ui/theme/af;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ah;->b:Lcom/estrongs/android/ui/theme/af;

    iget v1, p0, Lcom/estrongs/android/ui/theme/ah;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/af;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
