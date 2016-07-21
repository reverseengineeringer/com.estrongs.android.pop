.class Lcom/estrongs/android/pop/app/fz;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/pop/app/fw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/fw;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fz;->b:Lcom/estrongs/android/pop/app/fw;

    iput p2, p0, Lcom/estrongs/android/pop/app/fz;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fz;->b:Lcom/estrongs/android/pop/app/fw;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/fw;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gq;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/fz;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gq;->d(I)Z

    return-void
.end method
