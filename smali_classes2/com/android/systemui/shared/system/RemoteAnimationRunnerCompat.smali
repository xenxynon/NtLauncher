.class public abstract Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteAnimRunnerCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method

.method public static synthetic R(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->lambda$onAnimationStartWithSurfaceTransaction$1(Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method public static synthetic S(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->lambda$onAnimationStart$0(Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method private static synthetic lambda$onAnimationStart$0(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 2

    :try_start_0
    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RemoteAnimRunnerCompat"

    const-string v1, "Failed to call app controlled animation finished callback"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onAnimationStartWithSurfaceTransaction$1(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 2

    :try_start_0
    invoke-interface {p0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RemoteAnimRunnerCompat"

    const-string v1, "Failed to call app controlled animation finished callback"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static wrap(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition$Stub;
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;-><init>(Landroid/view/IRemoteAnimationRunner;)V

    return-object v0
.end method


# virtual methods
.method public isSmoothRecents()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 6

    new-instance v5, Lcom/android/systemui/shared/system/b;

    invoke-direct {v5, p5}, Lcom/android/systemui/shared/system/b;-><init>(Landroid/view/IRemoteAnimationFinishedCallback;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V
.end method

.method public final onAnimationStartWithSurfaceTransaction(ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 8

    new-instance v7, Lcom/android/systemui/shared/system/a;

    invoke-direct {v7, p7}, Lcom/android/systemui/shared/system/a;-><init>(Landroid/view/IRemoteAnimationFinishedCallback;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->onAnimationStartWithSurfaceTransaction(ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStartWithSurfaceTransaction(ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V
    .locals 6

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    move-object v0, p0

    move v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    return-void
.end method

.method public onRecentAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    return-void
.end method

.method public toRemoteTransition()Landroid/window/IRemoteTransition;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->wrap(Landroid/view/IRemoteAnimationRunner;)Landroid/window/IRemoteTransition$Stub;

    move-result-object p0

    return-object p0
.end method
