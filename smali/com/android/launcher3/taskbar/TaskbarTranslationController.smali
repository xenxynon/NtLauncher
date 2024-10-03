.class public Lcom/android/launcher3/taskbar/TaskbarTranslationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;
    }
.end annotation


# instance fields
.field private mAnimationToHomeRunning:Z

.field private final mCallback:Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mGestureEnded:Z

.field private mHasSprungOnceThisGesture:Z

.field private final mIsTransientTaskbar:Z

.field private mSpringBounce:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTranslationYForSwipe:Lcom/android/launcher3/anim/AnimatedFloat;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/anim/AnimatedFloat;

    new-instance v1, Lcom/android/launcher3/taskbar/v3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/v3;-><init>(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mTranslationYForSwipe:Lcom/android/launcher3/anim/AnimatedFloat;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mIsTransientTaskbar:Z

    new-instance p1, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;-><init>(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mCallback:Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->updateTranslationYForSwipe()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mAnimationToHomeRunning:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/launcher3/taskbar/TaskbarTranslationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mAnimationToHomeRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Lcom/android/launcher3/anim/AnimatedFloat;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mTranslationYForSwipe:Lcom/android/launcher3/anim/AnimatedFloat;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mHasSprungOnceThisGesture:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mGestureEnded:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/launcher3/taskbar/TaskbarTranslationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mGestureEnded:Z

    return p1
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->lambda$startSpring$0()V

    return-void
.end method

.method private synthetic lambda$startSpring$0()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mGestureEnded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isTaskbarVisibleAndNotStashing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarEduTooltipController:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->maybeShowFeaturesEdu()V

    :cond_1
    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mGestureEnded:Z

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mHasSprungOnceThisGesture:Z

    return-void
.end method

.method private updateTranslationYForSwipe()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mIsTransientTaskbar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mTranslationYForSwipe:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v0, v0, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->stashedHandleViewController:Lcom/android/launcher3/taskbar/StashedHandleViewController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/StashedHandleViewController;->setTranslationYForSwipe(F)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->setTranslationYForSwipe(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->setTranslationYForSwipe(F)V

    return-void
.end method


# virtual methods
.method public cancelSpringIfExists()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mSpringBounce:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mSpringBounce:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public createAnimToResetTranslation(J)Landroid/animation/ObjectAnimator;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mTranslationYForSwipe:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p1, Lcom/android/launcher3/taskbar/TaskbarTranslationController$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarTranslationController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmTranslationYForSwipe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mTranslationYForSwipe:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmHasSprungOnceThisGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mHasSprungOnceThisGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmAnimationToHomeRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mAnimationToHomeRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmGestureEnded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mGestureEnded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tmSpringBounce is running="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mSpringBounce:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getTransitionCallback()Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mCallback:Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;

    return-object p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public startSpring()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mHasSprungOnceThisGesture:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mAnimationToHomeRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mTranslationYForSwipe:Lcom/android/launcher3/anim/AnimatedFloat;

    iget v1, v1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStartValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setEndValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStiffness(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mTranslationYForSwipe:Lcom/android/launcher3/anim/AnimatedFloat;

    sget-object v2, Lcom/android/launcher3/anim/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mSpringBounce:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/taskbar/w3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/w3;-><init>(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mSpringBounce:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mHasSprungOnceThisGesture:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public willAnimateToZeroBefore(J)Z
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mSpringBounce:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mSpringBounce:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mSpringBounce:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long p0, v3, p1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mTranslationYForSwipe:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/anim/AnimatedFloat;->isAnimatingToValue(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->mTranslationYForSwipe:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatedFloat;->getRemainingTime()J

    move-result-wide v3

    cmp-long p0, v3, p1

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    return v2
.end method
