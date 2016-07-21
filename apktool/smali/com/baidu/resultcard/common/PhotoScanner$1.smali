.class Lcom/baidu/resultcard/common/PhotoScanner$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/baidu/resultcard/common/PhotoScanner;


# direct methods
.method constructor <init>(Lcom/baidu/resultcard/common/PhotoScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/resultcard/common/PhotoScanner$1;->this$0:Lcom/baidu/resultcard/common/PhotoScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner$1;->this$0:Lcom/baidu/resultcard/common/PhotoScanner;

    # invokes: Lcom/baidu/resultcard/common/PhotoScanner;->__initPhotoNum()V
    invoke-static {v0}, Lcom/baidu/resultcard/common/PhotoScanner;->access$000(Lcom/baidu/resultcard/common/PhotoScanner;)V

    return-void
.end method
