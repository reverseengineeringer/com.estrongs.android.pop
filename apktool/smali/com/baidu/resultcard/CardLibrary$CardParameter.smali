.class public Lcom/baidu/resultcard/CardLibrary$CardParameter;
.super Ljava/lang/Object;


# instance fields
.field public bdct:Ljava/lang/String;

.field public commonCardSid:I

.field public final context:Landroid/content/Context;

.field public debug:Z

.field public mainCardSid:I

.field public mobuleEnv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "a"

    iput-object v0, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->bdct:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->debug:Z

    iput v1, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->mainCardSid:I

    iput v1, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->commonCardSid:I

    const-string v0, "prod"

    iput-object v0, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->mobuleEnv:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->debug:Z

    return-void
.end method


# virtual methods
.method public checkParameters()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->mainCardSid:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->commonCardSid:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->debug:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u4e3b\u5e26\u91cf\u5361\u7247\u548c\u901a\u7528\u5e26\u91cf\u5361\u7247sid\u5747\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->mainCardSid:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->debug:Z

    if-eqz v0, :cond_3

    const-string v0, "SDKCard"

    const-string v1, "\u4e3b\u5e26\u91cf\u5361\u7247sid\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->commonCardSid:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/baidu/resultcard/CardLibrary$CardParameter;->debug:Z

    if-eqz v0, :cond_4

    const-string v0, "SDKCard"

    const-string v1, "\u901a\u7528\u5e26\u91cf\u5361\u7247sid\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
