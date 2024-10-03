.class Lcom/android/quickstep/views/RecentsView$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/android/launcher3/anim/PendingAnimation;Lcom/android/quickstep/views/TaskView;ZZJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/RecentsView;

.field final synthetic val$currentPageSnapsToEndOfGrid:Z

.field final synthetic val$dismissedIndex:I

.field final synthetic val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

.field final synthetic val$dismissedTaskViewId:I

.field final synthetic val$finalCloseGapBetweenClearAll:Z

.field final synthetic val$finalIsFocusedTaskDismissed:Z

.field final synthetic val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

.field final synthetic val$finalSnapToLastTask:Z

.field final synthetic val$isClearAllHidden:Z

.field final synthetic val$shouldRemoveTask:Z

.field final synthetic val$showAsGrid:Z

.field final synthetic val$taskCount:I


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;ZIZZZIZLcom/android/quickstep/views/TaskView;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    iput-boolean p3, p0, Lcom/android/quickstep/views/RecentsView$20;->val$shouldRemoveTask:Z

    iput p4, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedTaskViewId:I

    iput-boolean p5, p0, Lcom/android/quickstep/views/RecentsView$20;->val$showAsGrid:Z

    iput-boolean p6, p0, Lcom/android/quickstep/views/RecentsView$20;->val$finalCloseGapBetweenClearAll:Z

    iput-boolean p7, p0, Lcom/android/quickstep/views/RecentsView$20;->val$finalSnapToLastTask:Z

    iput p8, p0, Lcom/android/quickstep/views/RecentsView$20;->val$taskCount:I

    iput-boolean p9, p0, Lcom/android/quickstep/views/RecentsView$20;->val$isClearAllHidden:Z

    iput-object p10, p0, Lcom/android/quickstep/views/RecentsView$20;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    iput p11, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedIndex:I

    iput-boolean p12, p0, Lcom/android/quickstep/views/RecentsView$20;->val$finalIsFocusedTaskDismissed:Z

    iput-boolean p13, p0, Lcom/android/quickstep/views/RecentsView$20;->val$currentPageSnapsToEndOfGrid:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/RecentsView$20;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView$20;->lambda$accept$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/views/RecentsView$20;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView$20;->lambda$onEnd$1(I)V

    return-void
.end method

.method private synthetic lambda$accept$0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView$20;->onEnd(Z)V

    return-void
.end method

