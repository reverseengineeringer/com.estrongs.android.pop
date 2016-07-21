.class public Lcom/estrongs/android/ui/c/h;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/estrongs/android/ui/c/h;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/h;-><init>(I)V

    iput-object p2, p0, Lcom/estrongs/android/ui/c/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/estrongs/android/ui/c/h;

    iget v0, p0, Lcom/estrongs/android/ui/c/h;->a:I

    iget v1, p1, Lcom/estrongs/android/ui/c/h;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/h;->b:Ljava/lang/Object;

    iget-object v1, p1, Lcom/estrongs/android/ui/c/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
