.class public Lcom/estrongs/android/widget/bw;
.super Ljava/lang/Object;


# instance fields
.field protected b:I

.field protected c:Lcom/estrongs/android/widget/ah;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/widget/bw;->b:I

    new-instance v0, Lcom/estrongs/android/widget/bx;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/bx;-><init>(Lcom/estrongs/android/widget/bw;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/bw;->c:Lcom/estrongs/android/widget/ah;

    new-instance v0, Lcom/estrongs/android/widget/by;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/by;-><init>(Lcom/estrongs/android/widget/bw;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/bw;->c:Lcom/estrongs/android/widget/ah;

    return-void
.end method
