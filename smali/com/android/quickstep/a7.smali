.class public final synthetic Lcom/android/quickstep/a7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/a7;->g:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/a7;->g:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-static {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->b(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;)V

    return-void
.end method
