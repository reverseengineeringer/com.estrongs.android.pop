.class public Lcom/flurry/sdk/d;
.super Lcom/flurry/sdk/ka;


# instance fields
.field public a:Lcom/flurry/sdk/s;

.field public b:Lcom/flurry/sdk/d$a;

.field public c:Lcom/flurry/sdk/ba;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.flurry.android.impl.ads.AdStateEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ka;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/ba;->y:Lcom/flurry/sdk/ba;

    iput-object v0, p0, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/ba;

    return-void
.end method
