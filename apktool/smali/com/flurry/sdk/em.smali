.class public Lcom/flurry/sdk/em;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/flurry/sdk/em;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/flurry/sdk/em;->b:Ljava/lang/String;

    const-string v0, "http://www.tumblr.com/connect/login_success.html"

    sput-object v0, Lcom/flurry/sdk/em;->c:Ljava/lang/String;

    const-string v0, "1.0"

    sput-object v0, Lcom/flurry/sdk/em;->d:Ljava/lang/String;

    const-string v0, "HMAC-SHA1"

    sput-object v0, Lcom/flurry/sdk/em;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/em;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/flurry/sdk/em;->a:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/em;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/flurry/sdk/em;->b:Ljava/lang/String;

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/em;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/em;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/em;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    return-object v0
.end method
