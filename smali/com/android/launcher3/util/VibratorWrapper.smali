.class public Lcom/android/launcher3/util/VibratorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation


# static fields
.field public static final EFFECT_CLICK:Landroid/os/VibrationEffect;

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/VibratorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public static final OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

.field public static final VIBRATION_ATTRS:Landroid/media/AudioAttributes;


# instance fields
.field private final mBumpEffect:Landroid/os/VibrationEffect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCommitEffect:Landroid/os/VibrationEffect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mDragEffect:Landroid/os/VibrationEffect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mHasVibrator:Z

.field private mIsHapticFeedbackEnabled:Z

.field private mLastDragTime:J

.field private final mThresholdUntilNextDragCallMillis:I

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/util/r0;->a:Lcom/android/launcher3/util/r0;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/VibratorWrapper;->VIBRATION_ATTRS:Landroid/media/AudioAttributes;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/VibratorWrapper;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    sput-object v0, Lcom/android/launcher3/util/VibratorWrapper;->OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mHasVibrator:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/VibratorWrapper;->isHapticFeedbackEnabled(Landroid/content/ContentResolver;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    new-instance v1, Lcom/android/launcher3/util/VibratorWrapper$1;

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, p0, v3, p1}, Lcom/android/launcher3/util/VibratorWrapper$1;-><init>(Lcom/android/launcher3/util/VibratorWrapper;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher3/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    :goto_0
    sget-boolean p1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    new-array v1, p1, [I

    const/16 v3, 0x8

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    move v1, v2

    :goto_1
    const/16 v4, 0xc8

    if-ge v1, v4, :cond_1

    const v4, 0x3cf5c28f    # 0.03f

    invoke-virtual {v0, v3, v4}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mDragEffect:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    const/4 v1, 0x7

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v5}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mCommitEffect:Landroid/os/VibrationEffect;

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v3, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mBumpEffect:Landroid/os/VibrationEffect;

    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    new-array p1, p1, [I

    aput v3, p1, v2

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->getPrimitiveDurations([I)[I

    move-result-object p1

    aget p1, p1, v2

    mul-int/2addr p1, v4

    add-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mThresholdUntilNextDragCallMillis:I

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mDragEffect:Landroid/os/VibrationEffect;

    iput-object p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mCommitEffect:Landroid/os/VibrationEffect;

    iput-object p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mBumpEffect:Landroid/os/VibrationEffect;

    iput v2, p0, Lcom/android/launcher3/util/VibratorWrapper;->mThresholdUntilNextDragCallMillis:I

    :goto_2
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/VibratorWrapper;Landroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/VibratorWrapper;->lambda$vibrate$0(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/util/VibratorWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/util/VibratorWrapper;Landroid/content/ContentResolver;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/VibratorWrapper;->isHapticFeedbackEnabled(Landroid/content/ContentResolver;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/content/Context;)Lcom/android/launcher3/util/VibratorWrapper;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/VibratorWrapper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/VibratorWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private isHapticFeedbackEnabled(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string p0, "haptic_feedback_enabled"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method private synthetic lambda$vibrate$0(Landroid/os/VibrationEffect;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    sget-object v0, Lcom/android/launcher3/util/VibratorWrapper;->VIBRATION_ATTRS:Landroid/media/AudioAttributes;

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method


# virtual methods
.method public cancelVibrate(Z)V
    .locals 2

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/util/s0;

    invoke-direct {v1, v0}, Lcom/android/launcher3/util/s0;-><init>(Landroid/os/Vibrator;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mLastDragTime:J

    return-void
.end method

.method public vibrate(Landroid/os/VibrationEffect;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mHasVibrator:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/util/t0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/t0;-><init>(Lcom/android/launcher3/util/VibratorWrapper;Landroid/os/VibrationEffect;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public vibrateForDragBump()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mBumpEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method public vibrateForDragCommit()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mCommitEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mLastDragTime:J

    return-void
.end method

.method public vibrateForDragTexture()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mDragEffect:Landroid/os/VibrationEffect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/util/VibratorWrapper;->mLastDragTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/android/launcher3/util/VibratorWrapper;->mThresholdUntilNextDragCallMillis:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/util/VibratorWrapper;->mDragEffect:Landroid/os/VibrationEffect;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    iput-wide v0, p0, Lcom/android/launcher3/util/VibratorWrapper;->mLastDragTime:J

    :cond_1
    return-void
.end method
