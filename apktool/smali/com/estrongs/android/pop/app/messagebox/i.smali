.class Lcom/estrongs/android/pop/app/messagebox/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/messagebox/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/messagebox/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/i;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/i;->a:Lcom/estrongs/android/pop/app/messagebox/f;

    invoke-virtual {v0, v1, v1}, Lcom/estrongs/android/pop/app/messagebox/f;->smoothScrollTo(II)V

    return-void
.end method
