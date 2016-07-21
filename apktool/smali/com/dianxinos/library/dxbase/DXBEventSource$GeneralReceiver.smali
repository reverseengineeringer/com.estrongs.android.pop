.class public Lcom/dianxinos/library/dxbase/DXBEventSource$GeneralReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p2}, Lcom/dianxinos/library/dxbase/DXBEventSource;->a(Landroid/content/Intent;)V

    return-void
.end method
