.class Lcom/android/launcher3/dragndrop/DragView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/DragView;-><init>(Landroid/content/Context;Landroid/view/View;IIIIFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragView;->access$100(Lcom/android/launcher3/dragndrop/DragView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragView;->access$100(Lcom/android/launcher3/dragndrop/DragView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/DragView;->access$002(Lcom/android/launcher3/dragndrop/DragView;Z)Z

    return-void
.end method
