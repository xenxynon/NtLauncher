.class Lcom/android/quickstep/RecentsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/RecentsActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentsActivity;

.field final synthetic val$onEndCallback:Lcom/android/launcher3/util/RunnableList;

.field final synthetic val$taskView:Lcom/android/quickstep/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/RunnableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/RecentsActivity$1;->this$0:Lcom/android/quickstep/RecentsActivity;

    iput-object p2, p0, Lcom/android/quickstep/RecentsActivity$1;->val$taskView:Lcom/android/quickstep/views/TaskView;

    iput-object p3, p0, Lcom/android/quickstep/RecentsActivity$1;->val$onEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity$1;->this$0:Lcom/android/quickstep/RecentsActivity;

    invoke-static {v0}, Lcom/android/quickstep/RecentsActivity;->access$100(Lcom/android/quickstep/RecentsActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/RecentsActivity$1;->this$0:Lcom/android/quickstep/RecentsActivity;

    invoke-static {v1}, Lcom/android/quickstep/RecentsActivity;->access$000(Lcom/android/quickstep/RecentsActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity$1;->val$onEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method public bridge synthetic onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    check-cast p5, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-virtual/range {p0 .. p5}, Lcom/android/quickstep/RecentsActivity$1;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 1

    iget-object p1, p0, Lcom/android/quickstep/RecentsActivity$1;->this$0:Lcom/android/quickstep/RecentsActivity;

    invoke-static {p1}, Lcom/android/quickstep/RecentsActivity;->access$100(Lcom/android/quickstep/RecentsActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity$1;->this$0:Lcom/android/quickstep/RecentsActivity;

    invoke-static {v0}, Lcom/android/quickstep/RecentsActivity;->access$000(Lcom/android/quickstep/RecentsActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/quickstep/RecentsActivity$1;->this$0:Lcom/android/quickstep/RecentsActivity;

    iget-object v0, p0, Lcom/android/quickstep/RecentsActivity$1;->val$taskView:Lcom/android/quickstep/views/TaskView;

    invoke-static {p1, v0, p2, p3, p4}, Lcom/android/quickstep/RecentsActivity;->access$200(Lcom/android/quickstep/RecentsActivity;Lcom/android/quickstep/views/TaskView;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/RecentsActivity$1;->this$0:Lcom/android/quickstep/RecentsActivity;

    invoke-static {p2}, Lcom/android/quickstep/RecentsActivity;->access$300(Lcom/android/quickstep/RecentsActivity;)Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/android/quickstep/RecentsActivity$1;->this$0:Lcom/android/quickstep/RecentsActivity;

    iget-object p0, p0, Lcom/android/quickstep/RecentsActivity$1;->val$onEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/launcher3/j;

    invoke-direct {p3, p0}, Lcom/android/launcher3/j;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    const/4 p0, 0x1

    invoke-virtual {p5, p1, p2, p3, p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public bridge synthetic onBackAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->onBackAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method

.method public bridge synthetic onRecentAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;->onRecentAnimationStartIntercept(Landroid/window/TransitionInfo;Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method
