.class public Lcom/flurry/sdk/ec;
.super Lcom/flurry/sdk/ka;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Lcom/flurry/sdk/ec$a;

.field public c:I

.field public d:Lcom/flurry/sdk/ed;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/ec;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ec;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "com.flurry.android.impl.analytics.tumblr.TumblrEvents"

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ka;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/ec$a;->b:Lcom/flurry/sdk/ec$a;

    iput-object v0, p0, Lcom/flurry/sdk/ec;->b:Lcom/flurry/sdk/ec$a;

    sget-object v0, Lcom/flurry/sdk/ed;->a:Lcom/flurry/sdk/ed;

    iput-object v0, p0, Lcom/flurry/sdk/ec;->d:Lcom/flurry/sdk/ed;

    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/sdk/ec;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(ILjava/lang/Long;)V
    .locals 4

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/ec;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/ec;

    invoke-direct {v0}, Lcom/flurry/sdk/ec;-><init>()V

    iput p0, v0, Lcom/flurry/sdk/ec;->c:I

    iput-object p1, v0, Lcom/flurry/sdk/ec;->f:Ljava/lang/Long;

    sget-object v1, Lcom/flurry/sdk/ec$a;->a:Lcom/flurry/sdk/ec$a;

    iput-object v1, v0, Lcom/flurry/sdk/ec;->b:Lcom/flurry/sdk/ec$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/ec;->b()V

    return-void
.end method

.method public static a(Lcom/flurry/sdk/ed;ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/ec;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post failure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/ec;

    invoke-direct {v0}, Lcom/flurry/sdk/ec;-><init>()V

    iput-object p0, v0, Lcom/flurry/sdk/ec;->d:Lcom/flurry/sdk/ed;

    iput p1, v0, Lcom/flurry/sdk/ec;->c:I

    iput-object p2, v0, Lcom/flurry/sdk/ec;->e:Ljava/lang/String;

    sget-object v1, Lcom/flurry/sdk/ec$a;->b:Lcom/flurry/sdk/ec$a;

    iput-object v1, v0, Lcom/flurry/sdk/ec;->b:Lcom/flurry/sdk/ec$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/ec;->b()V

    return-void
.end method
