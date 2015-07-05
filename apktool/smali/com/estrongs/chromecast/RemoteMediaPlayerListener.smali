.class public interface abstract Lcom/estrongs/chromecast/RemoteMediaPlayerListener;
.super Ljava/lang/Object;


# static fields
.field public static final IDLE_REASON_CANCELED:I = 0x2

.field public static final IDLE_REASON_ERROR:I = 0x4

.field public static final IDLE_REASON_FINISHED:I = 0x1

.field public static final IDLE_REASON_INTERRUPTED:I = 0x3

.field public static final IDLE_REASON_NONE:I = 0x0

.field public static final PLAYER_STATE_BUFFERING:I = 0x4

.field public static final PLAYER_STATE_IDLE:I = 0x1

.field public static final PLAYER_STATE_LOAD_ERROR:I = -0x3e9

.field public static final PLAYER_STATE_LOAD_SUCCEED:I = 0x3e8

.field public static final PLAYER_STATE_PAUSED:I = 0x3

.field public static final PLAYER_STATE_PLAYING:I = 0x2

.field public static final PLAYER_STATE_UNKNOWN:I = 0x0

.field public static final PLAYER_STATE_UNKNOWN_ERROR:I = -0x3e8


# virtual methods
.method public abstract onStatusUpdated(I)V
.end method
