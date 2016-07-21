.class public Lcom/dianxinos/library/dxbase/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field public static c:Z

.field public static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "dev"

    sput-object v0, Lcom/dianxinos/library/dxbase/e;->a:Ljava/lang/String;

    const-string v0, "release"

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/dianxinos/library/dxbase/e;->b:Z

    sget-boolean v0, Lcom/dianxinos/library/dxbase/e;->b:Z

    sput-boolean v0, Lcom/dianxinos/library/dxbase/e;->c:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/dianxinos/library/dxbase/e;->d:Z

    return-void
.end method
