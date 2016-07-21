.class final Lcom/estrongs/android/pop/utils/bg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/fs/b/y;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/b/y;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bg;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/bg;->b:Lcom/estrongs/fs/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bg;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bg;->b:Lcom/estrongs/fs/b/y;

    invoke-virtual {v1}, Lcom/estrongs/fs/b/y;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/bg;->b:Lcom/estrongs/fs/b/y;

    invoke-virtual {v2}, Lcom/estrongs/fs/b/y;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
