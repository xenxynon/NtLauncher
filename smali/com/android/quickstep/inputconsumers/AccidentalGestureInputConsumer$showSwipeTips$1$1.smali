.class public final Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer$showSwipeTips$1$1;
.super Landroid/widget/Toast$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->showSwipeTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;


# direct methods
.method constructor <init>(Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer$showSwipeTips$1$1;->this$0:Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;

    invoke-direct {p0}, Landroid/widget/Toast$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onToastHidden()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer$showSwipeTips$1$1;->this$0:Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;

    invoke-static {p0}, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;->access$getOnToastHiddenRunnable$p(Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
