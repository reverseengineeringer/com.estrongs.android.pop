.class Lcom/estrongs/android/pop/utils/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/al;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/al;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/am;->a:Lcom/estrongs/android/pop/utils/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/am;->a:Lcom/estrongs/android/pop/utils/al;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/al;->a:Lcom/estrongs/android/pop/utils/ak;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/ak;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/l;->b(Landroid/content/Context;)V

    return-void
.end method
