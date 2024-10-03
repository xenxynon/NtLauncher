.class public interface abstract Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteAnimationFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg0/i<",
        "Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public onAnimationCancelled()V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    return-void
.end method

.method public bridge synthetic onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    check-cast p5, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-interface/range {p0 .. p5}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method public abstract onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public onBackAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    return-void
.end method

.method public onRecentAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    return-void
.end method
