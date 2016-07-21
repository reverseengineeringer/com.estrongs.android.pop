.class public Lcom/duapps/ad/base/ak;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Lorg/json/JSONObject;

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/base/ak;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, "NETWORK_FAIL"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/base/ak;->b:Lorg/json/JSONObject;

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
