.class public Lcom/estrongs/android/pop/app/PopAudioPlayer;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Lcom/estrongs/android/ui/e/jb;


# static fields
.field private static P:[Ljava/lang/String;

.field private static final h:Ljava/lang/String;


# instance fields
.field private A:Lcom/estrongs/android/ui/dialog/ProgressDialog;

.field private B:Z

.field private C:Lcom/estrongs/android/pop/app/ga;

.field private D:Lcom/estrongs/android/pop/app/ge;

.field private E:Lcom/estrongs/android/pop/app/fy;

.field private F:Lcom/estrongs/android/pop/app/gd;

.field private G:Landroid/widget/ImageView;

.field private H:Z

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Z

.field private N:Z

.field private O:Z

.field private Q:Lcom/estrongs/android/pop/app/aa;

.field private R:Landroid/view/View;

.field private S:Lcom/estrongs/android/pop/app/r;

.field private T:Landroid/widget/ProgressBar;

.field private U:Lcom/estrongs/android/pop/app/a/am;

.field private V:I

.field private final W:Landroid/content/BroadcastReceiver;

.field private final X:Landroid/content/BroadcastReceiver;

.field private Y:I

.field private Z:I

.field a:I

.field private aa:Lcom/estrongs/android/util/a;

.field private ab:Landroid/view/View;

.field private ac:Landroid/widget/TextView;

.field private ad:Lcom/estrongs/android/pop/app/a/e;

.field private ae:Lcom/estrongs/android/pop/app/a/a;

.field private af:Landroid/graphics/Bitmap;

.field private ag:Lcom/estrongs/android/ui/view/ac;

.field private ah:I

.field private ai:Landroid/os/Handler;

.field private aj:Landroid/content/ServiceConnection;

.field private ak:Landroid/graphics/Rect;

.field b:I

.field protected c:I

.field protected d:I

.field e:Z

.field f:Lcom/estrongs/android/widget/bc;

.field private g:Lcom/estrongs/android/pop/app/gc;

.field private i:Lcom/estrongs/android/pop/ad;

.field private j:Lcom/estrongs/android/widget/RealViewSwitcher;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/estrongs/android/ui/d/b;

.field private p:Landroid/view/View;

.field private q:Lcom/estrongs/android/ui/view/DragListView;

.field private r:Lcom/estrongs/android/ui/view/by;

.field private t:Lcom/estrongs/android/ui/e/o;

.field private u:Lcom/estrongs/android/ui/e/j;

.field private v:Lcom/estrongs/android/ui/e/hl;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    new-instance v0, Lcom/estrongs/android/pop/app/ej;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ej;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g:Lcom/estrongs/android/pop/app/gc;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Lcom/estrongs/android/pop/app/ge;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O:Z

    iput v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a:I

    iput v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b:I

    invoke-static {}, Lcom/estrongs/android/pop/app/aa;->g()Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Lcom/estrongs/android/pop/app/aa;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/pop/app/r;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->T:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/estrongs/android/pop/app/a/am;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/a/am;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/pop/app/a/am;

    iput v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V:I

    new-instance v0, Lcom/estrongs/android/pop/app/ey;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ey;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/estrongs/android/pop/app/fn;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/fn;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->X:Landroid/content/BroadcastReceiver;

    iput v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:I

    iput v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Z:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aa:Lcom/estrongs/android/util/a;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f:Lcom/estrongs/android/widget/bc;

    iput v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ah:I

    new-instance v0, Lcom/estrongs/android/pop/app/fi;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/fi;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/app/fm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/fm;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aj:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic A(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gc;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g:Lcom/estrongs/android/pop/app/gc;

    return-object v0
.end method

.method private B()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ChromecastNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/fy;->A()Lcom/estrongs/android/pop/app/a/am;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/fy;->A()Lcom/estrongs/android/pop/app/a/am;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/pop/app/a/am;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Lcom/estrongs/android/pop/app/ge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Lcom/estrongs/android/pop/app/ge;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/pop/app/a/am;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ge;->a(Lcom/estrongs/android/pop/app/a/am;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/pop/app/a/am;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/fy;->a(Lcom/estrongs/android/pop/app/a/am;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AudioServiceNotification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Lcom/estrongs/android/pop/app/ge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Lcom/estrongs/android/pop/app/ge;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ge;->b()Lcom/estrongs/android/pop/app/a/am;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Lcom/estrongs/android/pop/app/ge;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ge;->b()Lcom/estrongs/android/pop/app/a/am;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U:Lcom/estrongs/android/pop/app/a/am;

    goto :goto_0
.end method

.method static synthetic B(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W()V

    return-void
.end method

.method static synthetic C(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->T:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private C()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Z)V

    return-void
.end method

.method private D()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->p()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h:Ljava/lang/String;

    const-string v1, "changeToCastMode error, chromecast is not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->q()V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R:Landroid/view/View;

    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02028e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private E()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/pop/app/r;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/r;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/r;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/pop/app/r;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/pop/app/r;

    new-instance v1, Lcom/estrongs/android/pop/app/ft;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ft;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/r;->a(Lcom/estrongs/android/pop/app/ae;)V

    goto :goto_0
.end method

.method private F()V
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/app/fv;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/pop/app/fv;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a0077

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/RealViewSwitcher;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->T:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K()V

    return-void
.end method

.method private G()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q()V

    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ac:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/ek;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ek;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L()V

    return-void
.end method

.method private H()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/el;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/el;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    const v1, 0x7f0a0358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/em;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/em;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    const v1, 0x7f0a0359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/en;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/en;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    const v1, 0x7f0a0357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/eo;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/eo;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    const v1, 0x7f0a0272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ep;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ep;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private I()V
    .locals 0

    return-void
.end method

.method private J()V
    .locals 4

    const/4 v3, 0x1

    const v0, 0x7f0a007a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/estrongs/android/ui/view/by;

    invoke-direct {v1, p0, v0, v3}, Lcom/estrongs/android/ui/view/by;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/view/by;

    new-instance v0, Lcom/estrongs/android/ui/e/o;

    invoke-direct {v0, p0, v3}, Lcom/estrongs/android/ui/e/o;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/ui/e/o;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/view/by;

    const-string v1, "playing"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/ui/e/o;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/by;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/view/by;

    const-string v1, "playing"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/by;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v0, Lcom/estrongs/android/ui/e/j;

    invoke-direct {v0, p0, v3}, Lcom/estrongs/android/ui/e/j;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/view/by;

    const-string v1, "playlist"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/by;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    new-instance v0, Lcom/estrongs/android/ui/e/hl;

    invoke-direct {v0, p0, v3}, Lcom/estrongs/android/ui/e/hl;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/ui/e/hl;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/view/by;

    const-string v1, "playlist_edit"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/ui/e/hl;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/by;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    return-void
.end method

.method private K()V
    .locals 2

    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/app/eq;

    invoke-direct {v1, p0, v0, p0, v0}, Lcom/estrongs/android/pop/app/eq;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->o:Lcom/estrongs/android/ui/d/b;

    return-void
.end method

.method private L()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/view/View;

    const v1, 0x7f0a0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/eu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/eu;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/view/View;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    return-void
.end method

.method private M()V
    .locals 2

    const v0, 0x7f0a007b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/view/View;

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/view/View;

    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/view/View;

    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/view/View;

    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/view/View;

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ew;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ew;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k:Landroid/view/View;

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0089

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Landroid/widget/ImageView;

    new-instance v0, Lcom/estrongs/android/pop/app/ex;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ex;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0085

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/ez;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ez;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private N()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/app/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private O()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    if-nez v0, :cond_0

    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b01c7

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/estrongs/android/ui/dialog/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private P()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A:Lcom/estrongs/android/ui/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030011

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Landroid/view/View;

    const v1, 0x7f0a008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Landroid/view/View;

    const v1, 0x7f0a008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/pop/app/fe;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fe;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/view/DragListView;

    invoke-direct {v0, p0, v3}, Lcom/estrongs/android/ui/view/DragListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/DragListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/DragListView;

    new-instance v1, Lcom/estrongs/android/pop/app/ff;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ff;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/DragListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/DragListView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/DragListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/DragListView;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/DragListView;->setSelector(I)V

    new-instance v0, Lcom/estrongs/android/ui/view/ac;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/view/ac;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/DragListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/DragListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/DragListView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/estrongs/android/pop/app/fg;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/fg;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f:Lcom/estrongs/android/widget/bc;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f:Lcom/estrongs/android/widget/bc;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(Lcom/estrongs/android/widget/bc;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/DragListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/DragListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/DragListView;

    new-instance v1, Lcom/estrongs/android/pop/app/fh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fh;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/DragListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(Z)V

    return-void
.end method

.method private R()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/ui/e/o;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/o;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/ui/e/o;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Z:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/o;->c(I)V

    return-void
.end method

.method private S()V
    .locals 1

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(I)V

    return-void
.end method

.method private T()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private U()V
    .locals 3

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private V()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aj:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Z

    :cond_0
    return-void
.end method

.method private W()V
    .locals 11

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->q()V

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->b()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    iget-wide v4, v0, Lcom/estrongs/android/pop/app/a/al;->a:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->d()V

    move-object v1, v0

    :goto_0
    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/a/al;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/a/ao;->a(Lcom/estrongs/android/pop/app/a/al;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->b()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gd;->a(Lcom/estrongs/android/pop/app/a/al;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->v()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Z:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->u()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->i()I

    move-result v0

    invoke-direct {p0, v0, v8}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->l()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gd;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v10, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    invoke-direct {p0, v9, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/CharSequence;)V

    :goto_4
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Z

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v8}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f:Lcom/estrongs/android/widget/bc;

    invoke-interface {v0, v8}, Lcom/estrongs/android/widget/bc;->c(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->h()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->v()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Z:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->u()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:I

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x()V

    iput-boolean v8, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Z

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gd;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v9, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, v9, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->h()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->h()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->l()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    move v0, v3

    :cond_9
    invoke-direct {p0, v10, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    invoke-direct {p0, v9, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    goto :goto_3

    :cond_a
    const v0, 0x7f0b026d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/ga;)Lcom/estrongs/android/pop/app/ga;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C:Lcom/estrongs/android/pop/app/ga;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gd;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/gd;)Lcom/estrongs/android/pop/app/gd;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/ge;)Lcom/estrongs/android/pop/app/ge;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Lcom/estrongs/android/pop/app/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J:Ljava/lang/String;

    return-object p1
.end method

.method private a(IZ)V
    .locals 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/a/ak;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Lcom/estrongs/android/pop/app/a/ak;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c(Z)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/gd;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/app/gd;->a(Lcom/estrongs/android/pop/app/gc;)V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gd;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gd;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gd;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gd;->n()V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gd;->q()V

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/gd;->z()V

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    const-string v3, ".m3u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v1, "http://127.0.0.1:59777/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [Ljava/lang/Exception;

    new-array v1, v1, [[Ljava/lang/String;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/estrongs/android/pop/app/fu;

    invoke-direct {v3, v1, p0, v0}, Lcom/estrongs/android/pop/app/fu;-><init>([[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Exception;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    aget-object v2, v0, v4

    if-eqz v2, :cond_1

    aget-object v0, v0, v4

    throw v0

    :cond_1
    aget-object v0, v1, v4

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(II)V

    return-void
.end method

.method private b(Lcom/estrongs/android/pop/app/a/ak;)V
    .locals 7

    const v6, 0x7f0b044c

    if-eqz p1, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ak;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ak;->e:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ak;->e:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/app/a/ak;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ak;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ak;->g:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0b045e

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/app/a/ak;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/app/a/ak;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ak;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ak;->f:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0b045f

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/app/a/ak;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/app/a/ak;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Lcom/estrongs/android/ui/dialog/ks;

    const-string v2, "music"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/dialog/ks;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    new-instance v1, Lcom/estrongs/android/pop/app/fo;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fo;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ks;->a(Lcom/estrongs/android/ui/dialog/kv;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ks;->show()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b044c

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static b([Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P:[Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e(II)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Lcom/estrongs/android/pop/app/ge;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R:Landroid/view/View;

    const v1, 0x7f0a0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0202b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->q()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gd;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gd;->d(I)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->a()Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->T:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    return-object v0
.end method

.method private d(II)V
    .locals 0

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f(II)V

    return-void
.end method

.method private static d(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/estrongs/android/util/ai;

    invoke-direct {v0, p0}, Lcom/estrongs/android/util/ai;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/util/ai;->a()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-static {v0}, Lcom/estrongs/android/util/am;->t(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private e(I)V
    .locals 4

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private e(II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ah:I

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ah:I

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(II)V

    iput v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ah:I

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/ui/e/o;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/o;->h()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/j;->h()V

    invoke-direct {p0, p2, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C:Lcom/estrongs/android/pop/app/ga;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C:Lcom/estrongs/android/pop/app/ga;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ga;->a()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/ui/e/o;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/o;->j()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/j;->j()V

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/ui/e/o;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/o;->i()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/j;->i()V

    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/ui/e/o;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/o;->h()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/j;->h()V

    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d(II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C:Lcom/estrongs/android/pop/app/ga;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ga;->a()V

    iput p2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ah:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->y()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C()V

    return-void
.end method

.method private f(I)Ljava/lang/String;
    .locals 5

    div-int/lit16 v0, p1, 0x3e8

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(II)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(II)V

    if-nez p1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v:Lcom/estrongs/android/ui/e/hl;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/e/hl;->d(I)V

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I()V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/widget/RealViewSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    return-object v0
.end method

.method private g(II)V
    .locals 4

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/by;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r:Lcom/estrongs/android/ui/view/by;

    return-object v0
.end method

.method private h(II)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ai:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/ac;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Z

    return v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/aa;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Lcom/estrongs/android/pop/app/aa;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/PopAudioPlayer;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V:I

    return v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D()V

    return-void
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/r;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/pop/app/r;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E()V

    return-void
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic r(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/d/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->o:Lcom/estrongs/android/ui/d/b;

    return-object v0
.end method

.method static synthetic s(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x:Landroid/view/View;

    return-object v0
.end method

.method static synthetic u(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M:Z

    return v0
.end method

.method static synthetic v(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ga;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->C:Lcom/estrongs/android/pop/app/ga;

    return-object v0
.end method

.method static synthetic w(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->U()V

    return-void
.end method

.method static synthetic x(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S()V

    return-void
.end method

.method static synthetic y(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B()V

    return-void
.end method

.method static synthetic z(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ge;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Lcom/estrongs/android/pop/app/ge;

    return-object v0
.end method

.method public static z()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(I)V

    return-void
.end method

.method public a(II)V
    .locals 7

    const v6, 0x7f0a003d

    const/16 v2, 0x8

    const v5, -0x777778

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    const v1, 0x7f0a0359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    const v1, 0x7f0a0358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ac:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    const v1, 0x7f0a0357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ac;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    const v1, 0x7f0a0272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-ne p1, v3, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    const v1, 0x7f0a0359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    const v1, 0x7f0a0358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-direct {v1, v3, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-direct {v1, v3, v5}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/e/j;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->af:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->af:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->af:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->af:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->af:Landroid/graphics/Bitmap;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/pop/app/a/ak;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/gd;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->h()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->q()V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->l()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/ak;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/estrongs/android/pop/app/a/ak;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/a/ao;->a(Lcom/estrongs/android/pop/app/a/al;)V

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->b()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/a/al;->d()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/a/al;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gd;->a(Lcom/estrongs/android/pop/app/a/al;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h()V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/estrongs/android/pop/app/a/al;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/ak;",
            ">;",
            "Lcom/estrongs/android/pop/app/a/al;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->h()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    if-ne v0, p2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gd;->b(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/estrongs/android/pop/app/a/al;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->h()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/pop/app/a/al;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->a()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->h()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ac;->a()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/app/gd;->a(II)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->a()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/a/al;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/app/a/al;->a(Lcom/estrongs/android/pop/app/a/ak;J)V

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/ak;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->h()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    if-ne v0, v5, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w()Lcom/estrongs/android/pop/app/a/ak;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/gd;->a(Ljava/util/List;)V

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/a/al;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->q()V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h()V

    return-void

    :cond_3
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->l()I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    goto :goto_1

    :cond_4
    invoke-virtual {v5, p1}, Lcom/estrongs/android/pop/app/a/al;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method public b(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ac;->a()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gd;->h()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gd;->l()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/gd;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/gd;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/gd;->d()Z

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/estrongs/android/ui/view/ac;->a(IZZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/DragListView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/DragListView;->setSelection(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d:I

    add-int/lit8 v2, v1, 0x1

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q:Lcom/estrongs/android/ui/view/DragListView;

    iget v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->c:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/DragListView;->setSelection(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0, v0}, Lcom/estrongs/android/ui/view/ac;->a(IZZ)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ab:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->a()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/pop/app/r;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/pop/app/r;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/r;->show()V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ad:Lcom/estrongs/android/pop/app/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/fa;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/pop/app/fa;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ad:Lcom/estrongs/android/pop/app/a/e;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ad:Lcom/estrongs/android/pop/app/a/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ad:Lcom/estrongs/android/pop/app/a/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/e;->c()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G:Landroid/widget/ImageView;

    const v1, 0x7f0202bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ad:Lcom/estrongs/android/pop/app/a/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/e;->d()V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ae:Lcom/estrongs/android/pop/app/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/a/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/a/a;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ae:Lcom/estrongs/android/pop/app/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ae:Lcom/estrongs/android/pop/app/a/a;

    new-instance v1, Lcom/estrongs/android/pop/app/fb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fb;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/ae;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ae:Lcom/estrongs/android/pop/app/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ae:Lcom/estrongs/android/pop/app/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/a;->b()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ae:Lcom/estrongs/android/pop/app/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/a;->c()V

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->finish()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D:Lcom/estrongs/android/pop/app/ge;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/gd;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/gd;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->r()Lcom/estrongs/android/pop/app/a/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gd;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gd;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/e/j;->a(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ak;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gd;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gd;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/j;->b(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h()V

    return-void

    :cond_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/pop/app/fc;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/fc;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/a/ak;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/j;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Z)V

    return-void
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->h()I

    move-result v0

    return v0
.end method

.method public j()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gd;->h()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gd;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gd;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gd;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/gd;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k()V

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->k()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gd;->q()V

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public k()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/gd;->a(J)V

    return-void
.end method

.method public l()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Y:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gd;->b(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->h()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/ui/e/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t:Lcom/estrongs/android/ui/e/o;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/o;->h()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u:Lcom/estrongs/android/ui/e/j;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/j;->h()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->p()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->x()Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->w()V

    goto :goto_0
.end method

.method public n()V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Z:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Z:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Z:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gd;->c(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R()V

    return-void
.end method

.method public o()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->j()I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->f()Z

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/gd;->q()V

    :cond_0
    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->j()Lcom/estrongs/android/ui/pcs/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3, p2}, Lcom/estrongs/android/ui/pcs/j;->a(ILandroid/content/Intent;I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ak:Landroid/graphics/Rect;

    invoke-static {}, Lcom/estrongs/android/ui/f/e;->d()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v3, 0x0

    const v10, 0x7f0b0417

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i:Lcom/estrongs/android/pop/ad;

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_1

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v0, "hasplaylist"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2
    array-length v8, v2

    if-ge v0, v8, :cond_3

    aget-object v8, v2, v0

    const-string v9, ".m3u"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :try_start_1
    aget-object v8, v2, v0

    invoke-static {v8}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B:Z

    goto :goto_1

    :cond_2
    aget-object v8, v2, v0

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, v10, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->finish()V

    :cond_4
    :goto_4
    return-void

    :cond_5
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_5
    const-string v2, "showlist"

    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Z

    if-nez v0, :cond_c

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->K:Z

    if-nez v2, :cond_c

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "file://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L:Ljava/lang/String;

    :cond_6
    :goto_6
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->G()V

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->h()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O()V

    new-instance v2, Lcom/estrongs/android/pop/app/fp;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/fp;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/a/ao;->a(Lcom/estrongs/android/pop/app/a/ap;)V

    new-instance v2, Lcom/estrongs/android/pop/app/fr;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/fr;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/a/ao;)V

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/fr;->start()V

    :cond_8
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->d()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Lcom/estrongs/android/pop/app/fs;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/fs;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/a/ao;)V

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/fs;->start()V

    :cond_9
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "hasplaylist"

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s()V

    const-string v0, "PopAudioPlayer"

    invoke-static {p0, v1, v0}, Lcom/estrongs/android/util/a;->a(Landroid/content/Context;ZLjava/lang/String;)Lcom/estrongs/android/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aa:Lcom/estrongs/android/util/a;

    new-instance v0, Lcom/estrongs/android/pop/app/fy;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/fy;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Lcom/estrongs/android/pop/app/aa;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/aa;->a(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B()V

    const-string v0, "Chromecast"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->p()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->D()V

    const-string v0, "ChromecastNotification"

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d()V

    :goto_7
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W()V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".m3u"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_2
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    invoke-static {p0, v10, v4}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->finish()V

    goto/16 :goto_4

    :cond_b
    const-string v2, "http://127.0.0.1:59777/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_c
    if-eqz v0, :cond_7

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move v2, v1

    :goto_8
    array-length v4, v0

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    aget-object v7, v0, v2

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    iput-object v3, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/fy;->b()V

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d()V

    goto/16 :goto_4

    :catch_2
    move-exception v8

    goto/16 :goto_3

    :cond_f
    move-object v0, v3

    goto/16 :goto_5

    :cond_10
    move-object v0, v2

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->M:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V()V

    :goto_0
    :try_start_0
    const-string v0, "Market"

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->W:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->X:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Lcom/estrongs/android/pop/app/aa;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->E:Lcom/estrongs/android/pop/app/fy;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/aa;->b(Lcom/estrongs/chromecast/RemoteMediaPlayerListener;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/pop/app/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S:Lcom/estrongs/android/pop/app/r;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/r;->a()V

    :cond_2
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void

    :cond_3
    const-string v0, "Market"

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Market"

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ac;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u()V

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N:Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x18

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/aa;->v()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x19

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->Q:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/aa;->w()V

    goto :goto_0

    :cond_4
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "hasplaylist"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/app/PopAudioPlayer;->P:[Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    aget-object v3, v0, v1

    const-string v4, ".m3u"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :try_start_1
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f0b0417

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_5
    :goto_3
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->L:Ljava/lang/String;

    :cond_6
    :goto_4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s()V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".m3u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_5

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    const v0, 0x7f0b0417

    const/4 v1, 0x1

    :try_start_4
    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_2

    :cond_8
    const-string v1, "http://127.0.0.1:59777/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/pop/app/AudioPlayerService;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_4

    :catch_2
    move-exception v3

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gd;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aa:Lcom/estrongs/android/util/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aa:Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->c()Z

    :cond_1
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aa:Lcom/estrongs/android/util/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aa:Lcom/estrongs/android/util/a;

    invoke-virtual {v1}, Lcom/estrongs/android/util/a;->b()Z

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/gd;->a(Z)V

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e:Z

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->l()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gd;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->N()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gd;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(II)V

    goto :goto_0

    :cond_4
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e:Z

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gd;->q()V

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/a/ao;->b()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/a/al;->d()V

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->I:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/app/a/al;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/gd;->a(Lcom/estrongs/android/pop/app/a/al;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->i()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->R()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->J:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_6
    const v0, 0x7f0b026d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_7
    const-string v0, "Market"

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Market"

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_8
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->S()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g:Lcom/estrongs/android/pop/app/gc;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/gd;->a(Lcom/estrongs/android/pop/app/gc;)V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->O:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->o()V

    :cond_0
    const-string v0, "Market"

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Market"

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->V()V

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->T()V

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onStop()V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->q()V

    :cond_0
    return-void
.end method

.method public q()Lcom/estrongs/android/pop/app/a/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->a()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->a()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/a/ao;->b(Lcom/estrongs/android/pop/app/a/al;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/gd;->h()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->q()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->x()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h()V

    :cond_1
    return-void
.end method

.method s()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->aj:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->H:Z

    :cond_0
    return-void
.end method

.method public t()Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ak:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ak:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    iget-object v5, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    iget-object v5, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ak:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ak:Landroid/graphics/Rect;

    return-object v0
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ac;->a(Z)V

    return-void
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/ak;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/estrongs/android/pop/app/a/ak;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->r()Lcom/estrongs/android/pop/app/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public x()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->e()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/gd;->a(Lcom/estrongs/android/pop/app/a/al;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->e()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/pop/app/a/al;)V

    invoke-direct {p0, v3, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    return-void
.end method

.method public y()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->h()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/a/ao;->e()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->f()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->F:Lcom/estrongs/android/pop/app/gd;

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/a/ao;->e()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/gd;->a(Lcom/estrongs/android/pop/app/a/al;)Z

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(IZ)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->ag:Lcom/estrongs/android/ui/view/ac;

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/a/ao;->e()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/pop/app/a/al;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->f()V

    goto :goto_1
.end method
