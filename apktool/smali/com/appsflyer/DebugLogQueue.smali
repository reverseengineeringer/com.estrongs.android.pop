.class public Lcom/appsflyer/DebugLogQueue;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/appsflyer/DebugLogQueue;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appsflyer/DebugLogQueue$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appsflyer/DebugLogQueue;

    invoke-direct {v0}, Lcom/appsflyer/DebugLogQueue;-><init>()V

    sput-object v0, Lcom/appsflyer/DebugLogQueue;->b:Lcom/appsflyer/DebugLogQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/DebugLogQueue;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/appsflyer/DebugLogQueue;
    .locals 1

    sget-object v0, Lcom/appsflyer/DebugLogQueue;->b:Lcom/appsflyer/DebugLogQueue;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appsflyer/DebugLogQueue;->a:Ljava/util/List;

    new-instance v1, Lcom/appsflyer/DebugLogQueue$Item;

    invoke-direct {v1, p1}, Lcom/appsflyer/DebugLogQueue$Item;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
