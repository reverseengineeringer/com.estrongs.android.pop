.class public Lcom/flurry/sdk/eu;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/eu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/eu;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/flurry/sdk/et;
    .locals 3

    invoke-static {p0}, Lcom/flurry/sdk/eu;->c(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/es;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/es;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/flurry/sdk/eu;->b(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/flurry/sdk/ev;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ev;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/eu;->a:Ljava/lang/String;

    const-string v2, "This cannot happen. Its neither text or image post. lets move back."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "com.flurry.android.is_text_post"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "com.flurry.android.is_image_post"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
