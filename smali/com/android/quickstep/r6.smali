.class public final synthetic Lcom/android/quickstep/r6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/RecentsAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/r6;->g:Lcom/android/quickstep/RecentsAnimationController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/r6;->g:Lcom/android/quickstep/RecentsAnimationController;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationController;->finishAnimationToHome()V

    return-void
.end method
