.class Lcom/android/quickstep/views/TaskView$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/TaskView;->launchTasks()Lcom/android/launcher3/util/RunnableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/TaskView;

.field final synthetic val$recentsView:Lcom/android/quickstep/views/RecentsView;

.field final synthetic val$runnableList:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/util/RunnableList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/TaskView$14;->this$0:Lcom/android/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/android/quickstep/views/TaskView$14;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    iput-object p3, p0, Lcom/android/quickstep/views/TaskView$14;->val$runnableList:Lcom/android/launcher3/util/RunnableList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/views/TaskView$14;->lambda$onAnimationStart$0(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method private static synthetic lambda$onAnimationStart$0(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->setDrawsBelowRecents(Z)V

    return-void
.end method

.method private runEndCallback()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView$14;->val$runnableList:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView$14;->runEndCallback()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView$14;->this$0:Lcom/android/quickstep/views/TaskView;

    iget-object v0, p1, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->access$2600(Lcom/android/quickstep/views/TaskView;)I

    move-result p1

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView$14;->this$0:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/views/TaskView$14;->this$0:Lcom/android/quickstep/views/TaskView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/quickstep/views/TaskView;->access$2702(Lcom/android/quickstep/views/TaskView;Z)Z

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView$14;->runEndCallback()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView$14;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->setEnableDrawingLiveTile(Z)V

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView$14;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    sget-object p1, Lcom/android/quickstep/views/u2;->g:Lcom/android/quickstep/views/u2;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    return-void
.end method
