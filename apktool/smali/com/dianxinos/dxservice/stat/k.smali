.class public Lcom/dianxinos/dxservice/stat/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/IntentFilter;

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/k;->b:Landroid/content/IntentFilter;

    new-instance v0, Lcom/dianxinos/dxservice/stat/l;

    invoke-direct {v0, p0}, Lcom/dianxinos/dxservice/stat/l;-><init>(Lcom/dianxinos/dxservice/stat/k;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/k;->c:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/k;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/dxservice/stat/k;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/k;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/k;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/k;->c:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/k;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/k;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/k;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
