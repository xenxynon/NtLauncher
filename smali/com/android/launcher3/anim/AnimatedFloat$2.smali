.class Lcom/android/launcher3/anim/AnimatedFloat$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/anim/AnimatedFloat;

.field final synthetic val$end:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/anim/AnimatedFloat;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->this$0:Lcom/android/launcher3/anim/AnimatedFloat;

    iput p2, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->val$end:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->this$0:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatedFloat;->access$000(Lcom/android/launcher3/anim/AnimatedFloat;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->this$0:Lcom/android/launcher3/anim/AnimatedFloat;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->access$002(Lcom/android/launcher3/anim/AnimatedFloat;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->this$0:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-static {p0, v0}, Lcom/android/launcher3/anim/AnimatedFloat;->access$102(Lcom/android/launcher3/anim/AnimatedFloat;Ljava/lang/Float;)Ljava/lang/Float;

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->this$0:Lcom/android/launcher3/anim/AnimatedFloat;

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatedFloat;->access$000(Lcom/android/launcher3/anim/AnimatedFloat;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->this$0:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p0, p0, Lcom/android/launcher3/anim/AnimatedFloat$2;->val$end:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/launcher3/anim/AnimatedFloat;->access$102(Lcom/android/launcher3/anim/AnimatedFloat;Ljava/lang/Float;)Ljava/lang/Float;

    :cond_0
    return-void
.end method
