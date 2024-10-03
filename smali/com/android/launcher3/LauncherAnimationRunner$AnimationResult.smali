.class public final Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;
.super Landroid/view/IRemoteAnimationFinishedCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationResult"
.end annotation


# instance fields
.field private final mASyncFinishRunnable:Ljava/lang/Runnable;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field mClosingTargets:Lcom/android/quickstep/RemoteAnimationTargets;

.field private mFinished:Z

.field private mInitialized:Z

.field private mInterceptByBack:Z

.field private mInterceptByRecents:Z

.field private mOnCompleteCallback:Ljava/lang/Runnable;

.field private final mSyncFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/IRemoteAnimationFinishedCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mSyncFinishRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mASyncFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/launcher3/LauncherAnimationRunner$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic R(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->lambda$finish$0()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->finish()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->interceptByBack()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->interceptByRecents()V

    return-void
.end method

.method private finish()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mSyncFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/a2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/a2;-><init>(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mClosingTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteAnimationTargets;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mClosingTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    :cond_1
    return-void
.end method

.method private interceptByBack()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInterceptByBack:Z

    iget-object p0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method private interceptByRecents()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInterceptByRecents:Z

    iget-object p0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method private synthetic lambda$finish$0()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInterceptByRecents:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInterceptByBack:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mASyncFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip async finish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInterceptByBack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInterceptByRecents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimationResult"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mOnCompleteCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getRemainingTime()J
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v3

    iget-object p0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getCurrentPlayTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-lez p0, :cond_0

    return-wide v3

    :cond_0
    return-wide v1
.end method

.method public isInterceptByBack()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInterceptByBack:Z

    return p0
.end method

.method public onAnimationFinished()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mASyncFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V
    .locals 2
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mOnCompleteCallback:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->finish()V

    goto :goto_0

    :cond_0
    iget-boolean p3, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    iget-object p0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mOnCompleteCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult$1;

    invoke-direct {p3, p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult$1;-><init>(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p4, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-static {p2}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result p2

    int-to-long p2, p2

    iget-object p4, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    :cond_2
    iget-object p0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Animation already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setClosingTargets(Lcom/android/quickstep/RemoteAnimationTargets;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mClosingTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    return-void
.end method