.method private synthetic lambda$onEnd$1(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->access$2000(Lcom/android/quickstep/views/RecentsView;I)V

    return-void
.end method

.method private onEnd(Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lcom/android/quickstep/views/RecentsView$20;->val$shouldRemoveTask:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedTaskViewId:I

    new-instance v3, Lcom/android/quickstep/views/w1;

    invoke-direct {v3, p0, v2}, Lcom/android/quickstep/views/w1;-><init>(Lcom/android/quickstep/views/RecentsView$20;I)V

    invoke-virtual {p1, v1, v0, v3}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedTaskViewId:I

    invoke-static {p1, v2}, Lcom/android/quickstep/views/RecentsView;->access$2000(Lcom/android/quickstep/views/RecentsView;I)V

    :goto_0
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12025b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object p1, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_DISMISS_SWIPE_UP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_1
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->access$2100(Lcom/android/quickstep/views/RecentsView;)I

    move-result p1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v2, v0}, Lcom/android/quickstep/views/RecentsView;->access$2202(Lcom/android/quickstep/views/RecentsView;I)I

    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$showAsGrid:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$finalCloseGapBetweenClearAll:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$finalSnapToLastTask:Z

    if-eqz v2, :cond_2

    move p1, v3

    move v5, p1

    goto/16 :goto_8

    :cond_2
    iget v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$taskCount:I

    const/4 v4, 0x2

    if-le v2, v4, :cond_3

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->access$1900(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/ClearAllButton;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    goto/16 :goto_7

    :cond_3
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$isClearAllHidden:Z

    if-eqz v2, :cond_10

    move p1, v0

    goto/16 :goto_7

    :cond_4
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v2}, Lcom/android/quickstep/views/RecentsView;->access$2300(Lcom/android/quickstep/views/RecentsView;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView$20;->val$finalSnapToLastTask:Z

    if-nez v4, :cond_d

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v5, v5, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-ne v4, v5, :cond_7

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v5

    :goto_1
    move v2, v1

    goto/16 :goto_6

    :cond_5
    iget v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedTaskViewId:I

    if-eq v2, v5, :cond_6

    goto :goto_1

    :cond_6
    move p1, v0

    move v2, p1

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v2

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v4}, Lcom/android/quickstep/views/RecentsView;->access$2400(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntSet;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    if-eqz v4, :cond_8

    invoke-static {v5}, Lcom/android/quickstep/views/RecentsView;->access$2500(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;

    move-result-object v5

    goto :goto_2

    :cond_8
    invoke-static {v5}, Lcom/android/quickstep/views/RecentsView;->access$2600(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;

    move-result-object v5

    :goto_2
    invoke-virtual {v5, v2}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v6

    iget v7, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedTaskViewId:I

    invoke-virtual {v5, v7}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView$20;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    :cond_9
    :try_start_0
    invoke-virtual {v5}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    :goto_3
    move v5, v2

    goto :goto_1

    :cond_a
    invoke-virtual {v5}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v5

    if-ne v6, v5, :cond_c

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v4}, Lcom/android/quickstep/views/RecentsView;->access$2600(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;

    move-result-object v4

    goto :goto_4

    :cond_b
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v4}, Lcom/android/quickstep/views/RecentsView;->access$2500(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;

    move-result-object v4

    :goto_4
    invoke-virtual {v4}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v5

    if-ge v6, v5, :cond_c

    invoke-virtual {v4, v6}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_c
    move v5, v3

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "b/269956477 invalid snappedIndex\nsnappedTaskViewId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nfocusedTaskViewId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v2, v2, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ntopRowIdArray: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v2}, Lcom/android/quickstep/views/RecentsView;->access$2500(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nbottomRowIdArray: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0}, Lcom/android/quickstep/views/RecentsView;->access$2600(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_d
    move v2, v1

    :goto_5
    move v5, v3

    :goto_6
    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v2}, Lcom/android/quickstep/views/RecentsView;->access$2700(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-interface {v2, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v4}, Lcom/android/quickstep/views/RecentsView;->access$2800(Lcom/android/quickstep/views/RecentsView;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    sub-int/2addr v2, v4

    invoke-static {v6, v2}, Lcom/android/quickstep/views/RecentsView;->access$2902(Lcom/android/quickstep/views/RecentsView;I)I

    goto :goto_8

    :cond_e
    iget v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedIndex:I

    if-lt v2, p1, :cond_f

    iget v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$taskCount:I

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_10

    :cond_f
    add-int/lit8 p1, p1, -0x1

    :cond_10
    :goto_7
    move v5, v3

    :cond_11
    :goto_8
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/RecentsView;->getHomeTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    if-ne v2, v4, :cond_12

    move v2, v1

    goto :goto_9

    :cond_12
    move v2, v0

    :goto_9
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v4}, Lcom/android/quickstep/views/RecentsView;->access$2400(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntSet;

    move-result-object v4

    iget v6, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedTaskViewId:I

    invoke-virtual {v4, v6}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    iget v4, p0, Lcom/android/quickstep/views/RecentsView$20;->val$taskCount:I

    if-ne v4, v1, :cond_14

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->access$1900(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/ClearAllButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    if-eqz v2, :cond_13

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    goto/16 :goto_e

    :cond_13
    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->access$3000(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/util/SplitSelectStateController;->isSplitSelectActive()Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    goto/16 :goto_e

    :cond_14
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$finalIsFocusedTaskDismissed:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v3

    goto :goto_a

    :cond_15
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v4

    :goto_a
    iput v4, v2, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v2}, Lcom/android/quickstep/views/RecentsView;->access$2400(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntSet;

    move-result-object v2

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget v4, v4, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$finalNextFocusedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->animateIconScaleAndDimIntoView()V

    :cond_16
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v2, v1}, Lcom/android/quickstep/views/RecentsView;->access$3100(Lcom/android/quickstep/views/RecentsView;Z)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v2}, Lcom/android/quickstep/views/RecentsView;->access$1600(Lcom/android/quickstep/views/RecentsView;)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->updateScrollSynchronously()V

    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView$20;->val$showAsGrid:Z

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v2}, Lcom/android/quickstep/views/RecentsView;->access$3200(Lcom/android/quickstep/views/RecentsView;)I

    move-result v2

    const v4, 0x7fffffff

    if-ge v2, v4, :cond_19

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v4, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v6}, Lcom/android/quickstep/views/RecentsView;->access$3300(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-interface {v6, v7}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v7}, Lcom/android/quickstep/views/RecentsView;->access$3400(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v4, v1}, Lcom/android/quickstep/views/TaskView;->getOffsetAdjustment(Z)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v8}, Lcom/android/quickstep/views/RecentsView;->access$3500(Lcom/android/quickstep/views/RecentsView;)Z

    move-result v8

    if-eqz v8, :cond_18

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v4}, Lcom/android/quickstep/views/RecentsView;->access$3600(Lcom/android/quickstep/views/RecentsView;)I

    move-result v4

    add-int/2addr v6, v4

    if-gt v7, v6, :cond_17

    :goto_b
    move v4, v1

    goto :goto_c

    :cond_17
    move v4, v0

    goto :goto_c

    :cond_18
    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v8}, Lcom/android/quickstep/views/RecentsView;->access$3700(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-interface {v8, v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v8}, Lcom/android/quickstep/views/RecentsView;->access$3800(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v0}, Lcom/android/quickstep/views/TaskView;->getSizeAdjustment(Z)F

    move-result v4

    mul-float/2addr v8, v4

    float-to-int v4, v8

    add-int/2addr v7, v4

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v4}, Lcom/android/quickstep/views/RecentsView;->access$3900(Lcom/android/quickstep/views/RecentsView;)I

    move-result v4

    sub-int/2addr v6, v4

    if-lt v7, v6, :cond_17

    goto :goto_b

    :goto_c
    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v4, v1, v2}, Lcom/android/quickstep/views/RecentsView;->access$4000(Lcom/android/quickstep/views/RecentsView;ZI)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/RecentsView;->updateScrollSynchronously()V

    :cond_19
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v2}, Lcom/android/quickstep/views/RecentsView;->access$2500(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v4}, Lcom/android/quickstep/views/RecentsView;->access$2600(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/quickstep/views/RecentsView$20;->val$finalSnapToLastTask:Z

    if-eqz v6, :cond_1a

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1, v2, v4}, Lcom/android/quickstep/views/RecentsView;->access$4100(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    goto :goto_d

    :cond_1a
    if-eq v5, v3, :cond_1b

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1, v5}, Lcom/android/quickstep/views/RecentsView;->access$4200(Lcom/android/quickstep/views/RecentsView;I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView$20;->val$currentPageSnapsToEndOfGrid:Z

    if-nez v3, :cond_1b

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v3, p1, v2, v4}, Lcom/android/quickstep/views/RecentsView;->access$4400(Lcom/android/quickstep/views/RecentsView;ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/quickstep/views/RecentsView;->access$4312(Lcom/android/quickstep/views/RecentsView;I)I

    :cond_1b
    :goto_d
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {v2}, Lcom/android/quickstep/views/RecentsView;->access$4500(Lcom/android/quickstep/views/RecentsView;)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->access$4600(Lcom/android/quickstep/views/RecentsView;)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->access$4700(Lcom/android/quickstep/views/RecentsView;)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->isClearAllHidden()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object p1, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->access$4800(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/android/quickstep/views/OverviewActionsView;->updateDisabledFlags(IZ)V

    :cond_1c
    :goto_e
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->access$4900(Lcom/android/quickstep/views/RecentsView;)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->onDismissAnimationEnds()V

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->access$5002(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/anim/PendingAnimation;)Lcom/android/launcher3/anim/PendingAnimation;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-boolean v0, v0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$20;->val$dismissedTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$20;->this$0:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/quickstep/views/x1;

    invoke-direct {v3, p0, p1}, Lcom/android/quickstep/views/x1;-><init>(Lcom/android/quickstep/views/RecentsView$20;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView$20;->onEnd(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView$20;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
