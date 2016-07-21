.class public Lcom/google/android/gms/internal/ox;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/oz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/oz",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/google/android/gms/internal/sn;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ox;->c:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/oy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/oy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ox;->a:Lcom/google/android/gms/internal/oz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ox;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/sn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ox;->b:Lcom/google/android/gms/internal/sn;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/gms/internal/sn;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/ox;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ox;->b:Lcom/google/android/gms/internal/sn;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/b;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/sn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ox;->b:Lcom/google/android/gms/internal/sn;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ox;->b:Lcom/google/android/gms/internal/sn;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/po;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/oz",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/po",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/pc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/pc;-><init>(Lcom/google/android/gms/internal/ox;Lcom/google/android/gms/internal/oy;)V

    sget-object v1, Lcom/google/android/gms/internal/ox;->b:Lcom/google/android/gms/internal/sn;

    new-instance v2, Lcom/google/android/gms/internal/pa;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/internal/pa;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/oz;Lcom/google/android/gms/internal/tr;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/sn;->a(Lcom/google/android/gms/internal/zzk;)Lcom/google/android/gms/internal/zzk;

    return-object v0
.end method
