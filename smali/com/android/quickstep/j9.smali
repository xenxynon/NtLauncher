.class public final synthetic Lcom/android/quickstep/j9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field public final synthetic h:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/j9;->g:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iput-object p2, p0, Lcom/android/quickstep/j9;->h:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/j9;->g:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget-object p0, p0, Lcom/android/quickstep/j9;->h:Ljava/util/function/Consumer;

    invoke-static {v0, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->c0(Lcom/android/quickstep/TouchInteractionService$TISBinder;Ljava/util/function/Consumer;)V

    return-void
.end method
