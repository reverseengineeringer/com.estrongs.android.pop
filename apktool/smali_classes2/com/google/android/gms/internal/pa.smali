.class Lcom/google/android/gms/internal/pa;
.super Lcom/google/android/gms/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzk",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/oz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/oz",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/tr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/tr",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/oz;Lcom/google/android/gms/internal/tr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/oz",
            "<TT;>;",
            "Lcom/google/android/gms/internal/tr",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/pb;

    invoke-direct {v1, p3, p2}, Lcom/google/android/gms/internal/pb;-><init>(Lcom/google/android/gms/internal/tr;Lcom/google/android/gms/internal/oz;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/zzk;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/tq;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oz;

    iput-object p3, p0, Lcom/google/android/gms/internal/pa;->b:Lcom/google/android/gms/internal/tr;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/pe;)Lcom/google/android/gms/internal/tp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/pe;",
            ")",
            "Lcom/google/android/gms/internal/tp",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lcom/google/android/gms/internal/pe;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zy;->a(Lcom/google/android/gms/internal/pe;)Lcom/google/android/gms/internal/bf;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/tp;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/bf;)Lcom/google/android/gms/internal/tp;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pa;->b:Lcom/google/android/gms/internal/tr;

    iget-object v1, p0, Lcom/google/android/gms/internal/pa;->a:Lcom/google/android/gms/internal/oz;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/oz;->b(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/tr;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pa;->a(Ljava/io/InputStream;)V

    return-void
.end method
