.class Lcom/android/launcher3/folder/PreviewBackground$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/PreviewBackground;->animateScale(FLjava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewBackground;

.field final synthetic val$onEnd:Ljava/lang/Runnable;

.field final synthetic val$onStart:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object p2, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onStart:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->access$402(Lcom/android/launcher3/folder/PreviewBackground;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/PreviewBackground$6;->val$onStart:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
