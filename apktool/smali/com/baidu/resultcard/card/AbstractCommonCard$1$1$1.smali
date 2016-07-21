.class Lcom/baidu/resultcard/card/AbstractCommonCard$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/baidu/resultcard/card/AbstractCommonCard$1$1;

.field final synthetic val$cardView:Lcom/baidu/resultcard/view/BaseResultCardView;

.field final synthetic val$newValue:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/baidu/resultcard/card/AbstractCommonCard$1$1;Lcom/baidu/resultcard/view/BaseResultCardView;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/resultcard/card/AbstractCommonCard$1$1$1;->this$2:Lcom/baidu/resultcard/card/AbstractCommonCard$1$1;

    iput-object p2, p0, Lcom/baidu/resultcard/card/AbstractCommonCard$1$1$1;->val$cardView:Lcom/baidu/resultcard/view/BaseResultCardView;

    iput-object p3, p0, Lcom/baidu/resultcard/card/AbstractCommonCard$1$1$1;->val$newValue:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/resultcard/card/AbstractCommonCard$1$1$1;->this$2:Lcom/baidu/resultcard/card/AbstractCommonCard$1$1;

    iget-object v0, v0, Lcom/baidu/resultcard/card/AbstractCommonCard$1$1;->this$1:Lcom/baidu/resultcard/card/AbstractCommonCard$1;

    iget-object v0, v0, Lcom/baidu/resultcard/card/AbstractCommonCard$1;->this$0:Lcom/baidu/resultcard/card/AbstractCommonCard;

    iget-object v1, p0, Lcom/baidu/resultcard/card/AbstractCommonCard$1$1$1;->val$cardView:Lcom/baidu/resultcard/view/BaseResultCardView;

    iget-object v2, p0, Lcom/baidu/resultcard/card/AbstractCommonCard$1$1$1;->val$newValue:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/resultcard/card/AbstractCommonCard;->updateViewUI(Lcom/baidu/resultcard/view/BaseResultCardView;[Ljava/lang/Object;)V

    return-void
.end method
