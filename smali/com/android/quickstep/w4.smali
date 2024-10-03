.class public final synthetic Lcom/android/quickstep/w4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/RecentsAnimationController;

.field public final synthetic h:Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/w4;->g:Lcom/android/quickstep/RecentsAnimationController;

    iput-object p2, p0, Lcom/android/quickstep/w4;->h:Landroid/view/RemoteAnimationTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/w4;->g:Lcom/android/quickstep/RecentsAnimationController;

    iget-object p0, p0, Lcom/android/quickstep/w4;->h:Landroid/view/RemoteAnimationTarget;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationController;->c(Lcom/android/quickstep/RecentsAnimationController;Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method
