.class Lcom/estrongs/android/pop/app/unlock/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/unlock/UnLockCardView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/unlock/UnLockCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/unlock/d;->a:Lcom/estrongs/android/pop/app/unlock/UnLockCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/d;->a:Lcom/estrongs/android/pop/app/unlock/UnLockCardView;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->a(Lcom/estrongs/android/pop/app/unlock/UnLockCardView;)Lcom/estrongs/android/pop/app/unlock/RoundedImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/d;->a:Lcom/estrongs/android/pop/app/unlock/UnLockCardView;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, p3, v1, v2}, Lcom/estrongs/android/pop/app/unlock/RoundedImageView;->a(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method
