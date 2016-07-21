.class final Lcom/estrongs/android/pop/app/messagebox/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/ak;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/pop/app/messagebox/al;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/ak;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/al;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/al;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
