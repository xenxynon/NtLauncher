.class Lcom/android/quickstep/views/TaskMenuView$2;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/TaskMenuView;->animateOpenOrClosed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/TaskMenuView;

.field final synthetic val$closing:Z


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/TaskMenuView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuView$2;->this$0:Lcom/android/quickstep/views/TaskMenuView;

    iput-boolean p2, p0, Lcom/android/quickstep/views/TaskMenuView$2;->val$closing:Z

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskMenuView$2;->this$0:Lcom/android/quickstep/views/TaskMenuView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/quickstep/views/TaskMenuView$2;->val$closing:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskMenuView$2;->this$0:Lcom/android/quickstep/views/TaskMenuView;

    invoke-static {p0}, Lcom/android/quickstep/views/TaskMenuView;->access$000(Lcom/android/quickstep/views/TaskMenuView;)V

    :cond_0
    return-void
.end method
