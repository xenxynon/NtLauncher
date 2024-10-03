.class Lcom/android/quickstep/util/BorderAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/BorderAnimator;->buildAnimator(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/util/BorderAnimator;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/BorderAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/BorderAnimator$1;->this$0:Lcom/android/quickstep/util/BorderAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/BorderAnimator$1;->this$0:Lcom/android/quickstep/util/BorderAnimator;

    invoke-static {p0}, Lcom/android/quickstep/util/BorderAnimator;->access$300(Lcom/android/quickstep/util/BorderAnimator;)Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/BorderAnimator$BorderAnimationParams;->onShowBorder()V

    return-void
.end method
