.class Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;
.super Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

.field final synthetic val$counterLauncher:Lg1/a;

.field final synthetic val$counterWallpaper:Lg1/a;

.field final synthetic val$finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

.field final synthetic val$info:Landroid/window/TransitionInfo;

.field final synthetic val$leashMap:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Lg1/a;Lg1/a;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$counterLauncher:Lg1/a;

    iput-object p3, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$counterWallpaper:Lg1/a;

    iput-object p4, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$info:Landroid/window/TransitionInfo;

    iput-object p5, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$leashMap:Landroid/util/ArrayMap;

    iput-object p6, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$counterLauncher:Lg1/a;

    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Lg1/a;->b(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$counterWallpaper:Lg1/a;

    iget-object v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Lg1/a;->b(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$info:Landroid/window/TransitionInfo;

    invoke-virtual {v0}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$leashMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$1;->val$finishCallback:Landroid/window/IRemoteTransitionFinishedCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v0, v1, v2}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V
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
