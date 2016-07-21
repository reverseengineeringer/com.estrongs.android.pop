.class public Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;
.super Ljava/lang/Object;


# instance fields
.field public bdct:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field public final dataPipeID:Ljava/lang/String;

.field public debug:Z

.field public mobuleEnv:Ljava/lang/String;

.field public sid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "a"

    iput-object v0, p0, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->bdct:Ljava/lang/String;

    const-string v0, "prod"

    iput-object v0, p0, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->mobuleEnv:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->debug:Z

    iput-object p1, p0, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->dataPipeID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkParameters()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->dataPipeID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/baidu/scenery/SceneryLibrary$SceneryParameter;->sid:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
