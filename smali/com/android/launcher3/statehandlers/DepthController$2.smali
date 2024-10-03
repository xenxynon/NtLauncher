.class Lcom/android/launcher3/statehandlers/DepthController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/statehandlers/DepthController;->onMultiWindowModeChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/statehandlers/DepthController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController$2;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DepthController$2;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/statehandlers/DepthController;->access$502(Lcom/android/launcher3/statehandlers/DepthController;Z)Z

    return-void
.end method
