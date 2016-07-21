.class Lcom/estrongs/android/pop/app/messagebox/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/app/messagebox/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/messagebox/ac;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/ad;->b:Lcom/estrongs/android/pop/app/messagebox/ac;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/messagebox/ad;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/ad;->b:Lcom/estrongs/android/pop/app/messagebox/ac;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/messagebox/ac;->a:Lcom/estrongs/android/pop/app/messagebox/z;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/z;->a(Ljava/lang/String;)Z

    return-void
.end method
