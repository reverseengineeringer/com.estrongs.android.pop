.class Lcom/dianxinos/lockscreen/ad/extra/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/lockscreen/ad/extra/g;


# direct methods
.method constructor <init>(Lcom/dianxinos/lockscreen/ad/extra/g;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ad/extra/h;->a:Lcom/dianxinos/lockscreen/ad/extra/g;

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

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/h;->a:Lcom/dianxinos/lockscreen/ad/extra/g;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/extra/g;->a(Lcom/dianxinos/lockscreen/ad/extra/g;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/h;->a:Lcom/dianxinos/lockscreen/ad/extra/g;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/extra/g;->b(Lcom/dianxinos/lockscreen/ad/extra/g;)Lcom/dianxinos/lockscreen/ad/extra/RoundedImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ad/extra/h;->a:Lcom/dianxinos/lockscreen/ad/extra/g;

    iget-object v1, v1, Lcom/dianxinos/lockscreen/ad/extra/g;->a:Landroid/content/Context;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;F)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, p3, v1, v2}, Lcom/dianxinos/lockscreen/ad/extra/RoundedImageView;->a(Landroid/graphics/Bitmap;II)V

    :cond_0
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/extra/h;->a:Lcom/dianxinos/lockscreen/ad/extra/g;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/extra/g;->a(Lcom/dianxinos/lockscreen/ad/extra/g;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
