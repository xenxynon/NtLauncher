.class public final Lcom/android/quickstep/gamemode/GameModeDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/gamemode/IGameModeDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/gamemode/GameModeDelegate$Companion;
    }
.end annotation


# static fields
.field private static final ACCIDENTAL_GESTURE_RESET_DURATION:J = 0x7d0L

.field public static final Companion:Lcom/android/quickstep/gamemode/GameModeDelegate$Companion;

.field private static final KEY_GAME_MODE_GAMING:Ljava/lang/String; = "nt_game_mode_gaming"

.field private static final KEY_GAME_MODE_MISTOUCH_PREVENTION:Ljava/lang/String; = "nt_game_mode_mistouch_prevention"


# instance fields
.field private accidentalGestureTriggerTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/quickstep/gamemode/GameModeDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/gamemode/GameModeDelegate$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/quickstep/gamemode/GameModeDelegate;->Companion:Lcom/android/quickstep/gamemode/GameModeDelegate$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMisTouchPreventionActive(Landroid/content/Context;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "it.applicationContext.contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nt_game_mode_gaming"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "nt_game_mode_mistouch_prevention"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    move p0, v1

    :cond_0
    return p0
.end method

.method public isNeedToPreventMisTouch(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/gamemode/GameModeDelegate;->isMisTouchPreventionActive(Landroid/content/Context;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMisTouchPreventionActive -> enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameModeSDelegate"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/android/quickstep/gamemode/GameModeDelegate;->accidentalGestureTriggerTime:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x7d0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAccidentalGestureTriggerTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/quickstep/gamemode/GameModeDelegate;->accidentalGestureTriggerTime:J

    return-void
.end method
