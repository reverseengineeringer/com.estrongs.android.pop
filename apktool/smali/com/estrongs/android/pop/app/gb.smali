.class Lcom/estrongs/android/pop/app/gb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

.field final synthetic b:Lcom/estrongs/android/pop/app/ga;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ga;Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/gb;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ga;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ga;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ga;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/pop/app/ga;->a(Lcom/estrongs/android/pop/app/ga;J)J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ga;->a(Lcom/estrongs/android/pop/app/ga;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ga;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ga;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ga;->b(Lcom/estrongs/android/pop/app/ga;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ga;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gd;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ga;->c(Lcom/estrongs/android/pop/app/ga;)J

    move-result-wide v2

    long-to-int v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/gd;->a(J)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ga;->a(Lcom/estrongs/android/pop/app/ga;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ga;->a(Lcom/estrongs/android/pop/app/ga;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ga;->c(Lcom/estrongs/android/pop/app/ga;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ga;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gd;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ga;->c(Lcom/estrongs/android/pop/app/ga;)J

    move-result-wide v2

    long-to-int v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/gd;->a(J)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/gb;->b:Lcom/estrongs/android/pop/app/ga;

    invoke-static {v0, v4, v5}, Lcom/estrongs/android/pop/app/ga;->a(Lcom/estrongs/android/pop/app/ga;J)J

    return-void
.end method
