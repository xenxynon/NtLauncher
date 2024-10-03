.class public final synthetic Lcom/android/quickstep/i8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/TouchInteractionService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/i8;->g:Lcom/android/quickstep/TouchInteractionService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/i8;->g:Lcom/android/quickstep/TouchInteractionService;

    check-cast p1, Lcom/android/quickstep/inputconsumers/AccidentalGestureInputConsumer;

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->e(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/InputConsumer;)V

    return-void
.end method
