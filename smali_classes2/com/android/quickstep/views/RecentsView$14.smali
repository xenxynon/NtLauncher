.class Lcom/android/quickstep/views/RecentsView$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/quickstep/BaseActivityInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/RecentsView;

.field final synthetic val$animatorAppear:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Lcom/android/quickstep/views/RecentsView;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$14;->this$0:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView$14;->val$animatorAppear:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/animation/Animator;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView$14;->lambda$onAnimationEnd$0(Landroid/animation/Animator;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic lambda$onAnimationEnd$0(Landroid/animation/Animator;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$14;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->access$5300(Lcom/android/quickstep/views/RecentsView;)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$14;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->updateClearAllFunction()V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$14;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->reloadIfNeeded()V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$14;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->access$5000(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$14;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->access$5000(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$14;->val$animatorAppear:Landroid/animation/Animator;

    new-instance v0, Lcom/android/quickstep/views/u1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/u1;-><init>(Landroid/animation/Animator;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->addEndListener(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$14;->val$animatorAppear:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method
