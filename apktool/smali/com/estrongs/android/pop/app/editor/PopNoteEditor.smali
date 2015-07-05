.class public Lcom/estrongs/android/pop/app/editor/PopNoteEditor;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/estrongs/android/pop/app/editor/ap;
.implements Lcom/estrongs/android/pop/app/editor/f;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Ljava/lang/Object;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:I

.field private G:I

.field private H:I

.field private I:Ljava/io/File;

.field private J:Lcom/estrongs/android/pop/app/editor/a;

.field private K:J

.field private L:Lcom/estrongs/android/pop/app/editor/ai;

.field private M:Lcom/estrongs/android/pop/app/editor/an;

.field private N:I

.field private O:I

.field private P:Z

.field private Q:Lcom/estrongs/android/pop/app/editor/c;

.field private R:I

.field private S:I

.field private T:Lcom/estrongs/android/util/a;

.field private U:Lcom/estrongs/android/pop/app/editor/aj;

.field private final V:Landroid/os/Handler;

.field private final W:Ljava/lang/Runnable;

.field a:Z

.field b:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Lcom/estrongs/android/pop/app/editor/b;

.field private h:Lcom/estrongs/android/pop/app/editor/ReaderTextView;

.field private i:Landroid/widget/EditText;

.field private j:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

.field private k:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/TextView;

.field private t:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/SeekBar;

