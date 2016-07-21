.class Lcom/google/android/gms/internal/pc;
.super Lcom/google/android/gms/internal/pj;

# interfaces
.implements Lcom/google/android/gms/internal/tr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/pj",
        "<TT;>;",
        "Lcom/google/android/gms/internal/tr",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ox;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pc;->a:Lcom/google/android/gms/internal/ox;

    invoke-direct {p0}, Lcom/google/android/gms/internal/pj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ox;Lcom/google/android/gms/internal/oy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pc;-><init>(Lcom/google/android/gms/internal/ox;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/pj;->b(Ljava/lang/Object;)V

    return-void
.end method
