.class final Lcom/estrongs/android/util/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/estrongs/android/util/ar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/util/ar;Lcom/estrongs/android/util/ar;)I
    .locals 2

    iget-object v0, p2, Lcom/estrongs/android/util/ar;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Lcom/estrongs/android/util/ar;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/android/util/ar;

    check-cast p2, Lcom/estrongs/android/util/ar;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/util/ao;->a(Lcom/estrongs/android/util/ar;Lcom/estrongs/android/util/ar;)I

    move-result v0

    return v0
.end method
