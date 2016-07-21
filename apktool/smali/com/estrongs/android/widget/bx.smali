.class public Lcom/estrongs/android/widget/bx;
.super Ljava/lang/Object;


# instance fields
.field protected b:I

.field protected c:Lcom/estrongs/android/widget/ag;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/widget/bx;->b:I

    new-instance v0, Lcom/estrongs/android/widget/by;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/by;-><init>(Lcom/estrongs/android/widget/bx;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/bx;->c:Lcom/estrongs/android/widget/ag;

    new-instance v0, Lcom/estrongs/android/widget/bz;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/bz;-><init>(Lcom/estrongs/android/widget/bx;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/bx;->c:Lcom/estrongs/android/widget/ag;

    return-void
.end method
