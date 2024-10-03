.class public Lcom/android/launcher3/taskbar/TaskbarStashController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskbarStashController"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mAnimator:Landroid/animation/AnimatorSet;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mEnableBlockingTimeoutDuringTests:Z

.field private mEnableManualStashingDuringTests:Z

.field private mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

.field private mIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mIsImeShowing:Z

.field private mIsImeSwitcherShowing:Z

.field private mIsStashed:Z

.field private mIsSystemGestureInProgress:Z

.field private mIsTaskbarSystemActionRegistered:Z

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mStashedHeight:I

.field private mState:I

.field private final mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

.field private mTaskbarBackgroundAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

.field private mTaskbarBackgroundOffset:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mTaskbarImeBgAlpha:Lcom/android/launcher3/anim/AnimatedFloat;

.field private mTaskbarSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

.field private mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

.field private mTaskbarStashedHandleHintScale:Lcom/android/launcher3/anim/AnimatedFloat;

.field private final mTimeoutAlarm:Lcom/android/launcher3/Alarm;

.field private final mUnstashedHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mEnableManualStashingDuringTests:Z

    new-instance v1, Lcom/android/launcher3/Alarm;

    invoke-direct {v1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTimeoutAlarm:Lcom/android/launcher3/Alarm;

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mEnableBlockingTimeoutDuringTests:Z

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    new-instance v2, Lcom/android/launcher3/taskbar/u3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/u3;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Ljava/util/function/IntPredicate;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsTaskbarSystemActionRegistered:Z

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarHeight:I

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->lambda$createAnimToIsStashed$3()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/taskbar/TaskbarStashController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onIsStashedChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/taskbar/TaskbarStashController;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/launcher3/taskbar/TaskbarStashController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/taskbar/TaskbarStashController;)Lcom/android/launcher3/taskbar/TaskbarControllers;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher3/taskbar/TaskbarStashController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onStateChangeApplied(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher3/taskbar/TaskbarStashController;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/launcher3/taskbar/TaskbarStashController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/launcher3/taskbar/TaskbarStashController;ZJI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/taskbar/TaskbarStashController;->createAnimToIsStashed(ZJI)V

    return-void
.end method

.method private addJankMonitorListener(Landroid/animation/AnimatorSet;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    if-eqz p2, :cond_0

    const/16 p2, 0x3c

    goto :goto_0

    :cond_0
    const/16 p2, 0x3d

    :goto_0
    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarStashController$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController$2;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Landroid/view/View;I)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->lambda$addUnstashToHotseatAnimation$1()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->lambda$setUpTaskbarSystemAction$6(Z)V

    return-void
.end method

.method private canCurrentlyManuallyUnstash()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    and-int/lit16 p0, p0, 0x35f

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createAnimToIsStashed(Landroid/animation/AnimatorSet;ZJFI)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move/from16 v4, p6

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v1, :cond_2

    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    move/from16 v10, p5

    invoke-virtual {v9, v10}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v9, v13}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v9, v12, [Landroid/animation/Animator;

    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v10, v11}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v10

    aput-object v10, v9, v15

    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isPhoneMode()Z

    move-result v17

    if-eqz v17, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v11, 0x3f000000    # 0.5f

    :goto_0
    invoke-virtual {v10, v11}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v9, v14, [Landroid/animation/Animator;

    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v10, v13}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v10

    aput-object v10, v9, v15

    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-ne v4, v12, :cond_1

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    const/high16 v9, 0x3f400000    # 0.75f

    const/high16 v16, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_2
    new-array v9, v12, [Landroid/animation/Animator;

    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v10, v13}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v9, v15

    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v10, v11}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eq v4, v8, :cond_3

    move v9, v14

    goto :goto_1

    :cond_3
    move v9, v15

    :goto_1
    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v9, v11}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    :cond_4
    new-instance v9, Lcom/android/launcher3/taskbar/n3;

    invoke-direct {v9, v0}, Lcom/android/launcher3/taskbar/n3;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-static {v9}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_2
    new-array v9, v14, [Landroid/animation/Animator;

    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v10, v11}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v10

    aput-object v10, v9, v15

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v9, v14, [Landroid/animation/Animator;

    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v10, v13}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v10

    aput-object v10, v9, v15

    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-ne v4, v12, :cond_5

    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_5
    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v16, 0x3f400000    # 0.75f

    :goto_3
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->createRevealAnimToIsStashed(Z)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleHintScale:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    long-to-float v0, v2

    mul-float/2addr v9, v0

    float-to-long v1, v9

    invoke-virtual {v6, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    mul-float v1, v0, v16

    float-to-long v1, v1

    invoke-virtual {v7, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sub-float v13, v13, v16

    mul-float/2addr v0, v13

    float-to-long v0, v0

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-array v0, v8, [Landroid/animation/Animator;

    aput-object v5, v0, v15

    aput-object v6, v0, v14

    aput-object v7, v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private createAnimToIsStashed(ZJI)V
    .locals 11

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->TAG:Ljava/lang/String;

    const-string v1, "Illegal arguments:Using TRANSITION_UNSTASH_SUW_MANUAL to stash taskbar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->addJankMonitorListener(Landroid/animation/AnimatorSet;Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isPhoneMode()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    iget v4, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    move v9, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v9, v3

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v0, v2, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/launcher3/anim/AnimatedFloat;

    if-eqz p1, :cond_5

    move v5, v1

    goto :goto_3

    :cond_5
    move v5, v3

    :goto_3
    invoke-virtual {v4, v5}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v0, v2, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v9, v3

    :goto_4
    invoke-virtual {v2, v9}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarImeBgAlpha:Lcom/android/launcher3/anim/AnimatedFloat;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v3, v1

    :goto_5
    invoke-virtual {p4, v3}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/android/launcher3/taskbar/p3;

    invoke-direct {p2, p0}, Lcom/android/launcher3/taskbar/p3;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-static {p2}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_8
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/taskbar/TaskbarStashController;->createTransientAnimToIsStashed(Landroid/animation/AnimatorSet;ZJI)V

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    move-object v4, p0

    move v6, p1

    move-wide v7, p2

    move v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/taskbar/TaskbarStashController;->createAnimToIsStashed(Landroid/animation/AnimatorSet;ZJFI)V

    :goto_6
    iget-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarStashController$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;ZJ)V

    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private createTransientAnimToIsStashed(Landroid/animation/AnimatorSet;ZJI)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p5

    const/4 v1, 0x0

    if-eqz v8, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v8, :cond_1

    move v11, v1

    goto :goto_1

    :cond_1
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_1
    if-eqz v8, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v6, p3, v4

    const/4 v7, 0x2

    const/4 v12, 0x1

    if-lez v6, :cond_7

    if-ne v9, v7, :cond_4

    move-wide/from16 v12, p3

    move-wide v15, v4

    goto :goto_4

    :cond_4
    const-wide/16 v15, 0x21

    if-eqz v8, :cond_6

    if-ne v9, v12, :cond_5

    const-wide/16 v15, 0x42

    :cond_5
    sub-long v12, p3, v15

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide/from16 v17, v4

    move-wide v4, v15

    const-wide/16 v12, 0x32

    goto :goto_5

    :cond_6
    const-wide/16 v12, 0x32

    :goto_4
    const-wide/16 v17, 0x32

    goto :goto_5

    :cond_7
    move-wide v12, v4

    move-wide v15, v12

    move-wide/from16 v17, v15

    :goto_5
    iget-object v6, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v20

    sget-object v14, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move-object/from16 v19, p1

    move-wide/from16 v21, v4

    move-wide/from16 v23, v17

    move-object/from16 v25, v14

    invoke-static/range {v19 .. v25}, Lcom/android/launcher3/taskbar/TaskbarStashController;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;)V

    iget-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v20

    invoke-static/range {v19 .. v25}, Lcom/android/launcher3/taskbar/TaskbarStashController;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;)V

    if-ne v9, v7, :cond_9

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz v8, :cond_8

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    goto :goto_6

    :cond_8
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    :goto_6
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object v7, v1

    goto :goto_7

    :cond_9
    move-object/from16 v3, p1

    move-object v7, v3

    :goto_7
    const/16 v24, 0x0

    const/4 v5, 0x3

    if-eq v9, v5, :cond_a

    const/4 v1, 0x1

    goto :goto_8

    :cond_a
    move/from16 v1, v24

    :goto_8
    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x0

    sget-object v17, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    move-object v1, v7

    move v10, v5

    move-wide/from16 v5, p3

    move-object v10, v7

    move-object/from16 v7, v17

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/taskbar/TaskbarStashController;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;)V

    goto :goto_9

    :cond_b
    move-object v10, v7

    new-instance v1, Lcom/android/launcher3/taskbar/r3;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/taskbar/r3;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;F)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_9
    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {v1, v11}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->animateToValue(F)Landroid/animation/Animator;

    move-result-object v18

    move-object/from16 v17, v10

    move-wide/from16 v19, v15

    move-wide/from16 v21, v12

    move-object/from16 v23, v14

    invoke-static/range {v17 .. v23}, Lcom/android/launcher3/taskbar/TaskbarStashController;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;)V

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarSpringOnStashController:Lcom/android/launcher3/taskbar/TaskbarSpringOnStashController;

    if-eqz v8, :cond_c

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarSpringOnStashController;->createSpringToStash()Landroid/animation/ValueAnimator;

    move-result-object v2

    goto :goto_a

    :cond_c
    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarSpringOnStashController;->createResetAnimForUnstash()Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_a
    const-wide/16 v3, 0x0

    move-object v1, v10

    move-wide/from16 v5, p3

    move-object v7, v14

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/taskbar/TaskbarStashController;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;)V

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    sget-object v11, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    const/4 v2, 0x3

    if-ne v9, v2, :cond_d

    const/4 v7, 0x1

    goto :goto_b

    :cond_d
    move/from16 v7, v24

    :goto_b
    move-object v2, v10

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object v6, v11

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/taskbar/TaskbarViewController;->addRevealAnimToIsStashed(Landroid/animation/AnimatorSet;ZJLandroid/view/animation/Interpolator;Z)V

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->createRevealAnimToIsStashed(Z)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-object v1, v10

    move-wide/from16 v5, p3

    move-object v7, v11

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/taskbar/TaskbarStashController;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;)V

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleHintScale:Lcom/android/launcher3/anim/AnimatedFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v8, :cond_e

    const-wide/16 v1, 0x2

    div-long v1, p3, v1

    goto :goto_c

    :cond_e
    move-wide/from16 v1, p3

    :goto_c
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/TaskbarStashController;Lcom/android/launcher3/Alarm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->onTaskbarTimeout(Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/TaskbarStashController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->lambda$createTransientAnimToIsStashed$4(F)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/taskbar/TaskbarStashController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->lambda$new$0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->lambda$onIsStashedChanged$5(Z)V

    return-void
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x81

    const-string v2, "FLAG_IN_APP"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "FLAG_STASHED_IN_APP_MANUAL"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/4 v1, 0x4

    const-string v2, "FLAG_STASHED_IN_APP_SYSUI"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x8

    const-string v2, "FLAG_STASHED_IN_APP_SETUP"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x10

    const-string v2, "FLAG_STASHED_IN_APP_IME"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x20

    const-string v2, "FLAG_IN_STASHED_LAUNCHER_STATE"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x40

    const-string v2, "FLAG_STASHED_IN_TASKBAR_ALL_APPS"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x80

    const-string v2, "FLAG_IN_SETUP"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x200

    const-string v2, "FLAG_STASHED_IN_APP_AUTO"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x400

    const-string v2, "FLAG_STASHED_SYSUI"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    const/16 v1, 0x800

    const-string v2, "FLAG_STASHED_DEVICE_LOCKED"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/util/FlagDebugUtils;->appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTaskbarAutoHideTimeout()J
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v0, 0x1388

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private getTaskbarStashStartDelayForIme()J
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v0, 0x10e0000

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x50

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static synthetic h(Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->lambda$createAnimToIsStashed$2()V

    return-void
.end method

.method private hasAnyFlag(I)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result p0

    return p0
.end method

.method private hasAnyFlag(II)Z
    .locals 0

    and-int p0, p1, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic i(Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->lambda$onDestroy$7()V

    return-void
.end method

.method private isPhoneMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$addUnstashToHotseatAnimation$1()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->setDeferUpdatesForSUW(Z)V

    return-void
.end method

.method private synthetic lambda$createAnimToIsStashed$2()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private synthetic lambda$createAnimToIsStashed$3()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method private synthetic lambda$createTransientAnimToIsStashed$4(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    return-void
.end method

.method private synthetic lambda$new$0(I)Z
    .locals 4

    const/16 v0, 0x81

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v0

    const/16 v1, 0x35e

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v1

    const/16 v2, 0x20

    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v2

    const/16 v3, 0xd40

    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result p0

    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    if-nez v2, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onDestroy$7()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v0, 0x1f3

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->unregisterSystemAction(I)V

    return-void
.end method

.method private synthetic lambda$onIsStashedChanged$5(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->onIsStashedChanged(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarInsetsController:Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarWindowHeightOrInsetsChanged()V

    return-void
.end method

.method private synthetic lambda$setUpTaskbarSystemAction$6(Z)V
    .locals 5

    const/16 v0, 0x1f3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsTaskbarSystemActionRegistered:Z

    if-nez p1, :cond_1

    new-instance p1, Landroid/app/RemoteAction;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const v2, 0x7f0802c2

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const v3, 0x7f12025e

    invoke-virtual {v2, v3}, Landroid/view/ContextThemeWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v4, v3}, Landroid/view/ContextThemeWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iget-object v4, v4, Lcom/android/launcher3/taskbar/TaskbarSharedState;->taskbarSystemActionPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsTaskbarSystemActionRegistered:Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->unregisterSystemAction(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsTaskbarSystemActionRegistered:Z

    return-void
.end method

.method private notifyStashChange(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/SystemUiProxy;->notifyTaskbarStatus(ZZ)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->setUpTaskbarSystemAction(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->rotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/rotation/RotationButtonController;->onTaskbarStateChange(ZZ)V

    return-void
.end method

.method private onIsStashedChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    new-instance v1, Lcom/android/launcher3/taskbar/t3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/taskbar/t3;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->runAfterInit(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onStateChangeApplied(I)V
    .locals 3

    const/16 v0, 0x35e

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->onStashedInAppChanged()V

    :cond_0
    const/16 v0, 0x3df

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x81

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashedInApp()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->notifyStashChange(ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_LONGPRESS_HIDE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_LONGPRESS_SHOW:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_3
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TRANSIENT_TASKBAR_HIDE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TRANSIENT_TASKBAR_SHOW:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_1
    invoke-interface {p1, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/16 v1, 0x20

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, v1, p0}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    :cond_5
    return-void
.end method

.method private onTaskbarTimeout(Lcom/android/launcher3/Alarm;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->isTransientTaskbarStashingSuspended()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateTransientTaskbar(Z)V

    return-void
.end method

.method private static play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-virtual {p1, p4, p5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p1, p6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private shouldStashForIme()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeSwitcherShowing:Z

    if-eqz v0, :cond_3

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method


# virtual methods
.method protected addUnstashToHotseatAnimation(Landroid/animation/AnimatorSet;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->setDeferUpdatesForSUW(Z)V

    int-to-long v0, p2

    const/4 p2, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->createAnimToIsStashed(ZJI)V

    new-instance p2, Lcom/android/launcher3/taskbar/o3;

    invoke-direct {p2, p0}, Lcom/android/launcher3/taskbar/o3;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-static {p2}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method public applyState()V
    .locals 2

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x12c

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    return-void
.end method

.method public applyState(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->createApplyStateAnimator(J)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public applyState(JJ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->createApplyStateAnimator(J)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3, p4}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public cancelTimeoutIfExists()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTimeoutAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTimeoutAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_0
    return-void
.end method

.method public createApplyStateAnimator(J)Landroid/animation/Animator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->createSetStateAnimator(IJ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarStashController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmStashedHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmUnstashedHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmIsStashed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tappliedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStatePropertyHolder:Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->access$400(Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;)I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmIsSystemGestureInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsSystemGestureInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmIsImeShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tmIsImeSwitcherShowing="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeSwitcherShowing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableBlockingTimeoutDuringTests(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mEnableBlockingTimeoutDuringTests:Z

    return-void
.end method

.method public enableManualStashingDuringTests(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mEnableManualStashingDuringTests:Z

    return-void
.end method

.method public getContentHeightToReportToApps()I
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStashedHeight()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x30a

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresent:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07055c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->isStashedHandleVisible()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    return p0

    :cond_6
    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    return p0
.end method

.method public getStashDuration()J
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1a1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x12c

    :goto_0
    return-wide v0
.end method

.method public getStashedHeight()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    return p0
.end method

.method public getTappableHeightToReportToApps()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getContentHeightToReportToApps()I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    if-gt v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getTouchableHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mStashedHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mUnstashedHeight:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarBottomMargin:I

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;ZLcom/android/launcher3/taskbar/TaskbarSharedState;)V
    .locals 4

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarSharedState:Lcom/android/launcher3/taskbar/TaskbarSharedState;

    iget-object p3, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getTaskbarBackgroundOffset()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundOffset:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getImeBgTaskbar()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarImeBgAlpha:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->getBackgroundRendererAlphaForStash()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarBackgroundAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    iget-object p3, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconAlpha()Lcom/android/launcher3/util/MultiPropertyFactory;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconAlphaForStash:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconScaleForStash()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getTaskbarIconTranslationYForStash()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconTranslationYForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->getStashedHandleAlpha()Lcom/android/launcher3/util/MultiPropertyFactory;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleAlpha:Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->getStashedHandleHintScale()Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleHintScale:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    if-nez p1, :cond_0

    sget-object p3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_PINNING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "taskbar_is_stashed"

    invoke-interface {p3, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    goto :goto_2

    :cond_2
    :goto_1
    move p2, v2

    :goto_2
    invoke-virtual {p0, v1, p3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/16 p3, 0x200

    invoke-virtual {p0, p3, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/16 p1, 0x80

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/16 p1, 0x100

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isPhoneMode()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result p2

    if-nez p2, :cond_3

    move p2, v2

    goto :goto_3

    :cond_3
    move p2, v0

    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    invoke-virtual {p0, v2, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashedInApp()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->notifyStashChange(ZZ)V

    return-void
.end method

.method public isInApp()Z
    .locals 1

    const/16 v0, 0x81

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result p0

    return p0
.end method

.method public isInStashedLauncherState()Z
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStashed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    return p0
.end method

.method public isStashedInApp()Z
    .locals 1

    const/16 v0, 0x35e

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result p0

    return p0
.end method

.method public isTaskbarVisibleAndNotStashing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->areIconsVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/taskbar/q3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/q3;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLongPressToUnstashTaskbar()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->canCurrentlyManuallyUnstash()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateIsManuallyStashedInApp(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method protected setSetupUIVisible(Z)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isUserSetupComplete()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStashDuration()J

    move-result-wide v0

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    return-void
.end method

.method public setSystemGestureInProgress(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsSystemGestureInProgress:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->shouldStashForIme()Z

    move-result p1

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v1

    if-eq v1, p1, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const-wide/16 v0, 0x50

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTaskbarStashStartDelayForIme()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(JJ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->getCloseDuration()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    :goto_0
    return-void
.end method

.method public setUpTaskbarSystemAction(Z)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/taskbar/s3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/taskbar/s3;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showTaskbarFromBroadcast()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduTooltipController:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->isBeforeTooltipFeaturesStep()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduTooltipController:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->hide()Ln5/t;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduTooltipController:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->maybeShowFeaturesEdu()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateTransientTaskbar(Z)V

    return-void
.end method

.method public startStashHint(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsManualStashing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIconScaleForStash:Lcom/android/launcher3/anim/AnimatedFloat;

    if-eqz p1, :cond_1

    const p1, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected startUnstashHint(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->canCurrentlyManuallyUnstash()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTaskbarStashedHandleHintScale:Lcom/android/launcher3/anim/AnimatedFloat;

    if-eqz p1, :cond_2

    const p1, 0x3f8ccccd    # 1.1f

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x190

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected supportsManualStashing()Z
    .locals 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_PINNING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "TASKBAR_PINNING_KEY"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mEnableManualStashingDuringTests:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public supportsVisualStashing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->supportsVisualStashing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toggleTaskbarStash()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x81

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateTransientTaskbar(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public tryStartTaskbarTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsStashed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mEnableBlockingTimeoutDuringTests:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->cancelTimeoutIfExists()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTimeoutAlarm:Lcom/android/launcher3/Alarm;

    new-instance v1, Lcom/android/launcher3/taskbar/m3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/m3;-><init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mTimeoutAlarm:Lcom/android/launcher3/Alarm;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTaskbarAutoHideTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateAndAnimateIsManuallyStashedInApp(Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsManualStashing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v2

    if-eq v2, p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "taskbar_is_stashed"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public updateAndAnimateTransientTaskbar(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->isSuspendedForTransientTaskbarInLauncher()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->isTransientTaskbarStashingSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v1

    if-eq v1, p1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState()V

    :cond_2
    return-void
.end method

.method public updateStateForFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mState:I

    return-void
.end method

.method public updateStateForSysuiFlags(IZ)V
    .locals 6

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v1

    const/16 v2, 0x400

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const v1, 0x8000248

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x80000000

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x800

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const/high16 v0, 0x40000

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeShowing:Z

    const/high16 v0, 0x100000

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsImeSwitcherShowing:Z

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mIsSystemGestureInProgress:Z

    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    const/16 p1, 0x10

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->shouldStashForIme()Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    const-wide/16 v2, 0x50

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTaskbarStashStartDelayForIme()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x12c

    move-wide v4, v0

    :goto_1
    if-eqz p2, :cond_2

    move-wide v2, v0

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-wide v0, v4

    :goto_2
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(JJ)V

    return-void
.end method

.method public updateTaskbarTimeout(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->cancelTimeoutIfExists()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->tryStartTaskbarTimeout()V

    :goto_0
    return-void
.end method
