.class public Lcom/estrongs/android/ui/drag/DragActionZone;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/estrongs/android/ui/drag/s;


# instance fields
.field private a:Lcom/estrongs/android/ui/drag/c;

.field private b:I

.field private c:Landroid/os/Vibrator;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/drag/DragActionZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/drag/DragActionZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->d:Landroid/os/Handler;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->c:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/drag/DragActionZone;)Lcom/estrongs/android/ui/drag/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->a:Lcom/estrongs/android/ui/drag/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragActionZone;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->a:Lcom/estrongs/android/ui/drag/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->a:Lcom/estrongs/android/ui/drag/c;

    invoke-interface {v0, p1, p7}, Lcom/estrongs/android/ui/drag/c;->a(Lcom/estrongs/android/ui/drag/l;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Rect;II)Z
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragActionZone;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v0, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->b:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, p2, v2

    mul-int/2addr v0, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int v2, p3, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v2

    mul-int/2addr v0, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int v2, p3, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, p2, v2

    mul-int/2addr v0, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p3, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p3, v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_0

    :pswitch_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, p2, v0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v2

    mul-int/2addr v0, v2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p3, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p3, v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragActionZone;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/drag/DragActionZone;->setPressed(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->c:Landroid/os/Vibrator;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/drag/a;

    invoke-direct {v0, p0, p1, p7}, Lcom/estrongs/android/ui/drag/a;-><init>(Lcom/estrongs/android/ui/drag/DragActionZone;Lcom/estrongs/android/ui/drag/l;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->e:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public c(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragActionZone;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/drag/DragActionZone;->setPressed(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/drag/b;

    invoke-direct {v0, p0, p1, p7}, Lcom/estrongs/android/ui/drag/b;-><init>(Lcom/estrongs/android/ui/drag/DragActionZone;Lcom/estrongs/android/ui/drag/l;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->e:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public e(Lcom/estrongs/android/ui/drag/l;IIIILcom/estrongs/android/ui/drag/m;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragActionZone;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v0, 0x7f0e032b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/drag/DragActionZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/4 v2, 0x1

    const v3, -0x777778

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const v0, 0x7f0e032b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/drag/DragActionZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragActionZone;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/4 v2, 0x1

    const v3, -0x777778

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public setOnDropListener(Lcom/estrongs/android/ui/drag/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->a:Lcom/estrongs/android/ui/drag/c;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/drag/DragActionZone;->b:I

    return-void
.end method
