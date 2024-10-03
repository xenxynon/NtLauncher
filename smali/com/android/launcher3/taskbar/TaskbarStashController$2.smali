.class Lcom/android/launcher3/taskbar/TaskbarStashController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarStashController;->addJankMonitorListener(Landroid/animation/AnimatorSet;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

.field final synthetic val$action:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->val$action:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->val$action:I

    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->val$v:Landroid/view/View;

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$2;->val$action:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    return-void
.end method
