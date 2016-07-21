.class final Lcom/baidu/resultcard/CardLibrary$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/notify/e;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dataPipeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/resultcard/CardLibrary$1;->val$dataPipeId:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/resultcard/CardLibrary$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataArrive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    # getter for: Lcom/baidu/resultcard/CardLibrary;->DEBUG:Z
    invoke-static {}, Lcom/baidu/resultcard/CardLibrary;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SDKCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", body "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/resultcard/CardLibrary$1;->val$dataPipeId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/resultcard/CardLibrary$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/baidu/resultcard/CardLibrary;->storeDataPipeMess(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/baidu/resultcard/CardLibrary;->access$100(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
