.class Lcom/android/launcher3/uioverrides/QuickstepLauncher$4;
.super Lcom/android/quickstep/util/RemoteAnimationProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/uioverrides/QuickstepLauncher;->useFadeOutAnimationForLauncherStart(Landroid/os/CancellationSignal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

.field final synthetic val$signal:Landroid/os/CancellationSignal;


# direct methods
.method constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Landroid/os/CancellationSignal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$4;->this$0:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$4;->val$signal:Landroid/os/CancellationSignal;

    invoke-direct {p0}, Lcom/android/quickstep/util/RemoteAnimationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createWindowAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$4;->val$signal:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v0, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;

    invoke-direct {v0, p1, p2}, Lcom/android/quickstep/util/RemoteFadeOutAnimationListener;-><init>([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
