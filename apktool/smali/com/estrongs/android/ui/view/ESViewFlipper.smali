.class public Lcom/estrongs/android/ui/view/ESViewFlipper;
.super Landroid/widget/ViewFlipper;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/estrongs/android/ui/view/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/ui/view/ESViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/ui/view/ESViewFlipper;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESViewFlipper;->b:Lcom/estrongs/android/ui/view/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ESViewFlipper;->b:Lcom/estrongs/android/ui/view/ax;

    invoke-interface {v0, p1}, Lcom/estrongs/android/ui/view/ax;->a(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ESViewFlipper;->stopFlipping()V

    goto :goto_0
.end method

.method public setConfigListener(Lcom/estrongs/android/ui/view/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ESViewFlipper;->b:Lcom/estrongs/android/ui/view/ax;

    return-void
.end method
