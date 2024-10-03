.class Lcom/android/launcher3/views/AbstractSlideInView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/AbstractSlideInView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/AbstractSlideInView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView$3;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView$3;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    iget-object p1, p1, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->finishedScrolling()V

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView$3;->this$0:Lcom/android/launcher3/views/AbstractSlideInView;

    invoke-static {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->access$000(Lcom/android/launcher3/views/AbstractSlideInView;)V

    return-void
.end method
