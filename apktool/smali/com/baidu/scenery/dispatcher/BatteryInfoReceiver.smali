.class Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final BATTERY_INFO_PERCENT_KEY:Ljava/lang/String; = "battery_info_percent_key"

.field public static final BATTERY_INFO_PLUG_TYPE:Ljava/lang/String; = "battery_info_plug_type"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static fixData(Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;)V
    .locals 3

    const/16 v2, 0x64

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "SCH-i909"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.2.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->scale:I

    :cond_0
    iget v0, p0, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->level:I

    iget v1, p0, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->scale:I

    if-le v0, v1, :cond_1

    :cond_1
    iget v0, p0, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->scale:I

    if-ge v0, v2, :cond_2

    iput v2, p0, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->scale:I

    :cond_2
    return-void
.end method

.method public static onBatteryInfoChanged(Landroid/content/Intent;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x64

    new-instance v1, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;

    invoke-direct {v1}, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;-><init>()V

    const-string v0, "level"

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->level:I

    const-string v0, "scale"

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->scale:I

    const-string v0, "plugged"

    invoke-virtual {p0, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->plugType:I

    const-string v0, "status"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->status:I

    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver;->fixData(Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;)V

    iget v0, v1, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->scale:I

    if-ge v0, v2, :cond_1

    iget v0, v1, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->level:I

    :goto_0
    # setter for: Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->reportedPercent:I
    invoke-static {v1, v0}, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->access$002(Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;I)I

    # getter for: Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->reportedPercent:I
    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->access$000(Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;)I

    move-result v0

    if-ltz v0, :cond_2

    # getter for: Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->reportedPercent:I
    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->access$000(Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;)I

    move-result v0

    if-gt v0, v3, :cond_2

    # getter for: Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->reportedPercent:I
    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->access$000(Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;)I

    move-result v0

    iput v0, v1, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->percent:I

    :cond_0
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "battery_info_percent_key"

    iget v3, v1, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->percent:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "battery_info_plug_type"

    iget v1, v1, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->plugType:I

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->getInstance()Lcom/baidu/scenery/dispatcher/SceneryDispatcher;

    move-result-object v1

    const-string v2, "scenery_charge"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/scenery/dispatcher/SceneryDispatcher;->onSceneryOccur(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget v0, v1, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->level:I

    mul-int/lit8 v0, v0, 0x64

    iget v2, v1, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->scale:I

    div-int/2addr v0, v2

    goto :goto_0

    :cond_2
    # getter for: Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->reportedPercent:I
    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->access$000(Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;)I

    move-result v0

    if-gez v0, :cond_3

    iput v4, v1, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->percent:I

    goto :goto_1

    :cond_3
    # getter for: Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->reportedPercent:I
    invoke-static {v1}, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->access$000(Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;)I

    move-result v0

    if-le v0, v3, :cond_0

    iput v3, v1, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver$BatteryInfo;->percent:I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p2}, Lcom/baidu/scenery/dispatcher/BatteryInfoReceiver;->onBatteryInfoChanged(Landroid/content/Intent;)V

    return-void
.end method
