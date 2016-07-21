.class Lcom/google/android/gms/tagmanager/ep;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/tagmanager/er;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/er",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tagmanager/eq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/eq;-><init>(Lcom/google/android/gms/tagmanager/ep;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ep;->a:Lcom/google/android/gms/tagmanager/er;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public a(ILcom/google/android/gms/tagmanager/er;)Lcom/google/android/gms/tagmanager/eo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tagmanager/er",
            "<TK;TV;>;)",
            "Lcom/google/android/gms/tagmanager/eo",
            "<TK;TV;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ep;->a()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/tagmanager/do;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tagmanager/do;-><init>(ILcom/google/android/gms/tagmanager/er;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/ba;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tagmanager/ba;-><init>(ILcom/google/android/gms/tagmanager/er;)V

    goto :goto_0
.end method