.field private w:Landroid/widget/TextView;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->f:Landroid/content/Context;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    iput v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->x:I

    iput-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->y:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->C:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->D:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->E:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->F:I

    iput v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->G:I

    iput v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->H:I

    iput-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->I:Ljava/io/File;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->J:Lcom/estrongs/android/pop/app/editor/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->K:J

    iput-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->L:Lcom/estrongs/android/pop/app/editor/ai;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->M:Lcom/estrongs/android/pop/app/editor/an;

    iput v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->N:I

    iput v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->O:I

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->P:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    iput v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->R:I

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->R:I

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->S:I

    iput-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->T:Lcom/estrongs/android/util/a;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->U:Lcom/estrongs/android/pop/app/editor/aj;

    new-instance v0, Lcom/estrongs/android/pop/app/editor/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/editor/g;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b:Z

    new-instance v0, Lcom/estrongs/android/pop/app/editor/y;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/editor/y;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->W:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic A(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic B(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic C(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->I:Ljava/io/File;

    return-object v0
.end method

.method static synthetic D(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->G:I

    return v0
.end method

.method static synthetic E(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/an;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->M:Lcom/estrongs/android/pop/app/editor/an;

    return-object v0
.end method

.method static synthetic F(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    return-object v0
.end method

.method static synthetic G(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->G:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->G:I

    return v0
.end method

.method static synthetic H(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->h()V

    return-void
.end method

.method static synthetic I(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->G:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->G:I

    return v0
.end method

.method static synthetic J(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->K:J

    return-wide v0
.end method

.method static synthetic K(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->C:Z

    return v0
.end method

.method static synthetic L(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->E:Z

    return v0
.end method

.method static synthetic M(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->D:Z

    return v0
.end method

.method static synthetic N(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k()I

    move-result v0

    return v0
.end method

.method static synthetic O(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->n()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/ReaderTextView;ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/ReaderTextView;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/ReaderTextView;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b(Lcom/estrongs/android/pop/app/editor/ReaderTextView;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Lcom/estrongs/android/pop/app/editor/ReaderTextView;ILjava/lang/String;Ljava/lang/String;I)I
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    if-ne v0, p5, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-object v2, p3

    :goto_1
    if-lez v0, :cond_4

    :try_start_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    if-lt v3, p5, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    const/4 v0, 0x1

    move v4, v0

    move-object v0, v2

    move v2, v4

    :goto_2
    if-eqz v2, :cond_0

    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/ReaderTextView;Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    if-lez v0, :cond_3

    :goto_4
    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1e

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, p3

    :goto_5
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v2

    move-object v2, v4

    goto :goto_5

    :cond_4
    move-object v0, v2

    move v2, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->K:J

    return-wide p1
.end method

.method private a(Lcom/estrongs/android/pop/app/editor/ReaderTextView;Ljava/lang/String;)Landroid/text/Layout;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v1, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->c()F

    move-result v5

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->b()F

    move-result v6

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->getIncludeFontPadding()Z

    move-result v7

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ReaderTextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->h:Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/aj;)Lcom/estrongs/android/pop/app/editor/aj;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->U:Lcom/estrongs/android/pop/app/editor/aj;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/b;)Lcom/estrongs/android/pop/app/editor/b;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/estrongs/android/pop/app/editor/ReaderTextView;IILjava/lang/String;I)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->L:Lcom/estrongs/android/pop/app/editor/ai;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/editor/ai;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    if-gt p2, p3, :cond_3

    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/ReaderTextView;Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ne v1, p5, :cond_1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-ge v1, p5, :cond_2

    add-int/lit8 v3, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/ReaderTextView;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/ReaderTextView;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFixSubString error not found low "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", high "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->N:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->P:Z

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->P:Z

    :goto_1
    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/editor/am;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->getScrollY()I

    move-result v3

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/estrongs/android/pop/app/editor/am;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->P:Z

    if-eqz v2, :cond_3

    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->P:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->O:I

    return p1
.end method

.method private b(Lcom/estrongs/android/pop/app/editor/ReaderTextView;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x1000

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/ReaderTextView;Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/text/Layout;->getBottomPadding()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ObservableScrollView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->e:Ljava/lang/String;

    return-object p1
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->i:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->N:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->h:Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->R:I

    iget v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->S:I

    if-eq v0, v1, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    :cond_3
    iput v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->N:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->i:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->j:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->r:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->showDialog(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->S:I

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->G:I

    return p1
.end method

.method private d()Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/editor/ag;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/editor/ag;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/ObservableScrollView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->j:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->x:I

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->R:I

    return p1
.end method

.method private e()V
    .locals 4

    const v0, 0x7f0a030c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v1, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020294

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0b002d

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/app/editor/j;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/editor/j;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v1, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02029c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0b0013

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/app/editor/k;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/editor/k;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    new-instance v1, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02028c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0b01fc

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/app/editor/l;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/editor/l;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->a(Lcom/estrongs/android/view/a/a;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    const v0, 0x7f0a0272

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    new-instance v1, Lcom/estrongs/android/pop/app/editor/n;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/n;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/estrongs/android/pop/app/editor/ak;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/estrongs/android/pop/app/editor/ak;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;IZ)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ak;->start()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->u:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private f()Z
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->O:I

    if-eqz v0, :cond_0

    const v0, 0x7f0b01c7

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/utils/a;->a(Landroid/app/Activity;I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->x:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->x:I

    return v0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->x:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->x:I

    return v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private i()V
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->N:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->N:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->n:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->l:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->j:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->r:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/pop/app/editor/am;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->getScrollY()I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/estrongs/android/pop/app/editor/am;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;II)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->l()V

    return-void
.end method

.method private j()V
    .locals 12

    const/4 v11, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/c;->c()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->I:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->I:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->h()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/b;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->e:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/b;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/c;->h()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->K:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/c;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->d:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/pop/app/editor/b;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->I:Ljava/io/File;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->d:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5}, Lcom/estrongs/android/pop/app/editor/b;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    const/16 v4, 0x2000

    const/16 v0, 0x1000

    new-array v5, v0, [C

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->h()V

    :goto_2
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->C:Z

    if-nez v0, :cond_d

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->D:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->D:Z

    :cond_2
    :goto_3
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a:Z

    if-eqz v0, :cond_b

    iget-object v6, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B:Ljava/lang/Object;

    monitor-enter v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/app/editor/b;->read([C)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a:Z

    iget v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->G:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->G:I

    array-length v3, v5

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->M:Lcom/estrongs/android/pop/app/editor/an;

    iget v7, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->G:I

    iget-object v8, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    invoke-virtual {v8}, Lcom/estrongs/android/pop/app/editor/b;->b()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Lcom/estrongs/android/pop/app/editor/an;->a(IJ)V

    :cond_3
    invoke-static {v5}, Lcom/estrongs/android/pop/app/editor/as;->a([C)I

    move-result v3

    iput v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->R:I

    iget v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->R:I

    iput v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->S:I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v4, :cond_9

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    const/16 v8, 0x1000

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    new-instance v7, Lcom/estrongs/android/pop/app/editor/am;

    iget-object v8, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/estrongs/android/pop/app/editor/am;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;II)V

    iput-object v7, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v7, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->y:Ljava/lang/String;

    :cond_4
    :goto_4
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_5
    :goto_5
    :try_start_b
    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v0, 0x0

    :try_start_c
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->D:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->E:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit v3

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_e
    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/editor/b;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :cond_6
    :goto_6
    throw v0

    :cond_7
    :try_start_f
    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->G:I

    if-le v0, v11, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->E:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->E:Z

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_8
    :try_start_11
    iget v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->G:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->G:I

    :cond_9
    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v3, v4, :cond_e

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/app/editor/b;->read([C)I

    move-result v0

    if-gez v0, :cond_8

    move v3, v0

    move v0, v1

    :goto_7
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v3, Lcom/estrongs/android/pop/app/editor/am;

    iget-object v7, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-direct {v3, p0, v7, v8, v9}, Lcom/estrongs/android/pop/app/editor/am;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;II)V

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :catchall_3
    move-exception v0

    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw v0

    :cond_b
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b:Z

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B:Ljava/lang/Object;

    monitor-enter v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :try_start_13
    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->G:I

    if-le v0, v11, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/b;->close()V

    new-instance v0, Lcom/estrongs/android/pop/app/editor/ah;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Lcom/estrongs/android/pop/app/editor/ah;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/g;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ah;->start()V

    :cond_c
    monitor-exit v3

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_d
    :try_start_15
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/b;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    :cond_e
    move v3, v0

    move v0, v2

    goto :goto_7
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->f()Z

    move-result v0

    return v0
.end method

.method private k()I
    .locals 8

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->B:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    if-nez v0, :cond_0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/b;->b()J
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    :try_start_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->h:Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    if-nez v2, :cond_2

    :cond_1
    monitor-exit v7

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    monitor-exit v7

    move v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    monitor-exit v7

    move v0, v6

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->h:Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->h:Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->getLineHeight()I

    move-result v0

    div-int v5, v2, v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->z:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->c:Ljava/lang/String;

    const-string v1, "getCurrentProgress empty text"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v6

    goto :goto_0

    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->h:Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->a(Lcom/estrongs/android/pop/app/editor/ReaderTextView;IILjava/lang/String;I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    if-nez v0, :cond_7

    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/b;->a()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g:Lcom/estrongs/android/pop/app/editor/b;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/editor/b;->b()J

    move-result-wide v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    int-to-long v0, v0

    sub-long v0, v2, v0

    :cond_5
    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    :try_start_6
    iget-wide v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->K:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    monitor-exit v7

    move v0, v6

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->d:Ljava/lang/String;

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    monitor-exit v7

    move v0, v6

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v0, v6

    goto/16 :goto_0

    :cond_7
    move-object v4, v0

    goto :goto_1
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->S:I

    return v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->f:Landroid/content/Context;

    return-object v0
.end method

.method private l()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->m()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->m:Landroid/widget/ImageView;

    const v1, 0x7f0202bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p()V

    goto :goto_0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->m:Landroid/widget/ImageView;

    const v1, 0x7f0202bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b()V

    return-void
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o()V

    return-void
.end method

.method private n()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->m()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p()V

    return-void
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    return-object v0
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->m()V

    return-void
.end method

.method static synthetic r(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->i()V

    return-void
.end method

.method static synthetic s(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic t(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->v:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic v(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    return-object v0
.end method

.method static synthetic w(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->g()V

    return-void
.end method

.method static synthetic x(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->R:I

    return v0
.end method

.method static synthetic y(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)Lcom/estrongs/android/pop/app/editor/aj;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->U:Lcom/estrongs/android/pop/app/editor/aj;

    return-object v0
.end method

.method static synthetic z(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->j()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->L:Lcom/estrongs/android/pop/app/editor/ai;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/editor/ai;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/editor/ai;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->L:Lcom/estrongs/android/pop/app/editor/ai;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->L:Lcom/estrongs/android/pop/app/editor/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ai;->start()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->L:Lcom/estrongs/android/pop/app/editor/ai;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/editor/ai;->setPriority(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->L:Lcom/estrongs/android/pop/app/editor/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ai;->a()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->getHeight()I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->F:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/editor/am;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->y:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/estrongs/android/pop/app/editor/am;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Ljava/lang/String;II)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->y:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;IIII)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->F:I

    if-ne v0, p3, :cond_0

    if-eq p5, p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->D:Z

    :cond_0
    if-nez p3, :cond_1

    if-eq p3, p5, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->E:Z

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->L:Lcom/estrongs/android/pop/app/editor/ai;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->L:Lcom/estrongs/android/pop/app/editor/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ai;->b()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected b()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->W:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->V:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->W:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->C:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->L:Lcom/estrongs/android/pop/app/editor/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->L:Lcom/estrongs/android/pop/app/editor/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/ai;->a()V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->A:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->finish()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->N:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->U:Lcom/estrongs/android/pop/app/editor/aj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->t:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->m()V

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300a5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->setContentView(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "PopNoteEditor"

    invoke-static {p0, v3, v1}, Lcom/estrongs/android/util/a;->a(Landroid/content/Context;ZLjava/lang/String;)Lcom/estrongs/android/util/a;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->T:Lcom/estrongs/android/util/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const v0, 0x7f0b0047

    invoke-static {p0, v0, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_1
    iput-object p0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->f:Landroid/content/Context;

    new-instance v1, Lcom/estrongs/android/pop/app/editor/c;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/editor/c;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    const v0, 0x7f0a0306

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->a(Lcom/estrongs/android/pop/app/editor/f;)V

    const v0, 0x7f0a0307

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->h:Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->h:Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->a(Lcom/estrongs/android/pop/app/editor/ap;)V

    const v0, 0x7f0a0309

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->i:Landroid/widget/EditText;

    const v0, 0x7f0a0308

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->j:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->j:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    new-instance v1, Lcom/estrongs/android/pop/app/editor/w;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/w;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a030a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02ff

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->q:Landroid/widget/LinearLayout;

    const v0, 0x7f0a030d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->u:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0107

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->v:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->v:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->v:Landroid/widget/SeekBar;

    new-instance v1, Lcom/estrongs/android/pop/app/editor/z;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/z;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a030b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->w:Landroid/widget/TextView;

    const v0, 0x7f0a0302

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0303

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->l:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/app/editor/aa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/aa;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0300

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->o:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/app/editor/ab;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/ab;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0304

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->p:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/app/editor/ac;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/ac;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/pop/app/editor/an;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/editor/an;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->M:Lcom/estrongs/android/pop/app/editor/an;

    const v0, 0x7f0a01f8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/editor/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/pop/app/editor/al;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/editor/al;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Lcom/estrongs/android/pop/app/editor/g;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->k:Lcom/estrongs/android/pop/app/editor/ObservableScrollView;

    new-instance v1, Lcom/estrongs/android/pop/app/editor/ae;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->d()Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/editor/ae;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->h:Lcom/estrongs/android/pop/app/editor/ReaderTextView;

    new-instance v1, Lcom/estrongs/android/pop/app/editor/af;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/af;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/editor/ReaderTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->e()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->b()V

    goto/16 :goto_0

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const v2, 0x7f0b0044

    const v7, 0x7f0b000e

    const v6, 0x7f0b000d

    const/4 v3, 0x0

    const v4, 0x7f0b000b

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b010b

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/editor/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/p;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->e:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aD()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file:///"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/estrongs/android/pop/utils/ci;->a(Ljava/lang/String;)I

    move-result v0

    sget v2, Lcom/estrongs/android/pop/utils/ci;->c:I

    if-eq v0, v2, :cond_5

    move v2, v3

    :goto_2
    if-eqz v2, :cond_2

    const v0, 0x7f0b0433

    move v1, v0

    :goto_3
    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b010c

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/editor/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v3, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/editor/r;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/editor/r;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;Z)V

    invoke-virtual {v0, v6, v1}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/editor/q;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/q;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v7, v1}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f0b0013

    move v1, v0

    goto :goto_3

    :cond_3
    const v0, 0x7f0b0443

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/app/editor/c;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0b010a

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/editor/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/editor/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/t;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0b0108

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/editor/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/editor/v;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/v;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v6, v1}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/editor/u;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/u;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v7, v1}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0048

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b025b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->b(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/editor/x;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/editor/x;-><init>(Lcom/estrongs/android/pop/app/editor/PopNoteEditor;)V

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move v2, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->Q:Lcom/estrongs/android/pop/app/editor/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/editor/c;->k()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->l()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->T:Lcom/estrongs/android/util/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->T:Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->c()Z

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->w:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput p2, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->H:I

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->T:Lcom/estrongs/android/util/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->T:Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->b()Z

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->H:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/editor/PopNoteEditor;->e(I)V

    return-void
.end method
