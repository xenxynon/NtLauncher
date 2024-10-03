.class public Lcom/android/launcher3/LauncherAnimationRunner;
.super Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;,
        Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# instance fields
.field private mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

.field private final mFactory:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mStartAtFrontOfQueue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/u1;->a:Lcom/android/launcher3/u1;

    sput-object v0, Lcom/android/launcher3/LauncherAnimationRunner;->DEFAULT_FACTORY:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mFactory:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    return-void
.end method

.method public static synthetic T(Lcom/android/launcher3/LauncherAnimationRunner;Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherAnimationRunner;->lambda$onBackAnimationStartIntercept$5(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method

.method public static synthetic U(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherAnimationRunner;->lambda$static$0(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method public static synthetic V(Lcom/android/launcher3/LauncherAnimationRunner;Ljava/lang/Runnable;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/LauncherAnimationRunner;->lambda$onAnimationStart$2(Ljava/lang/Runnable;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method public static synthetic W(Lcom/android/launcher3/LauncherAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->lambda$onAnimationCancelled$3()V

    return-void
.end method

.method public static synthetic X(Lcom/android/launcher3/LauncherAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->lambda$onAnimationStart$1()V

    return-void
.end method

.method public static synthetic Y(Lcom/android/launcher3/LauncherAnimationRunner;Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherAnimationRunner;->lambda$onRecentAnimationStartIntercept$4(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method

.method private finishExistingAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->access$000(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    :cond_0
    return-void
.end method

.method private getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mFactory:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/launcher3/LauncherAnimationRunner;->DEFAULT_FACTORY:Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$onAnimationCancelled$3()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->finishExistingAnimation()V

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->onAnimationCancelled()V

    return-void
.end method

.method private synthetic lambda$onAnimationStart$1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    return-void
.end method

.method private synthetic lambda$onAnimationStart$2(Ljava/lang/Runnable;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .locals 9

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->finishExistingAnimation()V

    new-instance v0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    new-instance v1, Lcom/android/launcher3/w1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/w1;-><init>(Lcom/android/launcher3/LauncherAnimationRunner;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/launcher3/LauncherAnimationRunner$1;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object v3

    iget-object v8, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method private synthetic lambda$onBackAnimationStartIntercept$5(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->access$100(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->onBackAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method

.method private synthetic lambda$onRecentAnimationStartIntercept$4(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->getRemainingTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->updateDuration(J)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->access$200(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mAnimationResult:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner;->getFactory()Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->onRecentAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method

.method private static synthetic lambda$static$0(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p4, p0, p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isSmoothRecents()Z
    .locals 0
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    sget-boolean p0, Lcom/android/quickstep/utils/TransitionSmoothHelper;->SMOOTH_FEATURE:Z

    return p0
.end method

.method public onAnimationCancelled()V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/v1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/v1;-><init>(Lcom/android/launcher3/LauncherAnimationRunner;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V
    .locals 8
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    new-instance v7, Lcom/android/launcher3/z1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/z1;-><init>(Lcom/android/launcher3/LauncherAnimationRunner;Ljava/lang/Runnable;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    iget-boolean p1, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mStartAtFrontOfQueue:Z

    iget-object p0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-static {p0, v7}, Lcom/android/systemui/shared/recents/utilities/Utilities;->postAtFrontOfQueueAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v7}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onAnimationStartWithSurfaceTransaction(ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V
    .locals 6
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    if-eqz p3, :cond_0

    invoke-static {p2, p3, p4}, Lcom/android/quickstep/utils/TransitionSmoothHelper;->buildStartTransaction(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;[Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "LauncherAnimationRunner"

    const-string v1, "onBackAnimationStartIntercept"

    invoke-static {v0, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/x1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/x1;-><init>(Lcom/android/launcher3/LauncherAnimationRunner;Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRecentAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 2
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string v0, "LauncherAnimationRunner"

    const-string v1, "onRecentAnimationStartIntercept"

    invoke-static {v0, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/y1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/y1;-><init>(Lcom/android/launcher3/LauncherAnimationRunner;Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
