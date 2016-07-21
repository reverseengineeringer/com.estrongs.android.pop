.class public Lcom/estrongs/android/pop/app/u;
.super Landroid/os/Binder;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlayerService;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/android/pop/app/AudioPlayerService;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    return-object v0
.end method
