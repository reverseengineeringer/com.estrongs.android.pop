.class public Lcom/flurry/sdk/lg;
.super Lcom/flurry/sdk/ka;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/flurry/sdk/lf;

.field public c:Lcom/flurry/sdk/lg$a;

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.flurry.android.sdk.FlurrySessionEvent"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ka;-><init>(Ljava/lang/String;)V

    return-void
.end method
