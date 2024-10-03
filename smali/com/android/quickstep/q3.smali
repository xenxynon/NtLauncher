.class public final synthetic Lcom/android/quickstep/q3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/QuickstepTestInformationHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/QuickstepTestInformationHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/q3;->g:Lcom/android/quickstep/QuickstepTestInformationHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/q3;->g:Lcom/android/quickstep/QuickstepTestInformationHandler;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->A(Lcom/android/quickstep/QuickstepTestInformationHandler;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method
