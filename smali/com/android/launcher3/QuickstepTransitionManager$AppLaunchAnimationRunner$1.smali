.class Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner$1;->this$1:Lcom/android/launcher3/QuickstepTransitionManager$AppLaunchAnimationRunner;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "AppLaunchAnimationRunner.onAnimationEnd"

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p0, "QuickstepTransitionManager"

    const-string p1, "AppLaunchAnimationRunner->onAnimationEnd"

    invoke-static {p0, p1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "AppLaunchAnimationRunner.onAnimationStart"

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p0, "QuickstepTransitionManager"

    const-string p1, "AppLaunchAnimationRunner->onAnimationStart"

    invoke-static {p0, p1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
