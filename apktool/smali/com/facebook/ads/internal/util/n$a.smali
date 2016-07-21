.class Lcom/facebook/ads/internal/util/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>([IIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/util/n$a;->a:[I

    iput p2, p0, Lcom/facebook/ads/internal/util/n$a;->b:I

    iput p3, p0, Lcom/facebook/ads/internal/util/n$a;->c:I

    iput p4, p0, Lcom/facebook/ads/internal/util/n$a;->d:I

    iput p5, p0, Lcom/facebook/ads/internal/util/n$a;->e:I

    iput p6, p0, Lcom/facebook/ads/internal/util/n$a;->f:I

    iput p7, p0, Lcom/facebook/ads/internal/util/n$a;->g:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 7

    iget-object v0, p0, Lcom/facebook/ads/internal/util/n$a;->a:[I

    iget v1, p0, Lcom/facebook/ads/internal/util/n$a;->b:I

    iget v2, p0, Lcom/facebook/ads/internal/util/n$a;->c:I

    iget v3, p0, Lcom/facebook/ads/internal/util/n$a;->d:I

    iget v4, p0, Lcom/facebook/ads/internal/util/n$a;->e:I

    iget v5, p0, Lcom/facebook/ads/internal/util/n$a;->f:I

    iget v6, p0, Lcom/facebook/ads/internal/util/n$a;->g:I

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/internal/util/n;->a([IIIIIII)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/util/n$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
