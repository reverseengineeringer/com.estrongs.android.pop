.class Lcom/estrongs/android/pop/app/messagebox/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/messagebox/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/messagebox/z;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/ae;->a:Lcom/estrongs/android/pop/app/messagebox/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/ae;->a:Lcom/estrongs/android/pop/app/messagebox/z;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/z;->b(Lcom/estrongs/android/pop/app/messagebox/z;)Lcom/estrongs/android/pop/app/messagebox/af;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/ae;->a:Lcom/estrongs/android/pop/app/messagebox/z;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/messagebox/z;->a(Lcom/estrongs/android/pop/app/messagebox/z;)Lcom/estrongs/android/pop/app/messagebox/ah;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/af;->a(Lcom/estrongs/android/pop/app/messagebox/ah;)V

    return-void
.end method
