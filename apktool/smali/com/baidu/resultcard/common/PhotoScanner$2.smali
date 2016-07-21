.class Lcom/baidu/resultcard/common/PhotoScanner$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/baidu/resultcard/common/PhotoScanner;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$timeStamp:J


# direct methods
.method constructor <init>(Lcom/baidu/resultcard/common/PhotoScanner;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/resultcard/common/PhotoScanner$2;->this$0:Lcom/baidu/resultcard/common/PhotoScanner;

    iput-wide p2, p0, Lcom/baidu/resultcard/common/PhotoScanner$2;->val$timeStamp:J

    iput-object p4, p0, Lcom/baidu/resultcard/common/PhotoScanner$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/resultcard/common/PhotoScanner$2;->this$0:Lcom/baidu/resultcard/common/PhotoScanner;

    # getter for: Lcom/baidu/resultcard/common/PhotoScanner;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/resultcard/common/PhotoScanner;->access$100(Lcom/baidu/resultcard/common/PhotoScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/resultcard/common/PhotoDbAdapter;->getInstance(Landroid/content/Context;)Lcom/baidu/resultcard/common/PhotoDbAdapter;

    move-result-object v0

    iget-wide v2, p0, Lcom/baidu/resultcard/common/PhotoScanner$2;->val$timeStamp:J

    iget-object v1, p0, Lcom/baidu/resultcard/common/PhotoScanner$2;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/baidu/resultcard/common/PhotoDbAdapter;->insert(JLjava/lang/String;)V

    return-void
.end method
