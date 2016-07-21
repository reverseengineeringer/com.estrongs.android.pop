.class public Lcom/estrongs/android/view/bn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/i;


# instance fields
.field private a:Lcom/estrongs/android/pop/utils/ai;

.field private b:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/view/bn;->b:Ljava/lang/String;

    iput p2, p0, Lcom/estrongs/android/view/bn;->d:I

    invoke-static {p1, p2}, Lcom/estrongs/android/pop/utils/ad;->d(Ljava/lang/String;I)Lcom/estrongs/android/pop/utils/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/bn;->a:Lcom/estrongs/android/pop/utils/ai;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/bn;->b:Ljava/lang/String;

    iget v1, p0, Lcom/estrongs/android/view/bn;->d:I

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/ad;->d(Ljava/lang/String;I)Lcom/estrongs/android/pop/utils/ai;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/estrongs/android/pop/utils/ai;->e:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/estrongs/android/pop/utils/ai;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/estrongs/fs/h;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/view/bn;->a:Lcom/estrongs/android/pop/utils/ai;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/bn;->a:Lcom/estrongs/android/pop/utils/ai;

    iget v2, p0, Lcom/estrongs/android/view/bn;->d:I

    invoke-static {v1, p1, v2}, Lcom/estrongs/android/pop/utils/ad;->a(Lcom/estrongs/android/pop/utils/ai;Lcom/estrongs/fs/h;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
