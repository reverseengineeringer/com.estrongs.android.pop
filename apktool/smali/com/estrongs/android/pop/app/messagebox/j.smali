.class Lcom/estrongs/android/pop/app/messagebox/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/messagebox/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/messagebox/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/j;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/j;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/j;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/messagebox/f;->h(Lcom/estrongs/android/pop/app/messagebox/f;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/messagebox/f;->smoothScrollTo(II)V

    return-void
.end method
