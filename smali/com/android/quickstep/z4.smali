.class public final synthetic Lcom/android/quickstep/z4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/RecentsAnimationController;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/z4;->g:Lcom/android/quickstep/RecentsAnimationController;

    iput-boolean p2, p0, Lcom/android/quickstep/z4;->h:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/z4;->g:Lcom/android/quickstep/RecentsAnimationController;

    iget-boolean p0, p0, Lcom/android/quickstep/z4;->h:Z

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationController;->i(Lcom/android/quickstep/RecentsAnimationController;Z)V

    return-void
.end method
