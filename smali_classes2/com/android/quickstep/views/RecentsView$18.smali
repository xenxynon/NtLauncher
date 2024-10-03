.class Lcom/android/quickstep/views/RecentsView$18;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/RecentsView;->createInitialSplitSelectAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$18;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/RecentsView$18;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView$18;->lambda$onAnimationStart$0()V

    return-void
.end method

.method private synthetic lambda$onAnimationStart$0()V
    .locals 3

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$18;->this$0:Lcom/android/quickstep/views/RecentsView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$18;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->access$1800(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$18;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$18;->this$0:Lcom/android/quickstep/views/RecentsView;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$18;->this$0:Lcom/android/quickstep/views/RecentsView;

    new-instance v0, Lcom/android/quickstep/views/v1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/v1;-><init>(Lcom/android/quickstep/views/RecentsView$18;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
