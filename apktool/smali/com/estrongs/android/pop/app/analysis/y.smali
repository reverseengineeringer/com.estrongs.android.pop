.class public abstract Lcom/estrongs/android/pop/app/analysis/y;
.super Ljava/lang/Object;


# static fields
.field protected static a:J


# instance fields
.field protected b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/estrongs/android/pop/app/analysis/y;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/y;->b:Ljava/lang/String;

    return-void
.end method

.method public abstract b()Z
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
