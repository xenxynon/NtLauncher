.class public final synthetic Lcom/android/quickstep/a5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/RecentsAnimationController;

.field public final synthetic h:Z

.field public final synthetic i:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/a5;->g:Lcom/android/quickstep/RecentsAnimationController;

    iput-boolean p2, p0, Lcom/android/quickstep/a5;->h:Z

    iput-boolean p3, p0, Lcom/android/quickstep/a5;->i:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/a5;->g:Lcom/android/quickstep/RecentsAnimationController;

    iget-boolean v1, p0, Lcom/android/quickstep/a5;->h:Z

    iget-boolean p0, p0, Lcom/android/quickstep/a5;->i:Z

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/RecentsAnimationController;->g(Lcom/android/quickstep/RecentsAnimationController;ZZ)V

    return-void
.end method
