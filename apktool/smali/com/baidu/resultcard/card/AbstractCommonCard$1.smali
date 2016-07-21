.class Lcom/baidu/resultcard/card/AbstractCommonCard$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/baidu/resultcard/card/AbstractCommonCard;

.field final synthetic val$view:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/baidu/resultcard/card/AbstractCommonCard;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/resultcard/card/AbstractCommonCard$1;->this$0:Lcom/baidu/resultcard/card/AbstractCommonCard;

    iput-object p2, p0, Lcom/baidu/resultcard/card/AbstractCommonCard$1;->val$view:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/resultcard/card/AbstractCommonCard$1;->this$0:Lcom/baidu/resultcard/card/AbstractCommonCard;

    new-instance v1, Lcom/baidu/resultcard/card/AbstractCommonCard$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/resultcard/card/AbstractCommonCard$1$1;-><init>(Lcom/baidu/resultcard/card/AbstractCommonCard$1;)V

    invoke-virtual {v0, v1}, Lcom/baidu/resultcard/card/AbstractCommonCard;->doInBackground(Lcom/baidu/resultcard/card/AbstractCommonCard$OnBackgroundRefreshListener;)V

    return-void
.end method
