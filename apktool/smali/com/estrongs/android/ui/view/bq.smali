.class Lcom/estrongs/android/ui/view/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/PopMultiWindowGrid;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/bq;->a:Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    if-eqz p2, :cond_0

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    const/16 v2, -0x4d

    const/4 v3, 0x4

    const/16 v4, 0x9

    const/16 v5, 0xe

    int-to-float v2, v2

    aput v2, v1, v5

    aput v2, v1, v4

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bq;->a:Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bq;->a:Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0
.end method
