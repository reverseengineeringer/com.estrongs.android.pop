.class public Lcom/dianxinos/library/notify/parser/a;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/dianxinos/library/notify/parser/NotifyStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/32 v0, 0x1b77400

    new-instance v2, Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    invoke-direct {v2}, Lcom/dianxinos/library/notify/parser/NotifyStrategy;-><init>()V

    sput-object v2, Lcom/dianxinos/library/notify/parser/a;->a:Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    sget-object v2, Lcom/dianxinos/library/notify/parser/a;->a:Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->enableDebug:Z

    iput-wide v0, v2, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroid2G:J

    iput-wide v0, v2, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroid3G:J

    const-wide/32 v4, 0x36ee80

    iput-wide v4, v2, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroidWifi:J

    iput-wide v0, v2, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->fetchPeroidDefault:J

    const-wide/32 v4, 0x1b7740

    iput-wide v4, v2, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->schedulePeroid:J

    sget-boolean v3, Lcom/dianxinos/library/dxbase/e;->b:Z

    if-eqz v3, :cond_0

    const-wide/32 v0, 0xea60

    :cond_0
    iput-wide v0, v2, Lcom/dianxinos/library/notify/parser/NotifyStrategy;->showGap:J

    return-void
.end method

.method public static a()Lcom/dianxinos/library/notify/parser/NotifyStrategy;
    .locals 1

    sget-object v0, Lcom/dianxinos/library/notify/parser/a;->a:Lcom/dianxinos/library/notify/parser/NotifyStrategy;

    return-object v0
.end method
