.class Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$4;
.super Landroid/window/IRemoteTransitionFinishedCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

.field final synthetic val$finishRunnable:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$4;->this$0:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;

    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$4;->val$finishRunnable:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;

    invoke-direct {p0}, Landroid/window/IRemoteTransitionFinishedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    const-string p1, "RemoteAnimRunnerCompat"

    const-string v0, "onRecentAnimationStartIntercept: onTransitionFinished"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$4;->val$finishRunnable:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;->merge(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1$4;->val$finishRunnable:Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$FinishTransitionRunnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
