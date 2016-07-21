.class Lcom/baidu/resultcard/common/PhotoScanner$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/baidu/resultcard/common/PhotoScanner;

.field final synthetic val$tmpTs:J


# direct methods
.method constructor <init>(Lcom/baidu/resultcard/common/PhotoScanner;J)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/resultcard/common/PhotoScanner$3;->this$0:Lcom/baidu/resultcard/common/PhotoScanner;

    iput-wide p2, p0, Lcom/baidu/resultcard/common/PhotoScanner$3;->val$tmpTs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner$3;->this$0:Lcom/baidu/resultcard/common/PhotoScanner;

    # getter for: Lcom/baidu/resultcard/common/PhotoScanner;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/resultcard/common/PhotoScanner;->access$100(Lcom/baidu/resultcard/common/PhotoScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/resultcard/common/PhotoDbAdapter;->getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/common/PhotoDbAdapter;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/resultcard/common/PhotoScanner$3;->val$tmpTs:J

    invoke-virtual {v0, v2, v3}, Lcom/baidu/resultcard/common/PhotoDbAdapter;->delete(J)V

    return-void
.end method
