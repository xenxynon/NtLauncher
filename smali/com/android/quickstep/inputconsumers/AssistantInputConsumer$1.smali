.class Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;


# direct methods
.method constructor <init>(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    sget-object p1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;

    invoke-static {p0}, Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;->access$100(Lcom/android/quickstep/inputconsumers/AssistantInputConsumer;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SystemUiProxy;->onAssistantProgress(F)V

    return-void
.end method
