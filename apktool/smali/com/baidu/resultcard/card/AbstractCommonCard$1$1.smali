.class Lcom/baidu/resultcard/card/AbstractCommonCard$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/resultcard/card/AbstractCommonCard$OnBackgroundRefreshListener;


# instance fields
.field final synthetic this$1:Lcom/baidu/resultcard/card/AbstractCommonCard$1;


# direct methods
.method constructor <init>(Lcom/baidu/resultcard/card/AbstractCommonCard$1;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/resultcard/card/AbstractCommonCard$1$1;->this$1:Lcom/baidu/resultcard/card/AbstractCommonCard$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onBackgroundRefresh([Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/resultcard/card/AbstractCommonCard$1$1;->this$1:Lcom/baidu/resultcard/card/AbstractCommonCard$1;

    iget-object v0, v0, Lcom/baidu/resultcard/card/AbstractCommonCard$1;->val$view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/resultcard/view/BaseResultCardView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/baidu/resultcard/card/AbstractCommonCard$1$1$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/baidu/resultcard/card/AbstractCommonCard$1$1$1;-><init>(Lcom/baidu/resultcard/card/AbstractCommonCard$1$1;Lcom/baidu/resultcard/view/BaseResultCardView;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/dianxinos/library/dxbase/o;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
