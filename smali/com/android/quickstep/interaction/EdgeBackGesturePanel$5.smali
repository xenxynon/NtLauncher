.class Lcom/android/quickstep/interaction/EdgeBackGesturePanel$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->triggerBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

.field final synthetic val$translationEnd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$5;->this$0:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    iput-object p2, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$5;->val$translationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel$5;->val$translationEnd:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
